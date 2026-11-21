/**
 * FHIR R4 ⇄ HelexEMR native questionnaire model.
 *
 * The HelexEMR renderer draws its own item model (types `Display`, `Coding`, `Group`, …) and keeps
 * scores outside the item tree. This file maps the IG's FHIR Questionnaire into that model (a small
 * mirror of the platform's import adapter), maps an example QuestionnaireResponse back into the
 * renderer's answer map, and builds a FHIR R4 QuestionnaireResponse from the answers on Submit.
 */
import { coerceAnswersToFhir, isAnswered } from '@helex/questionnaire-response';
import type { AnswerOption, Item, ScoreDefinition, ScoreResult } from '@helex/questionnaire-response';
import { SCORE_META, type QuestionnaireId } from './bands';

// ── Minimal FHIR R4 shapes (only what the IG uses) ──────────────────────────────────────────

export interface Coding {
  system?: string;
  version?: string;
  code?: string;
  display?: string;
  /** R4 primitive extensions on `display` (translations). */
  _display?: PrimitiveElement;
}

interface Extension {
  url: string;
  valueCode?: string;
  valueString?: string;
  extension?: Extension[];
  valueDecimal?: number;
  valueInteger?: number;
  valueCodeableConcept?: { coding?: Coding[] };
  valueExpression?: { language?: string; expression?: string };
}

/** The `_x` element beside a primitive `x`: where R4 puts its translations. */
export interface PrimitiveElement {
  extension?: Extension[];
}

export interface FhirQuestionnaireItem {
  linkId: string;
  text?: string;
  _text?: PrimitiveElement;
  type: string;
  required?: boolean;
  repeats?: boolean;
  readOnly?: boolean;
  code?: Coding[];
  extension?: Extension[];
  answerOption?: { valueCoding?: Coding; valueString?: string; valueInteger?: number; extension?: Extension[] }[];
  item?: FhirQuestionnaireItem[];
}

export interface FhirQuestionnaire {
  resourceType: 'Questionnaire';
  id: string;
  url: string;
  version?: string;
  title?: string;
  _title?: PrimitiveElement;
  description?: string;
  copyright?: string;
  item?: FhirQuestionnaireItem[];
}

export interface FhirAnswer {
  valueCoding?: Coding;
  valueInteger?: number;
  valueDecimal?: number;
  valueString?: string;
  valueBoolean?: boolean;
}

export interface FhirResponseItem {
  linkId: string;
  text?: string;
  answer?: FhirAnswer[];
  item?: FhirResponseItem[];
}

export interface FhirQuestionnaireResponse {
  resourceType: 'QuestionnaireResponse';
  language?: string;
  questionnaire?: string;
  status: string;
  subject?: { reference?: string; display?: string };
  authored?: string;
  item?: FhirResponseItem[];
}

const ORDINAL_VALUE = 'http://hl7.org/fhir/StructureDefinition/ordinalValue';
const ITEM_CONTROL = 'http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl';
const CALCULATED_EXPRESSION = 'http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression';

const TRANSLATION = 'http://hl7.org/fhir/StructureDefinition/translation';

/** The languages the viewer offers; English is the base text of every element. */
export const LANGUAGES = [
  { code: 'en', label: 'English' },
  { code: 'et', label: 'Eesti' },
  { code: 'ru', label: 'Русский' },
  { code: 'uk', label: 'Українська' },
] as const;
export type Lang = (typeof LANGUAGES)[number]['code'];
export const isLang = (v: string | null): v is Lang => LANGUAGES.some((l) => l.code === v);

/** A text in several languages — the engine's LocalizedName shape (`{ en, et, ru, uk }`). */
export type LocalizedText = string | Record<string, string>;

/**
 * A FHIR string plus its R4 `translation` extensions (on the `_x` sibling element) as a LocalizedName:
 * `{ en: <base text>, et: …, ru: …, uk: … }`. A plain string when there are no translations.
 */
export function localized(base: string | undefined, element: PrimitiveElement | undefined): LocalizedText | undefined {
  const out: Record<string, string> = {};
  for (const t of element?.extension ?? []) {
    if (t.url !== TRANSLATION) continue;
    const lang = t.extension?.find((x) => x.url === 'lang')?.valueCode;
    const content = t.extension?.find((x) => x.url === 'content')?.valueString;
    if (lang && content) out[lang.toLowerCase().split('-')[0]] = content;
  }
  if (Object.keys(out).length === 0) return base;
  if (base !== undefined) out.en = base;
  return out;
}

/** A LocalizedName in one language, falling back to English, then to any language there is. */
export function pick(text: LocalizedText | undefined, lang: string): string {
  if (text === undefined) return '';
  if (typeof text === 'string') return text;
  return text[lang] || text.en || Object.values(text).find(Boolean) || '';
}

const ext = (e: Extension[] | undefined, url: string) => e?.find((x) => x.url === url);

/** The calculatedExpression of a score item, if it has one. */
function calculatedExpression(it: FhirQuestionnaireItem): string | undefined {
  return ext(it.extension, CALCULATED_EXPRESSION)?.valueExpression?.expression;
}

/** A readOnly integer with a calculatedExpression is a score, not a question. */
export function isScoreItem(it: FhirQuestionnaireItem): boolean {
  return it.readOnly === true && (it.type === 'integer' || it.type === 'decimal') && !!calculatedExpression(it);
}

/**
 * The linkIds a sum-of-ordinals expression lists:
 * `%resource.item.where(linkId in ('a' | 'b' | …)).answer.value.ordinal().sum()`, optionally
 * wrapped in parentheses and multiplied by a constant (WHO-5 index: `(…) * 4`).
 */
function parseOrdinalSum(expression: string): { linkIds: string[]; factor: number } | undefined {
  const m =
    /^\s*\(?\s*%resource\.item\.where\(linkId in \(([^)]*)\)\)\.answer\.value\.ordinal\(\)\.sum\(\)\s*\)?\s*(?:\*\s*(\d+(?:\.\d+)?))?\s*$/.exec(
      expression,
    );
  if (!m) return undefined;
  const linkIds = [...m[1].matchAll(/'([^']+)'/g)].map((x) => x[1]);
  return linkIds.length ? { linkIds, factor: m[2] ? Number(m[2]) : 1 } : undefined;
}

const NATIVE_TYPE: Record<string, string> = {
  display: 'Display',
  group: 'Group',
  choice: 'Coding',
  'open-choice': 'Coding',
  string: 'String',
  text: 'Text',
  integer: 'Integer',
  decimal: 'Decimal',
  boolean: 'Boolean',
  date: 'Date',
  dateTime: 'DateTime',
};

export interface NativeQuestionnaire {
  id: QuestionnaireId;
  canonical: string;
  title: LocalizedText;
  items: Item[];
  scores: ScoreDefinition[];
}

/** Strip a trailing "(0–27)" from a score title — the score panel prints the range itself. */
const stripRange = (t: string) => t.replace(/\s*\([^)]*\)\s*$/, '');
const withoutRange = (t: LocalizedText | undefined): LocalizedText =>
  t === undefined ? '' : typeof t === 'string' ? stripRange(t) : Object.fromEntries(Object.entries(t).map(([k, v]) => [k, stripRange(v)]));

export function toNative(q: FhirQuestionnaire): NativeQuestionnaire {
  const id = q.id as QuestionnaireId;
  const meta = SCORE_META[id] ?? {};
  const scores: ScoreDefinition[] = [];
  // Score items whose sum is another score times a factor (WHO-5 index = raw × 4) read that score.
  const sums = new Map<string, string>(); // linkIds key → score id

  const mapItems = (src: FhirQuestionnaireItem[] | undefined): Item[] =>
    (src ?? []).flatMap((it): Item[] => {
      if (isScoreItem(it)) {
        const expr = calculatedExpression(it) ?? '';
        const parsed = parseOrdinalSum(expr);
        const m = meta[it.linkId];
        const def: ScoreDefinition = {
          id: it.linkId,
          title: withoutRange(localized(it.text, it._text)),
          code: it.code?.filter((c) => c.code).map((c) => ({ system: c.system, code: c.code!, display: c.display })),
          min: m?.min,
          max: m?.max,
          bands: m?.bands,
        };
        if (parsed) {
          def.itemLinkIds = parsed.linkIds;
          const key = parsed.linkIds.join('|');
          const base = sums.get(key);
          if (parsed.factor !== 1 && base) {
            // `%scores.<id>` is the value of a score declared above (DOCQ.30).
            def.expression = { language: 'text/fhirpath', value: `%scores.${base} * ${parsed.factor}` };
          } else if (parsed.factor !== 1) {
            // No plain sum of the same items declared above: not expressible here; shows "not computable".
            def.expression = { language: 'text/fhirpath', value: expr };
          } else {
            sums.set(key, it.linkId);
          }
        } else {
          def.expression = { language: 'text/fhirpath', value: expr };
        }
        scores.push(def);
        return [];
      }
      const node: Item = {
        linkId: it.linkId,
        type: NATIVE_TYPE[it.type] ?? 'String',
        text: localized(it.text, it._text),
        required: it.required,
        repeats: it.repeats,
        readOnly: it.readOnly,
      };
      if (it.type === 'display') node.displayCategory = 'instructions';
      const control = ext(it.extension, ITEM_CONTROL)?.valueCodeableConcept?.coding?.[0]?.code;
      if (control) node.itemControl = control;
      if (it.code?.length) node.code = it.code.filter((c) => c.code).map((c) => ({ system: c.system ?? '', code: c.code!, display: c.display }));
      if (it.answerOption?.length) {
        node.answerOption = it.answerOption.map((o): AnswerOption => {
          const ordinal = ext(o.extension, ORDINAL_VALUE);
          const opt: AnswerOption = {};
          if (o.valueCoding) {
            opt.valueCoding = {
              system: o.valueCoding.system ?? '',
              code: o.valueCoding.code ?? '',
              display: localized(o.valueCoding.display, o.valueCoding._display),
            };
          } else if (o.valueString !== undefined) opt.valueString = o.valueString;
          else if (o.valueInteger !== undefined) opt.valueInteger = o.valueInteger;
          const w = ordinal?.valueDecimal ?? ordinal?.valueInteger;
          if (typeof w === 'number') opt.ordinalValue = w;
          return opt;
        });
      }
      if (it.item?.length) node.items = mapItems(it.item);
      return [node];
    });

  const items = mapItems(q.item);
  return {
    id,
    canonical: q.version ? `${q.url}|${q.version}` : q.url,
    title: localized(q.title, q._title) ?? q.id,
    items,
    scores,
  };
}

/** An example QuestionnaireResponse's answers as the renderer's flat `linkId → value` map. */
export function answersFromResponse(qr: FhirQuestionnaireResponse, q: FhirQuestionnaire): Record<string, unknown> {
  const scoreIds = new Set<string>();
  const walkQ = (list?: FhirQuestionnaireItem[]) =>
    list?.forEach((i) => {
      if (isScoreItem(i)) scoreIds.add(i.linkId);
      walkQ(i.item);
    });
  walkQ(q.item);

  const out: Record<string, unknown> = {};
  const walk = (list?: FhirResponseItem[]) =>
    list?.forEach((it) => {
      if (!scoreIds.has(it.linkId) && it.answer?.length) {
        const values = it.answer.map((a) => {
          if (a.valueCoding) return { system: a.valueCoding.system, code: a.valueCoding.code, display: a.valueCoding.display };
          return a.valueInteger ?? a.valueDecimal ?? a.valueString ?? a.valueBoolean;
        });
        out[it.linkId] = values.length === 1 ? values[0] : values;
      }
      walk(it.item);
    });
  walk(qr.item);
  return out;
}

/** Required questions (not display, not score items) that have no answer yet. */
export function missingRequired(q: FhirQuestionnaire, answers: Record<string, unknown>): FhirQuestionnaireItem[] {
  const out: FhirQuestionnaireItem[] = [];
  const walk = (list?: FhirQuestionnaireItem[]) =>
    list?.forEach((it) => {
      if (it.required && it.type !== 'display' && it.type !== 'group' && !isScoreItem(it) && !isAnswered(answers[it.linkId])) out.push(it);
      walk(it.item);
    });
  walk(q.item);
  return out;
}

/**
 * Build a FHIR R4 QuestionnaireResponse: the questionnaire's item order, every answered question
 * with its text, and each computed score as `valueInteger`. Display items carry no answer and are
 * left out; a group is kept only when something inside it was answered.
 */
export function buildResponse(
  q: FhirQuestionnaire,
  answers: Record<string, unknown>,
  scores: ScoreResult[],
  subject: { reference: string; display: string } | undefined,
  lang: Lang,
): FhirQuestionnaireResponse {
  const text = (it: FhirQuestionnaireItem) => pick(localized(it.text, it._text), lang) || undefined;
  const scoreById = new Map(scores.map((s) => [s.id, s]));
  const build = (list?: FhirQuestionnaireItem[]): FhirResponseItem[] =>
    (list ?? []).flatMap((it): FhirResponseItem[] => {
      if (it.type === 'display') return [];
      if (isScoreItem(it)) {
        const s = scoreById.get(it.linkId);
        if (!s?.valid || typeof s.value !== 'number') return [];
        return [{ linkId: it.linkId, text: text(it), answer: [{ valueInteger: Math.round(s.value) }] }];
      }
      if (it.type === 'group') {
        const children = build(it.item);
        return children.length ? [{ linkId: it.linkId, text: text(it), item: children }] : [];
      }
      const answer = coerceAnswersToFhir(answers[it.linkId]).map((a) => normaliseAnswer(a, it, lang));
      if (!answer.length) return [];
      return [{ linkId: it.linkId, text: text(it), answer }];
    });

  const qr: FhirQuestionnaireResponse = {
    resourceType: 'QuestionnaireResponse',
    language: lang,
    questionnaire: q.version ? `${q.url}|${q.version}` : q.url,
    status: 'completed',
    authored: nowFhirDateTime(),
    item: build(q.item),
  };
  if (subject) qr.subject = subject;
  return qr;
}

/** The engine's answer coercion, narrowed to valid R4 `answer[x]` for the item's type. */
function normaliseAnswer(a: Record<string, unknown>, it: FhirQuestionnaireItem, lang: Lang): FhirAnswer {
  if (a.valueCoding && typeof a.valueCoding === 'object') {
    const c = a.valueCoding as Coding;
    const coding: Coding = { system: c.system, code: c.code };
    // The display in the response's language, from the questionnaire's own answer list.
    const option = it.answerOption?.find((o) => o.valueCoding?.code === c.code && o.valueCoding?.system === c.system);
    const display = option?.valueCoding
      ? pick(localized(option.valueCoding.display, option.valueCoding._display), lang)
      : typeof c.display === 'string'
        ? c.display
        : undefined;
    if (display) coding.display = display;
    return { valueCoding: coding };
  }
  if (typeof a.valueDecimal === 'number' && it.type === 'integer') return { valueInteger: Math.round(a.valueDecimal) };
  return a as FhirAnswer;
}

/** Now as a FHIR dateTime with the local UTC offset, e.g. `2026-11-21T14:05:09+02:00`. */
function nowFhirDateTime(): string {
  const d = new Date();
  const pad = (n: number) => String(Math.abs(n)).padStart(2, '0');
  const off = -d.getTimezoneOffset();
  const sign = off >= 0 ? '+' : '-';
  return (
    `${d.getFullYear()}-${pad(d.getMonth() + 1)}-${pad(d.getDate())}` +
    `T${pad(d.getHours())}:${pad(d.getMinutes())}:${pad(d.getSeconds())}` +
    `${sign}${pad(Math.trunc(off / 60))}:${pad(off % 60)}`
  );
}
