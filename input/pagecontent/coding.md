Every code in this guide comes from an international code system, except the six WHO-5 answers, which
neither LOINC nor SNOMED CT codes. The SNOMED CT codes were checked against the International Edition of
1 November 2026, and all of them are active.

### Questionnaires and scores

| Questionnaire | Questionnaire code | Total score code | Assessment procedure |
|---|---|---|---|
| PHQ-9 | LOINC `44249-1` | LOINC `44261-6`, SNOMED CT `720433000` | SNOMED CT `715252007` |
| GAD-7 | LOINC `69737-5`, SNOMED CT `704501007` | LOINC `70274-6`, SNOMED CT `445455005` | SNOMED CT `445598007` |
| WHO-5 | SNOMED CT `1144752009` | SNOMED CT `1144665009` (index 0–100) | SNOMED CT `1417808008` |

PHQ-9 has no SNOMED CT code for the questionnaire itself, and WHO-5 has no LOINC codes.

### Questions

PHQ-9 and GAD-7 questions are coded with their LOINC codes, which are also their `linkId`s. WHO-5
questions have no code in either system and are identified by their `linkId` only (`who5-1` to `who5-5`).

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

#### WHO-5

| linkId | Code | Question |
|---|---|---|
| `who5-1` | — | I have felt cheerful and in good spirits |
| `who5-2` | — | I have felt calm and relaxed |
| `who5-3` | — | I have felt active and vigorous |
| `who5-4` | — | I woke up feeling fresh and rested |
| `who5-5` | — | My daily life has been filled with things that interest me |
| `who-5-raw` | — | WHO-5 raw score (0–25) |
| `who-5-index` | SNOMED CT `1144665009` | WHO-5 well-being index (0–100) |

### Answers

PHQ-9 and GAD-7 symptom questions (LOINC answer list `LL358-3`):

| Code | Answer | Points |
|---|---|---|
| LOINC `LA6568-5` | Not at all | 0 |
| LOINC `LA6569-3` | Several days | 1 |
| LOINC `LA6570-1` | More than half the days | 2 |
| LOINC `LA6571-9` | Nearly every day | 3 |

PHQ-9 difficulty question `69722-7` (LOINC answer list `LL359-1`; not scored):

| Code | Answer |
|---|---|
| LOINC `LA6572-7` | Not difficult at all |
| LOINC `LA6573-5` | Somewhat difficult |
| LOINC `LA6575-0` | Very difficult |
| LOINC `LA6574-3` | Extremely difficult |

WHO-5 statements, coded in this guide's own code system [WHO-5 response options](CodeSystem-who-5-answer.html); the code is the number of points:

| Code | Answer | Points |
|---|---|---|
| `5` | All of the time | 5 |
| `4` | Most of the time | 4 |
| `3` | More than half of the time | 3 |
| `2` | Less than half of the time | 2 |
| `1` | Some of the time | 1 |
| `0` | At no time | 0 |
