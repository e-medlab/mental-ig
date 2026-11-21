import { useCallback, useEffect, useMemo, useState } from 'react';
import { Alert, Button, Card, Col, Row, Segmented, Select, Space, Spin, Typography } from 'antd';
import { CopyOutlined, DownloadOutlined, ReloadOutlined } from '@ant-design/icons';
import {
  QuestionnaireRenderer,
  ScorePanel,
  buildQResponse,
  computeScores,
  resolveTemplate,
} from '@helex/questionnaire-response';
import { ContentLocaleProvider } from '@helex/state';
import { ITEM9_NOTICE, PHQ9_ITEM9, PHQ9_ITEM9_NOT_AT_ALL, withBandLanguage, type QuestionnaireId } from './bands';
import {
  answersFromResponse,
  buildResponse,
  isLang,
  LANGUAGES,
  localized,
  missingRequired,
  pick,
  toNative,
  type FhirQuestionnaire,
  type FhirQuestionnaireItem,
  type FhirQuestionnaireResponse,
  type Lang,
  type NativeQuestionnaire,
} from './fhir';

const { Title, Paragraph, Text, Link } = Typography;

const QUESTIONNAIRES: { id: QuestionnaireId; label: string; about: string }[] = [
  { id: 'phq-9', label: 'PHQ-9', about: 'Depression — 9 questions about the last two weeks' },
  { id: 'gad-7', label: 'GAD-7', about: 'Anxiety — 7 questions about the last two weeks' },
  { id: 'who-5', label: 'WHO-5', about: 'Well-being — 5 statements about the last two weeks' },
];

type PatientId = 'mari' | 'juhan' | 'kati';
const PATIENTS: { id: PatientId; name: string; about: string }[] = [
  { id: 'mari', name: 'Mari Maasikas', about: 'doing well' },
  { id: 'juhan', name: 'Juhan Juurikas', about: 'moderate symptoms' },
  { id: 'kati', name: 'Kati Karu', about: 'severe symptoms' },
];

const isQuestionnaireId = (v: string | null): v is QuestionnaireId => QUESTIONNAIRES.some((q) => q.id === v);
const isPatientId = (v: string | null): v is PatientId => PATIENTS.some((p) => p.id === v);

/** The IG output root: this app is published at `<ig>/viewer/`. */
const IG_ROOT = `${import.meta.env.BASE_URL}../`;

async function fetchJson<T>(file: string): Promise<T> {
  const res = await fetch(`${IG_ROOT}${file}`);
  if (!res.ok) throw new Error(`Could not load ${file} (HTTP ${res.status})`);
  return (await res.json()) as T;
}

function readParams(): { q: QuestionnaireId; r: PatientId | null; lang: Lang } {
  const p = new URLSearchParams(window.location.search);
  const q = p.get('q');
  const r = p.get('r');
  const lang = p.get('lang');
  return { q: isQuestionnaireId(q) ? q : 'phq-9', r: isPatientId(r) ? r : null, lang: isLang(lang) ? lang : 'en' };
}

function writeParams(q: QuestionnaireId, r: PatientId | null, lang: Lang) {
  const p = new URLSearchParams(window.location.search);
  p.set('q', q);
  if (r) p.set('r', r);
  else p.delete('r');
  if (lang !== 'en') p.set('lang', lang);
  else p.delete('lang');
  const url = `${window.location.pathname}?${p.toString()}${window.location.hash}`;
  window.history.replaceState(null, '', url);
}

const template = resolveTemplate('classic');

export function App() {
  const initial = useMemo(readParams, []);
  const [qId, setQId] = useState<QuestionnaireId>(initial.q);
  const [patient, setPatient] = useState<PatientId | null>(initial.r);
  const [lang, setLang] = useState<Lang>(initial.lang);
  const [fhirQ, setFhirQ] = useState<FhirQuestionnaire | null>(null);
  const [native, setNative] = useState<NativeQuestionnaire | null>(null);
  const [answers, setAnswers] = useState<Record<string, unknown>>({});
  const [error, setError] = useState<string | null>(null);
  const [loading, setLoading] = useState(true);
  const [missing, setMissing] = useState<FhirQuestionnaireItem[]>([]);
  const [response, setResponse] = useState<FhirQuestionnaireResponse | null>(null);
  const [copied, setCopied] = useState(false);

  useEffect(() => writeParams(qId, patient, lang), [qId, patient, lang]);
  useEffect(() => {
    document.documentElement.lang = lang;
    setResponse(null);
  }, [lang]);

  // Load the questionnaire and, when a patient is chosen, their example response.
  useEffect(() => {
    let cancelled = false;
    setLoading(true);
    setError(null);
    setResponse(null);
    setMissing([]);
    (async () => {
      const q = await fetchJson<FhirQuestionnaire>(`Questionnaire-${qId}.json`);
      const prefill = patient
        ? answersFromResponse(
            await fetchJson<FhirQuestionnaireResponse>(`QuestionnaireResponse-${qId}-response-${patient}.json`),
            q,
          )
        : {};
      if (cancelled) return;
      setFhirQ(q);
      setNative(toNative(q));
      setAnswers(prefill);
    })()
      .catch((e: unknown) => !cancelled && setError(e instanceof Error ? e.message : String(e)))
      .finally(() => !cancelled && setLoading(false));
    return () => {
      cancelled = true;
    };
  }, [qId, patient]);

  const setAnswer = useCallback((linkId: string | undefined, value: unknown) => {
    if (!linkId) return;
    setAnswers((prev) => {
      const next = { ...prev };
      if (value === undefined || value === null || value === '') delete next[linkId];
      else next[linkId] = value;
      return next;
    });
    setResponse(null);
    setMissing([]);
  }, []);

  const qResponse = useMemo(() => buildQResponse(native?.items ?? [], answers), [native, answers]);
  const scores = useMemo(
    () => (native ? computeScores(withBandLanguage(native.scores, qId, lang), native.items, answers, qResponse) : []),
    [native, qId, lang, answers, qResponse],
  );

  const item9 = qId === 'phq-9' ? (answers[PHQ9_ITEM9] as { code?: string } | undefined) : undefined;
  const item9Flag = !!item9?.code && item9.code !== PHQ9_ITEM9_NOT_AT_ALL;

  const submit = () => {
    if (!fhirQ) return;
    const gaps = missingRequired(fhirQ, answers);
    setMissing(gaps);
    if (gaps.length) {
      setResponse(null);
      return;
    }
    const p = PATIENTS.find((x) => x.id === patient);
    setResponse(
      buildResponse(fhirQ, answers, scores, p ? { reference: `Patient/patient-${p.id}`, display: p.name } : undefined, lang),
    );
    setTimeout(() => document.getElementById('result')?.scrollIntoView({ behavior: 'smooth', block: 'start' }), 50);
  };

  const json = response ? JSON.stringify(response, null, 2) : '';
  const download = () => {
    const blob = new Blob([json + '\n'], { type: 'application/fhir+json' });
    const url = URL.createObjectURL(blob);
    const a = document.createElement('a');
    a.href = url;
    a.download = `QuestionnaireResponse-${qId}${patient ? `-${patient}` : ''}.json`;
    a.click();
    URL.revokeObjectURL(url);
  };
  const copy = async () => {
    try {
      await navigator.clipboard.writeText(json);
      setCopied(true);
      setTimeout(() => setCopied(false), 2000);
    } catch {
      /* clipboard blocked — the JSON is on screen to select by hand */
    }
  };

  const qMeta = QUESTIONNAIRES.find((q) => q.id === qId)!;

  return (
    <div className="page">
      <header className="intro">
        <Title level={2} style={{ marginBottom: 4 }}>
          Mental health questionnaire viewer
        </Title>
        <Paragraph type="secondary" style={{ maxWidth: 820 }}>
          Try the three questionnaires of the <Link href={`${IG_ROOT}index.html`}>TalTech mental health FHIR guide</Link>.
          Each form is drawn from the guide's FHIR <Text code>Questionnaire</Text> (the blank form). When you press{' '}
          <Text strong>Submit</Text>, your answers are turned into a FHIR <Text code>QuestionnaireResponse</Text> (the
          filled-in form) that any FHIR system can store. Nothing leaves your browser.
        </Paragraph>
      </header>

      <Card size="small" className="controls">
        <Space direction="vertical" size="middle" style={{ width: '100%' }}>
          <div>
            <Text strong>1. Choose a questionnaire</Text>
            <div className="control-row">
              <Segmented
                size="large"
                value={qId}
                onChange={(v) => setQId(v as QuestionnaireId)}
                options={QUESTIONNAIRES.map((q) => ({ value: q.id, label: q.label }))}
                data-testid="pick-questionnaire"
              />
              <Text type="secondary">{qMeta.about}</Text>
            </div>
          </div>
          <div>
            <Text strong>Language of the questions</Text>
            <div className="control-row">
              <Segmented
                value={lang}
                onChange={(v) => setLang(v as Lang)}
                options={LANGUAGES.map((l) => ({ value: l.code, label: l.label }))}
                data-testid="pick-language"
              />
              <Text type="secondary">Where the guide has no translation for a text, it is shown in English.</Text>
            </div>
          </div>
          <div>
            <Text strong>2. Optional: fill it in with an example patient's answers</Text>
            <div className="control-row">
              <Select<PatientId | 'none'>
                style={{ minWidth: 300 }}
                value={patient ?? 'none'}
                onChange={(v) => setPatient(v === 'none' ? null : v)}
                options={[
                  { value: 'none', label: 'No example — start with an empty form' },
                  ...PATIENTS.map((p) => ({ value: p.id, label: `${p.name} — ${p.about}` })),
                ]}
                data-testid="pick-patient"
              />
              <Button
                icon={<ReloadOutlined />}
                onClick={() => {
                  setAnswers({});
                  setResponse(null);
                  setMissing([]);
                }}
              >
                Clear answers
              </Button>
            </div>
          </div>
        </Space>
      </Card>

      {error && <Alert type="error" showIcon message="Could not load the questionnaire" description={error} style={{ marginTop: 16 }} />}

      {loading && !native ? (
        <div style={{ padding: 48, textAlign: 'center' }}>
          <Spin />
        </div>
      ) : (
        native &&
        fhirQ && (
          <Row gutter={[24, 16]} style={{ marginTop: 16 }}>
            <Col xs={24} lg={15}>
              <Card
                title={pick(native.title, lang)}
                data-testid="form-card"
              >
                <Paragraph type="secondary" style={{ fontSize: 12 }}>
                  FHIR canonical: <Text code>{native.canonical}</Text>
                </Paragraph>
                <Spin spinning={loading}>
                  {/* The content language: item texts, option labels and score titles resolve for it
                      (the same provider the EMR's Preview language switch uses). */}
                  <ContentLocaleProvider locale={lang}>
                    <QuestionnaireRenderer
                      key={`${qId}-${patient ?? 'none'}`}
                      items={native.items}
                      answers={answers}
                      setAnswer={setAnswer}
                      template={template}
                      qResponse={qResponse}
                    />
                  </ContentLocaleProvider>
                </Spin>
                {fhirQ.copyright && (
                  <Paragraph type="secondary" style={{ fontSize: 12, marginTop: 16, marginBottom: 0 }}>
                    {fhirQ.copyright}
                  </Paragraph>
                )}
              </Card>
            </Col>
            <Col xs={24} lg={9}>
              <div className="side">
                {item9Flag && (
                  <Alert
                    type="error"
                    showIcon
                    data-testid="item9-notice"
                    message={ITEM9_NOTICE.message[lang]}
                    description={ITEM9_NOTICE.description[lang]}
                    style={{ marginBottom: 16 }}
                  />
                )}
                <Paragraph type="secondary" style={{ marginBottom: 0 }}>
                  The score updates as you answer. Each answer is worth points (its “item weight” in FHIR); the total
                  is the sum.
                </Paragraph>
                <ContentLocaleProvider locale={lang}>
                  <ScorePanel results={scores} role="patient" />
                </ContentLocaleProvider>
                <Card size="small" style={{ marginTop: 16 }}>
                  <Space direction="vertical" style={{ width: '100%' }}>
                    <Button type="primary" size="large" block onClick={submit} data-testid="submit">
                      Submit
                    </Button>
                    <Text type="secondary" style={{ fontSize: 12 }}>
                      Creates the FHIR QuestionnaireResponse for these answers below.
                    </Text>
                    {missing.length > 0 && (
                      <Alert
                        type="warning"
                        showIcon
                        data-testid="missing"
                        message={`Please answer ${missing.length === 1 ? 'this question' : `these ${missing.length} questions`} first`}
                        description={
                          <ul className="missing-list">
                            {missing.map((m) => (
                              <li key={m.linkId}>{pick(localized(m.text, m._text), lang)}</li>
                            ))}
                          </ul>
                        }
                      />
                    )}
                  </Space>
                </Card>
              </div>
            </Col>
          </Row>
        )
      )}

      {response && (
        <Card
          id="result"
          title="3. Your answers as a FHIR QuestionnaireResponse"
          style={{ marginTop: 24 }}
          data-testid="result"
          extra={
            <Space>
              <Button icon={<CopyOutlined />} onClick={copy}>
                {copied ? 'Copied' : 'Copy'}
              </Button>
              <Button type="primary" icon={<DownloadOutlined />} onClick={download} data-testid="download">
                Download
              </Button>
            </Space>
          }
        >
          <Paragraph type="secondary">
            This is what a system would store or send. <Text code>questionnaire</Text> says which form (and version) was
            filled in, <Text code>status: completed</Text> means it is finished, <Text code>authored</Text> is when it was
            submitted, and each entry in <Text code>item</Text> is one question (<Text code>linkId</Text>) with its answer
            — a code from the answer list (<Text code>valueCoding</Text>) or, for the score, a number (
            <Text code>valueInteger</Text>).
          </Paragraph>
          <pre className="json" data-testid="result-json">
            {json}
          </pre>
        </Card>
      )}
    </div>
  );
}
