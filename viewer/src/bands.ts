/**
 * How each score is read, per questionnaire. The IG states these bands in each Questionnaire's
 * description; they are repeated here as data so the viewer can label a live score.
 */
import type { ScoreBand } from '@helex/questionnaire-response';

export type QuestionnaireId = 'phq-9' | 'gad-7' | 'who-5';

export interface ScoreMeta {
  min: number;
  max: number;
  bands?: ScoreBand[];
}

function band(low: number, high: number, code: string, patient: string, practitioner: string): ScoreBand {
  return { low, high, code, interpretation: { patient, practitioner } };
}

export const SCORE_META: Record<QuestionnaireId, Record<string, ScoreMeta>> = {
  'phq-9': {
    'phq-9-total': {
      min: 0,
      max: 27,
      bands: [
        band(0, 4, 'minimal', 'Few or no signs of depression.', 'Minimal depression: no treatment usually needed.'),
        band(5, 9, 'mild', 'Some signs of mild depression.', 'Mild depression: watchful waiting; repeat PHQ-9 at follow-up.'),
        band(10, 14, 'moderate', 'Signs of moderate depression.', 'Moderate depression: consider a treatment plan (counselling, follow-up and/or medication).'),
        band(15, 19, 'moderately severe', 'Signs of moderately severe depression.', 'Moderately severe depression: active treatment with medication and/or psychotherapy.'),
        band(20, 27, 'severe', 'Signs of severe depression.', 'Severe depression: start treatment promptly; consider referral to a mental health specialist.'),
      ],
    },
  },
  'gad-7': {
    'gad-7-total': {
      min: 0,
      max: 21,
      bands: [
        band(0, 4, 'minimal', 'Few or no signs of anxiety.', 'Minimal anxiety.'),
        band(5, 9, 'mild', 'Some signs of mild anxiety.', 'Mild anxiety: monitor.'),
        band(10, 14, 'moderate', 'Signs of moderate anxiety.', 'Moderate anxiety: further evaluation is recommended.'),
        band(15, 21, 'severe', 'Signs of severe anxiety.', 'Severe anxiety: active treatment is probably warranted.'),
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
        band(0, 49, 'poor well-being', 'Your well-being is low. It may help to talk to a doctor.', 'Poor well-being (index below 50): screen for depression, e.g. with PHQ-9.'),
        band(50, 100, 'adequate well-being', 'Your well-being is good.', 'Adequate well-being.'),
      ],
    },
  },
};

/** PHQ-9 item 9 (thoughts of death or self-harm) and its "Not at all" answer. */
export const PHQ9_ITEM9 = '44260-8';
export const PHQ9_ITEM9_NOT_AT_ALL = 'LA6568-5';
