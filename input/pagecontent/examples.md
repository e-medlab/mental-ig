The guide contains three fictional patients who each completed PHQ-9, GAD-7 and WHO-5 at one visit to
their family physician, [Dr. Peeter Pihlakas](Practitioner-practitioner-peeter.html). Together they cover
the range of results: well, moderate symptoms, and severe symptoms that need action the same day.

For each patient and questionnaire there are two resources: the **QuestionnaireResponse** with the
patient's answers and calculated score, and the **Procedure** that records the assessment and its result
in the patient's record. The response points to the procedure through its `partOf` field.

### The patients

| Patient | Story |
|---|---|
| [Mari Maasikas](Patient-patient-mari.html) | 42, routine check-up, no concerns |
| [Juhan Juurikas](Patient-patient-juhan.html) | 55, low mood and poor sleep for six weeks |
| [Kati Karu](Patient-patient-kati.html) | 30, cannot cope at work or at home |

### Results at a glance

| Patient | PHQ-9 (0–27) | GAD-7 (0–21) | WHO-5 index (0–100) |
|---|---|---|---|
| Mari Maasikas | **3** — minimal depressive symptoms | **2** — minimal anxiety symptoms | **80** — adequate well-being |
| Juhan Juurikas | **12** — moderate depressive symptoms | **11** — moderate anxiety symptoms | **44** — poor well-being |
| Kati Karu | **22** — severe depressive symptoms | **17** — severe anxiety symptoms | **20** — poor well-being |

Kati Karu answered question 9 of PHQ-9 (thoughts of self-harm) with *More than half the days*. Any answer
other than *Not at all* to that question needs a clinician's attention the same day, whatever the total
score, and her PHQ-9 procedure records that this happened.

### All examples

#### PHQ-9

Questionnaire: [PHQ-9](Questionnaire-phq-9.html). Procedure code: SNOMED CT `715252007` *Depression screening using PHQ-9 (Patient Health Questionnaire 9) score* and LOINC `44249-1` *PHQ-9 quick depression assessment panel [Reported.PHQ]*.

| Patient | Answers | Assessment | Result |
|---|---|---|---|
| Mari Maasikas | [QuestionnaireResponse](QuestionnaireResponse-phq-9-response-mari.html) | [Procedure](Procedure-phq-9-procedure-mari.html) | PHQ-9 total score 3 of 27: minimal depressive symptoms |
| Juhan Juurikas | [QuestionnaireResponse](QuestionnaireResponse-phq-9-response-juhan.html) | [Procedure](Procedure-phq-9-procedure-juhan.html) | PHQ-9 total score 12 of 27: moderate depressive symptoms |
| Kati Karu | [QuestionnaireResponse](QuestionnaireResponse-phq-9-response-kati.html) | [Procedure](Procedure-phq-9-procedure-kati.html) | PHQ-9 total score 22 of 27: severe depressive symptoms. Question 9 (thoughts of self-harm) answered 'More than half the days': the physician assessed suicide risk during the same visit |

#### GAD-7

Questionnaire: [GAD-7](Questionnaire-gad-7.html). Procedure code: SNOMED CT `445598007` *Assessment using Generalized Anxiety Disorder 7 item score* and LOINC `69737-5` *Generalized anxiety disorder 7 item (GAD-7)*.

| Patient | Answers | Assessment | Result |
|---|---|---|---|
| Mari Maasikas | [QuestionnaireResponse](QuestionnaireResponse-gad-7-response-mari.html) | [Procedure](Procedure-gad-7-procedure-mari.html) | GAD-7 total score 2 of 21: minimal anxiety symptoms |
| Juhan Juurikas | [QuestionnaireResponse](QuestionnaireResponse-gad-7-response-juhan.html) | [Procedure](Procedure-gad-7-procedure-juhan.html) | GAD-7 total score 11 of 21: moderate anxiety symptoms |
| Kati Karu | [QuestionnaireResponse](QuestionnaireResponse-gad-7-response-kati.html) | [Procedure](Procedure-gad-7-procedure-kati.html) | GAD-7 total score 17 of 21: severe anxiety symptoms |

#### WHO-5

Questionnaire: [WHO-5](Questionnaire-who-5.html). Procedure code: SNOMED CT `1417808008` *Assessment using World Health Organization-Five Well-Being Index questionnaire* and WHO-5 (this guide) `who-5` *WHO-5 Well-Being Index questionnaire*.

| Patient | Answers | Assessment | Result |
|---|---|---|---|
| Mari Maasikas | [QuestionnaireResponse](QuestionnaireResponse-who-5-response-mari.html) | [Procedure](Procedure-who-5-procedure-mari.html) | WHO-5 raw score 20 of 25, well-being index 80 of 100: adequate well-being |
| Juhan Juurikas | [QuestionnaireResponse](QuestionnaireResponse-who-5-response-juhan.html) | [Procedure](Procedure-who-5-procedure-juhan.html) | WHO-5 raw score 11 of 25, well-being index 44 of 100: poor well-being; screened for depression with PHQ-9 at the same visit |
| Kati Karu | [QuestionnaireResponse](QuestionnaireResponse-who-5-response-kati.html) | [Procedure](Procedure-who-5-procedure-kati.html) | WHO-5 raw score 5 of 25, well-being index 20 of 100: poor well-being; screened for depression with PHQ-9 at the same visit |

### Reading one example step by step

Open [PHQ-9 answered by Juhan Juurikas](QuestionnaireResponse-phq-9-response-juhan.html) and look at the
JSON tab:

1. `questionnaire` is `https://taltech.ee/fhir/mental/Questionnaire/phq-9|0.1.0`: the form and the version
   of it that Juhan answered.
2. `subject`, `author` and `source` all point to Juhan: the answers are about him and he gave them himself.
3. `partOf` points to [the procedure](Procedure-phq-9-procedure-juhan.html) in which his physician
   recorded the assessment.
4. Each `item` repeats a question's `linkId` and text, and holds the chosen answer as a LOINC code. For
   example, `44255-8` *Feeling down, depressed, or hopeless* is answered `LA6570-1` *More than half the
   days*, which scores 2 points.
5. The last item, `phq-9-total`, holds the total score, 12. A form tool calculates it from the answers
   with the formula in the questionnaire; it is stored so that a receiving system does not have to
   recalculate it.
