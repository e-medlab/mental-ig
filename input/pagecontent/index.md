### What this guide is

This guide describes three short mental health questionnaires in a standard, computer-readable form, so
that any health information system can show them to a patient, store the answers and share them with
another system without losing their meaning:

| Questionnaire | What it measures | Questions | Score | Open it |
|---|---|---|---|---|
| **PHQ-9** — Patient Health Questionnaire-9 | symptoms of depression | 9 (+1 unscored) | 0–27, higher is worse | [PHQ-9](Questionnaire-phq-9.html) |
| **GAD-7** — Generalized Anxiety Disorder 7-item scale | symptoms of anxiety | 7 | 0–21, higher is worse | [GAD-7](Questionnaire-gad-7.html) |
| **WHO-5** — World Health Organization-Five Well-Being Index | current well-being | 5 | 0–100, higher is better | [WHO-5](Questionnaire-who-5.html) |

All three ask about the **last two weeks**, are filled in by the patient themselves and take a few minutes.
Each questionnaire page shows the questions, the answer options, how the score is calculated and how to
interpret it.

The guide also contains **worked examples**: three fictional patients who each completed all three
questionnaires, with the answers and the assessment their physician recorded. See
[Worked examples](examples.html).

### Who this guide is for

- **Clinicians and researchers** who want to check that the questionnaires are worded and scored exactly
  like the original instruments.
- **Software developers** who build a system that shows these questionnaires or receives their results.
- **Anyone new to FHIR** who wants a small, complete example of how a questionnaire is standardised. You do
  not need to know FHIR to read this guide: the next section explains the few terms it uses.

### New to FHIR? The ten terms you need

| Term | In plain words |
|---|---|
| **FHIR** | *Fast Healthcare Interoperability Resources*: the international standard for exchanging health data between computer systems, published by [HL7](https://hl7.org/fhir/R4/). This guide uses FHIR version R4. |
| **Resource** | One unit of health data with a fixed structure, such as a patient, a questionnaire or a procedure. Every page in the *Artifacts* menu is one resource. |
| **[Questionnaire](https://hl7.org/fhir/R4/questionnaire.html)** | The *blank form*: the questions, their order, the allowed answers and the scoring rules. This guide defines three of them. |
| **[QuestionnaireResponse](https://hl7.org/fhir/R4/questionnaireresponse.html)** | One *filled-in form*: who answered, when, and which answer they chose for each question. |
| **[Procedure](https://hl7.org/fhir/R4/procedure.html)** | Something that was done to or for a patient. Here: *the assessment itself*, as it appears in the patient's record, with its result. |
| **[Patient](https://hl7.org/fhir/R4/patient.html)** / **[Practitioner](https://hl7.org/fhir/R4/practitioner.html)** | The person the data is about, and the health professional involved. The ones in this guide are fictional. |
| **Code system** | A list of agreed codes with an exact meaning, so that a computer knows that two systems mean the same thing. |
| **[LOINC](https://loinc.org)** | The code system for questions, answers and measurements. PHQ-9 is panel `44249-1`; the answer "Several days" is `LA6569-3`. |
| **[SNOMED CT](https://www.snomed.org/what-is-snomed-ct)** | The clinical terminology used in Estonia and most of Europe. It names the instruments, their scores and the assessment procedures. |
| **Implementation guide (IG)** | A set of FHIR rules and examples for one purpose, published as a website — this one. |

Two FHIR conventions help when reading the pages:

- Every questionnaire has a **canonical URL**, a permanent name such as
  `https://taltech.ee/fhir/mental/Questionnaire/phq-9`. A filled-in form points to the questionnaire it
  answers by this URL, plus a version number.
- Each answer option carries an **ordinal value**: the number of points it scores. The total score is
  calculated from these with a short formula written in [FHIRPath](https://hl7.org/fhirpath/), using the
  rules of HL7's [Structured Data Capture (SDC)](https://hl7.org/fhir/uv/sdc/STU3/) guide.

### How the pieces fit together

When a patient completes PHQ-9 at a visit, three resources describe what happened:

1. The **[Questionnaire](Questionnaire-phq-9.html)** is the form. It is the same for everyone and never
   changes for a given version.
2. A **QuestionnaireResponse** holds this patient's answers and the calculated total score, for example
   [PHQ-9 answered by Juhan Juurikas](QuestionnaireResponse-phq-9-response-juhan.html). Its `questionnaire`
   field names the form it answers; its `partOf` field points to the procedure below.
3. A **Procedure** records the assessment in the patient's record — SNOMED CT `715252007` *Depression
   screening using PHQ-9 score* — with who did it, when, and the result in words, for example
   [PHQ-9 assessment of Juhan Juurikas](Procedure-phq-9-procedure-juhan.html).

```
Questionnaire (the form)  ◄── questionnaire ──  QuestionnaireResponse (the answers)  ── partOf ──►  Procedure (the assessment)
                                                         │                                              │
                                                         └──────────── subject ──► Patient ◄── subject ──┘
```

The procedure codes are:

| Questionnaire | Assessment procedure (SNOMED CT) |
|---|---|
| PHQ-9 | `715252007` Depression screening using PHQ-9 (Patient Health Questionnaire 9) score |
| GAD-7 | `445598007` Assessment using Generalized Anxiety Disorder 7 item score |
| WHO-5 | `1417808008` Assessment using World Health Organization-Five Well-Being Index questionnaire |

Every code in the guide, with its source, is listed on [Codes used](coding.html).

### How to read a page in this guide

Each resource page has tabs across the top:

- **Narrative** (the first tab) — a human-readable rendering. For a questionnaire it lists every question
  and answer option; start here.
- **XML** and **JSON** — the same resource as a computer exchanges it. Developers can copy these, or
  download the file from the link on the page.

The [Artifacts](artifacts.html) page lists every resource in the guide. The whole guide is also available
as one FHIR package, [package.tgz](package.tgz), for loading into a FHIR server or a form tool.

### Try a questionnaire

To see a questionnaire as a patient would, download its JSON — for example
[Questionnaire-phq-9.json](Questionnaire-phq-9.json) — and open it in a free form renderer such as the
[NLM LHC-Forms demo](https://lhcforms.nlm.nih.gov/lhcforms) (*Load from file*). The total score fills in
as you answer.

### Status and licences

This is a **draft** (version {{site.data.fhir.version}}, FHIR {{site.data.fhir.fhirVersion}}) prepared
for discussion. It is not yet approved for clinical use.

- **PHQ-9** and **GAD-7** © Pfizer Inc. They may be reproduced, translated, displayed and distributed
  without permission.
- **WHO-5** © World Health Organization 2024 (WHO/UCN/MSD/MHE/2024.1), licence
  [CC BY-NC-SA 3.0 IGO](https://creativecommons.org/licenses/by-nc-sa/3.0/igo/): free for non-commercial
  use; commercial use needs WHO's permission.
- **LOINC** © Regenstrief Institute, Inc., under the [LOINC licence](https://loinc.org/license/).
- **SNOMED CT** © SNOMED International. Estonia is a SNOMED International member, so use in Estonia is
  covered by the national licence.
- The rest of this guide is published under CC BY 4.0.

The questionnaires are in English, in the wording of the original instruments. This version includes no
translations.
