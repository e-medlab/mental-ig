/**
 * How each score is read, per questionnaire, in en / et / ru / uk. The IG states the bands in each
 * Questionnaire's description; they are repeated here as data so the viewer can label a live score.
 *
 * Wording: the PHQ-9 and GAD-7 patient texts (en, et, ru) and the WHO-5 practitioner texts (all four
 * languages) are HelexEMR's own, from its questionnaire seeds. The Ukrainian PHQ-9 / GAD-7 texts, the WHO-5
 * patient texts and the band labels were translated for this viewer and have not been reviewed.
 */
import type { ScoreBand, ScoreDefinition } from '@helex/questionnaire-response';

export type QuestionnaireId = 'phq-9' | 'gad-7' | 'who-5';
export type Localized = { en: string; et: string; ru: string; uk: string };

interface BandText {
  low: number;
  high: number;
  label: Localized;
  patient: Localized;
  practitioner?: Localized;
}

export interface ScoreMeta {
  min: number;
  max: number;
  bands?: BandText[];
}

const MINIMAL: Localized = { en: 'minimal', et: 'minimaalne', ru: 'минимальная', uk: 'мінімальна' };
const MILD: Localized = { en: 'mild', et: 'kerge', ru: 'лёгкая', uk: 'легка' };
const MODERATE: Localized = { en: 'moderate', et: 'mõõdukas', ru: 'умеренная', uk: 'помірна' };
const MODERATELY_SEVERE: Localized = {
  en: 'moderately severe',
  et: 'mõõdukalt raske',
  ru: 'умеренно тяжёлая',
  uk: 'помірно тяжка',
};
const SEVERE: Localized = { en: 'severe', et: 'raske', ru: 'тяжёлая', uk: 'тяжка' };

export const SCORE_META: Record<QuestionnaireId, Record<string, ScoreMeta>> = {
  'phq-9': {
    'phq-9-total': {
      min: 0,
      max: 27,
      bands: [
        {
          low: 0,
          high: 4,
          label: MINIMAL,
          patient: {
            en: 'Your answers point to few or no symptoms of low mood right now.',
            et: 'Sinu vastused viitavad, et praegu on sul vähe või üldse mitte meeleolulanguse tunnuseid.',
            ru: 'Ваши ответы указывают на отсутствие или незначительные признаки сниженного настроения.',
            uk: 'Ваші відповіді вказують на відсутність або незначні ознаки зниженого настрою зараз.',
          },
        },
        {
          low: 5,
          high: 9,
          label: MILD,
          patient: {
            en: 'Your answers point to mild symptoms of low mood. Looking after your sleep, activity and contact with others often helps; mention it at your next visit if it continues.',
            et: 'Sinu vastused viitavad kergetele meeleolulanguse tunnustele. Une, liikumise ja suhtluse eest hoolitsemine aitab sageli; kui see jätkub, maini seda järgmisel visiidil.',
            ru: 'Ваши ответы указывают на лёгкие признаки сниженного настроения. Часто помогают сон, движение и общение; если это продолжается, упомяните об этом на следующем приёме.',
            uk: 'Ваші відповіді вказують на легкі ознаки зниженого настрою. Часто допомагають сон, рух і спілкування з іншими; якщо це триває, згадайте про це під час наступного візиту.',
          },
        },
        {
          low: 10,
          high: 14,
          label: MODERATE,
          patient: {
            en: 'Your answers point to moderate symptoms of low mood. Please discuss this result with your doctor.',
            et: 'Sinu vastused viitavad mõõdukatele meeleolulanguse tunnustele. Palun aruta seda tulemust oma arstiga.',
            ru: 'Ваши ответы указывают на умеренные признаки сниженного настроения. Пожалуйста, обсудите этот результат со своим врачом.',
            uk: 'Ваші відповіді вказують на помірні ознаки зниженого настрою. Будь ласка, обговоріть цей результат зі своїм лікарем.',
          },
        },
        {
          low: 15,
          high: 19,
          label: MODERATELY_SEVERE,
          patient: {
            en: 'Your answers point to considerable symptoms of low mood. Please discuss this result with your doctor soon.',
            et: 'Sinu vastused viitavad märkimisväärsetele meeleolulanguse tunnustele. Palun aruta seda tulemust peagi oma arstiga.',
            ru: 'Ваши ответы указывают на выраженные признаки сниженного настроения. Пожалуйста, обсудите этот результат со своим врачом в ближайшее время.',
            uk: 'Ваші відповіді вказують на виражені ознаки зниженого настрою. Будь ласка, найближчим часом обговоріть цей результат зі своїм лікарем.',
          },
        },
        {
          low: 20,
          high: 27,
          label: SEVERE,
          patient: {
            en: 'Your answers point to severe symptoms of low mood. Please contact your clinic soon.',
            et: 'Sinu vastused viitavad tõsistele meeleolulanguse tunnustele. Palun võta peagi oma kliinikuga ühendust.',
            ru: 'Ваши ответы указывают на тяжёлые признаки сниженного настроения. Пожалуйста, свяжитесь со своей клиникой в ближайшее время.',
            uk: 'Ваші відповіді вказують на тяжкі ознаки зниженого настрою. Будь ласка, найближчим часом зверніться до своєї клініки.',
          },
        },
      ],
    },
  },
  'gad-7': {
    'gad-7-total': {
      min: 0,
      max: 21,
      bands: [
        {
          low: 0,
          high: 4,
          label: MINIMAL,
          patient: {
            en: 'Your answers point to few or no signs of anxiety right now.',
            et: 'Sinu vastused viitavad, et praegu on sul vähe või üldse mitte ärevuse tunnuseid.',
            ru: 'Ваши ответы указывают на отсутствие или незначительные признаки тревоги.',
            uk: 'Ваші відповіді вказують на відсутність або незначні ознаки тривоги зараз.',
          },
        },
        {
          low: 5,
          high: 9,
          label: MILD,
          patient: {
            en: 'Your answers point to mild signs of anxiety. Regular sleep, movement and breaks often help; mention it at your next visit if it continues.',
            et: 'Sinu vastused viitavad kergetele ärevuse tunnustele. Korrapärane uni, liikumine ja puhkepausid aitavad sageli; kui see jätkub, maini seda järgmisel visiidil.',
            ru: 'Ваши ответы указывают на лёгкие признаки тревоги. Часто помогают регулярный сон, движение и перерывы; если это продолжается, упомяните об этом на следующем приёме.',
            uk: 'Ваші відповіді вказують на легкі ознаки тривоги. Часто допомагають регулярний сон, рух і перерви; якщо це триває, згадайте про це під час наступного візиту.',
          },
        },
        {
          low: 10,
          high: 14,
          label: MODERATE,
          patient: {
            en: 'Your answers point to moderate signs of anxiety. Please discuss this result with your doctor.',
            et: 'Sinu vastused viitavad mõõdukatele ärevuse tunnustele. Palun aruta seda tulemust oma arstiga.',
            ru: 'Ваши ответы указывают на умеренные признаки тревоги. Пожалуйста, обсудите этот результат со своим врачом.',
            uk: 'Ваші відповіді вказують на помірні ознаки тривоги. Будь ласка, обговоріть цей результат зі своїм лікарем.',
          },
        },
        {
          low: 15,
          high: 21,
          label: SEVERE,
          patient: {
            en: 'Your answers point to strong signs of anxiety. Please contact your clinic soon.',
            et: 'Sinu vastused viitavad tugevatele ärevuse tunnustele. Palun võta peagi oma kliinikuga ühendust.',
            ru: 'Ваши ответы указывают на сильные признаки тревоги. Пожалуйста, свяжитесь со своей клиникой в ближайшее время.',
            uk: 'Ваші відповіді вказують на сильні ознаки тривоги. Будь ласка, найближчим часом зверніться до своєї клініки.',
          },
        },
      ],
    },
  },
  'who-5': {
    // The raw sum has no bands of its own; it is read through the index.
    'who-5-raw': { min: 0, max: 25 },
    'who-5-index': {
      min: 0,
      max: 100,
      bands: [
        {
          low: 0,
          high: 49,
          label: { en: 'poor well-being', et: 'madal heaolu', ru: 'низкое благополучие', uk: 'низьке благополуччя' },
          patient: {
            en: 'Your answers point to low well-being. Please discuss this result with your doctor.',
            et: 'Sinu vastused viitavad madalale heaolule. Palun aruta seda tulemust oma arstiga.',
            ru: 'Ваши ответы указывают на низкое благополучие. Пожалуйста, обсудите этот результат со своим врачом.',
            uk: 'Ваші відповіді вказують на низьке благополуччя. Будь ласка, обговоріть цей результат зі своїм лікарем.',
          },
          practitioner: {
            en: 'poor mental well-being — assess further for depression',
            et: 'halb vaimne heaolu — hinnata edasi depressiooni suhtes',
            ru: 'низкое психическое благополучие — показана дальнейшая оценка на депрессию',
            uk: 'низьке психічне благополуччя — потрібна подальша оцінка щодо депресії',
          },
        },
        {
          low: 50,
          high: 100,
          label: { en: 'adequate well-being', et: 'piisav heaolu', ru: 'достаточное благополучие', uk: 'достатнє благополуччя' },
          patient: {
            en: 'Your answers point to good well-being.',
            et: 'Sinu vastuste põhjal on sinu heaolu hea.',
            ru: 'Ваши ответы указывают на хорошее благополучие.',
            uk: 'Ваші відповіді вказують на добре благополуччя.',
          },
          practitioner: {
            en: 'no indication of poor mental well-being',
            et: 'halva vaimse heaolu tunnuseid ei ole',
            ru: 'признаков низкого психического благополучия нет',
            uk: 'ознак низького психічного благополуччя немає',
          },
        },
      ],
    },
  },
};

/** The engine's bands for one score; the score panel shows a band's `code` as its label, so it carries the label. */
export function bandsFor(meta: ScoreMeta | undefined, lang: keyof Localized): ScoreBand[] | undefined {
  return meta?.bands?.map((b) => ({
    low: b.low,
    high: b.high,
    code: b.label[lang] || b.label.en,
    interpretation: { patient: b.patient, ...(b.practitioner ? { practitioner: b.practitioner } : {}) },
  }));
}

/** The questionnaire's score definitions with their band labels in `lang`. */
export function withBandLanguage(scores: ScoreDefinition[], id: QuestionnaireId, lang: keyof Localized): ScoreDefinition[] {
  return scores.map((s) => ({ ...s, bands: bandsFor(SCORE_META[id]?.[s.id], lang) ?? s.bands }));
}

/** PHQ-9 item 9 (thoughts of death or self-harm) and its "Not at all" answer. */
export const PHQ9_ITEM9 = '44260-8';
export const PHQ9_ITEM9_NOT_AT_ALL = 'LA6568-5';

export const ITEM9_NOTICE: { message: Localized; description: Localized } = {
  message: {
    en: "Needs a clinician's attention the same day",
    et: 'Vajab arsti tähelepanu samal päeval',
    ru: 'Требует внимания врача в тот же день',
    uk: 'Потребує уваги лікаря того ж дня',
  },
  description: {
    en: 'Question 9 (thoughts of being better off dead or of self-harm) was answered with something other than “Not at all”. Whatever the total score, a clinician should assess the risk of suicide or self-harm today.',
    et: 'Küsimusele 9 (mõtted, et parem oleks surnud olla, või enesevigastamise mõtted) vastati muud kui „Üldse mitte“. Olenemata koguskoorist peaks arst täna hindama enesetapu või enesevigastamise riski.',
    ru: 'На вопрос 9 (мысли о том, что лучше было бы умереть, или о причинении себе вреда) дан ответ, отличный от «Ни разу». Независимо от общего балла врач должен сегодня оценить риск самоубийства или самоповреждения.',
    uk: 'На запитання 9 (думки, що краще було б померти, або про заподіяння собі шкоди) дано відповідь, відмінну від «Зовсім не турбували». Незалежно від загального балу лікар має сьогодні оцінити ризик самогубства або самоушкодження.',
  },
};
