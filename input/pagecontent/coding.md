<link rel="stylesheet" href="mental-ig.css"/>

The guide codes every concept in **both LOINC and SNOMED CT** wherever both systems have a code for it.
Where a cell below says *none*, that system has no code for the concept (checked against LOINC 2.83 and the
SNOMED CT International Edition of 1 November 2026, in which every code used here is active).

LOINC has no codes for WHO-5 at all, so this guide defines its own: the
[WHO-5 concepts](CodeSystem-who-5.html) code system (value set [WHO-5 concepts](ValueSet-who-5.html)) plays
the role LOINC plays for PHQ-9 and GAD-7, and [WHO-5 response options](CodeSystem-who-5-answer.html)
(value set [WHO-5 response options](ValueSet-who-5-answer.html)) holds the six answers. Their codes are
under `https://taltech.ee/fhir/mental/CodeSystem/`.

### Questionnaires, scores and assessments

| Concept | LOINC (or this guide's WHO-5 code) | SNOMED CT |
|---|---|---|
| PHQ-9 questionnaire | `44249-1` PHQ-9 quick depression assessment panel | none |
| PHQ-9 total score | `44261-6` Patient Health Questionnaire 9 item (PHQ-9) total score | `720433000` Patient Health Questionnaire Nine Item score |
| PHQ-9 assessment (Procedure) | `44249-1` (the panel) | `715252007` Depression screening using PHQ-9 (Patient Health Questionnaire 9) score |
| GAD-7 questionnaire | `69737-5` Generalized anxiety disorder 7 item (GAD-7) | `704501007` Generalized Anxiety Disorder 7 item scale |
| GAD-7 total score | `70274-6` Generalized anxiety disorder 7 item (GAD-7) total score | `445455005` Generalized Anxiety Disorder 7 item score |
| GAD-7 assessment (Procedure) | `69737-5` (the panel) | `445598007` Assessment using Generalized Anxiety Disorder 7 item score |
| WHO-5 questionnaire | WHO-5 `who-5` | `1144752009` World Health Organization-Five Well-Being Index questionnaire |
| WHO-5 raw score (0–25) | WHO-5 `who-5-raw` | none |
| WHO-5 index (0–100) | WHO-5 `who-5-index` | `1144665009` World Health Organization-Five Well-Being Index questionnaire score |
| WHO-5 assessment (Procedure) | WHO-5 `who-5` (the questionnaire) | `1417808008` Assessment using World Health Organization-Five Well-Being Index questionnaire |
{: .mh-table}

LOINC has no procedure codes as such; the assessment procedures carry the LOINC panel (for WHO-5, the
guide's own questionnaire code) next to the SNOMED CT procedure code, because it names the same assessment.

### Questions

PHQ-9 and GAD-7 questions are coded with their LOINC codes, which are also their `linkId`s; SNOMED CT has
no codes for the individual questions. WHO-5 statements are coded in the guide's own WHO-5 code system,
with the same codes as their `linkId`s (`who5-1` to `who5-5`).

#### PHQ-9

| linkId | Code | Question |
|---|---|---|
| `44250-9` | LOINC `44250-9` | Little interest or pleasure in doing things |
| `44255-8` | LOINC `44255-8` | Feeling down, depressed, or hopeless |
| `44259-0` | LOINC `44259-0` | Trouble falling or staying asleep, or sleeping too much |
| `44254-1` | LOINC `44254-1` | Feeling tired or having little energy |
| `44251-7` | LOINC `44251-7` | Poor appetite or overeating |
| `44258-2` | LOINC `44258-2` | Feeling bad about yourself — or that you are a failure or have let yourself or your family down |
| `44252-5` | LOINC `44252-5` | Trouble concentrating on things, such as reading the newspaper or watching television |
| `44253-3` | LOINC `44253-3` | Moving or speaking so slowly that other people could have noticed? Or the opposite — being so fidgety or restless that you have been moving around a lot more than usual |
| `44260-8` | LOINC `44260-8` | Thoughts that you would be better off dead, or of hurting yourself in some way |
| `69722-7` | LOINC `69722-7` | If you checked off any problems, how difficult have these problems made it for you to do your work, take care of things at home, or get along with other people? |
| `phq-9-total` | LOINC `44261-6`, SNOMED CT `720433000` | PHQ-9 total score (0–27) |
{: .mh-table}

#### GAD-7

| linkId | Code | Question |
|---|---|---|
| `69725-0` | LOINC `69725-0` | Feeling nervous, anxious or on edge |
| `68509-9` | LOINC `68509-9` | Not being able to stop or control worrying |
| `69733-4` | LOINC `69733-4` | Worrying too much about different things |
| `69734-2` | LOINC `69734-2` | Trouble relaxing |
| `69735-9` | LOINC `69735-9` | Being so restless that it is hard to sit still |
| `69689-8` | LOINC `69689-8` | Becoming easily annoyed or irritable |
| `69736-7` | LOINC `69736-7` | Feeling afraid as if something awful might happen |
| `gad-7-total` | LOINC `70274-6`, SNOMED CT `445455005` | GAD-7 total score (0–21) |
{: .mh-table}

#### WHO-5

| linkId | Code | Question |
|---|---|---|
| `who5-1` | WHO-5 (this guide) `who5-1` | I have felt cheerful and in good spirits |
| `who5-2` | WHO-5 (this guide) `who5-2` | I have felt calm and relaxed |
| `who5-3` | WHO-5 (this guide) `who5-3` | I have felt active and vigorous |
| `who5-4` | WHO-5 (this guide) `who5-4` | I woke up feeling fresh and rested |
| `who5-5` | WHO-5 (this guide) `who5-5` | My daily life has been filled with things that interest me |
| `who-5-raw` | WHO-5 (this guide) `who-5-raw` | WHO-5 raw score (0–25) |
| `who-5-index` | WHO-5 (this guide) `who-5-index`, SNOMED CT `1144665009` | WHO-5 well-being index (0–100) |
{: .mh-table}

### Answers

The answers are LOINC answer codes; SNOMED CT has no codes for them.

PHQ-9 and GAD-7 symptom questions (LOINC answer list `LL358-3`):

| Code | Answer | Points |
|---|---|---|
| LOINC `LA6568-5` | Not at all | 0 |
| LOINC `LA6569-3` | Several days | 1 |
| LOINC `LA6570-1` | More than half the days | 2 |
| LOINC `LA6571-9` | Nearly every day | 3 |
{: .mh-table}

PHQ-9 difficulty question `69722-7` (LOINC answer list `LL359-1`; not scored):

| Code | Answer |
|---|---|
| LOINC `LA6572-7` | Not difficult at all |
| LOINC `LA6573-5` | Somewhat difficult |
| LOINC `LA6575-0` | Very difficult |
| LOINC `LA6574-3` | Extremely difficult |
{: .mh-table}

WHO-5 statements, coded in this guide's own code system [WHO-5 response options](CodeSystem-who-5-answer.html); the code is the number of points:

| Code | Answer | Points |
|---|---|---|
| `5` | All of the time | 5 |
| `4` | Most of the time | 4 |
| `3` | More than half of the time | 3 |
| `2` | Less than half of the time | 2 |
| `1` | Some of the time | 1 |
| `0` | At no time | 0 |
{: .mh-table}
