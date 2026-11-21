"""Write examples.md and coding.md of the mental-ig from its SUSHI output. usage: python3 scripts/generate-pages.py . (after SUSHI)"""
import json
import sys
from pathlib import Path

IG = Path(sys.argv[1])
R = IG / "fsh-generated" / "resources"
P = IG / "input" / "pagecontent"


def system_name(url):
    return {"http://loinc.org": "LOINC", "http://snomed.info/sct": "SNOMED CT",
            "https://taltech.ee/fhir/mental/CodeSystem/who-5": "WHO-5 (this guide)"}[url]


def load(name):
    return json.loads((R / name).read_text(encoding="utf-8"))


people = {"mari": "Mari Maasikas", "juhan": "Juhan Juurikas", "kati": "Kati Karu"}
story = {"mari": "42, routine check-up, no concerns", "juhan": "55, low mood and poor sleep for six weeks",
         "kati": "30, cannot cope at work or at home"}
T = {"phq-9": "PHQ-9", "gad-7": "GAD-7", "who-5": "WHO-5"}

out = ["""The guide contains three fictional patients who each completed PHQ-9, GAD-7 and WHO-5 at one visit to
their family physician, [Dr. Peeter Pihlakas](Practitioner-practitioner-peeter.html). Together they cover
the range of results: well, moderate symptoms, and severe symptoms that need action the same day.

For each patient and questionnaire there are two resources: the **QuestionnaireResponse** with the
patient's answers and calculated score, and the **Procedure** that records the assessment and its result
in the patient's record. The response points to the procedure through its `partOf` field.

### The patients

| Patient | Story |
|---|---|
"""]
for k, n in people.items():
    out.append(f"| [{n}](Patient-patient-{k}.html) | {story[k]} |\n")
out.append("\n### Results at a glance\n\n| Patient | PHQ-9 (0–27) | GAD-7 (0–21) | WHO-5 index (0–100) |\n|---|---|---|---|\n")
for k, n in people.items():
    cells = []
    for i in T:
        qr = load(f"QuestionnaireResponse-{i}-response-{k}.json")
        score = [it for it in qr["item"] if it["linkId"].endswith(("total", "index"))][0]["answer"][0]["valueInteger"]
        outcome = load(f"Procedure-{i}-procedure-{k}.json")["outcome"]["text"]
        label = outcome.split(": ", 1)[1].split(".")[0].split(";")[0]
        cells.append(f"**{score}** — {label}")
    out.append(f"| {n} | " + " | ".join(cells) + " |\n")
out.append("""
Kati Karu answered question 9 of PHQ-9 (thoughts of self-harm) with *More than half the days*. Any answer
other than *Not at all* to that question needs a clinician's attention the same day, whatever the total
score, and her PHQ-9 procedure records that this happened.

### All examples

""")
for i in T:
    codings = load(f"Procedure-{i}-procedure-mari.json")["code"]["coding"]
    names = " and ".join(f"{system_name(x['system'])} `{x['code']}` *{x['display']}*"
                         for x in codings)
    out.append(f"#### {T[i]}\n\nQuestionnaire: [{T[i]}](Questionnaire-{i}.html). Procedure code: {names}.\n\n"
               "| Patient | Answers | Assessment | Result |\n|---|---|---|---|\n")
    for k, n in people.items():
        outcome = load(f"Procedure-{i}-procedure-{k}.json")["outcome"]["text"]
        out.append(f"| {n} | [QuestionnaireResponse](QuestionnaireResponse-{i}-response-{k}.html) | "
                   f"[Procedure](Procedure-{i}-procedure-{k}.html) | {outcome} |\n")
    out.append("\n")
out.append("""### Reading one example step by step

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
""")
(P / "examples.md").write_text("".join(out), encoding="utf-8")

c = ["""The guide codes every concept in **both LOINC and SNOMED CT** wherever both systems have a code for it.
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

LOINC has no procedure codes as such; the assessment procedures carry the LOINC panel (for WHO-5, the
guide's own questionnaire code) next to the SNOMED CT procedure code, because it names the same assessment.

"""]
c.append("""### Questions

PHQ-9 and GAD-7 questions are coded with their LOINC codes, which are also their `linkId`s; SNOMED CT has
no codes for the individual questions. WHO-5 statements are coded in the guide's own WHO-5 code system,
with the same codes as their `linkId`s (`who5-1` to `who5-5`).

""")
for i, title in T.items():
    q = load(f"Questionnaire-{i}.json")
    c.append(f"#### {title}\n\n| linkId | Code | Question |\n|---|---|---|\n")
    for it in q["item"]:
        if it["type"] == "display":
            continue
        codes = ", ".join(f"{system_name(x['system'])} `{x['code']}`"
                          for x in it.get("code", [])) or "—"
        c.append(f"| `{it['linkId']}` | {codes} | {it['text']} |\n")
    c.append("\n")
c.append("### Answers\n\nThe answers are LOINC answer codes; SNOMED CT has no codes for them.\n\n")
q = load("Questionnaire-phq-9.json")
c.append("PHQ-9 and GAD-7 symptom questions (LOINC answer list `LL358-3`):\n\n| Code | Answer | Points |\n|---|---|---|\n")
for a in q["item"][1]["answerOption"]:
    c.append(f"| LOINC `{a['valueCoding']['code']}` | {a['valueCoding']['display']} | {int(a['extension'][0]['valueDecimal'])} |\n")
diff = next(it for it in q["item"] if it["linkId"] == "69722-7")
c.append("\nPHQ-9 difficulty question `69722-7` (LOINC answer list `LL359-1`; not scored):\n\n| Code | Answer |\n|---|---|\n")
for a in diff["answerOption"]:
    c.append(f"| LOINC `{a['valueCoding']['code']}` | {a['valueCoding']['display']} |\n")
c.append("\nWHO-5 statements, coded in this guide's own code system "
         "[WHO-5 response options](CodeSystem-who-5-answer.html); the code is the number of points:\n\n"
         "| Code | Answer | Points |\n|---|---|---|\n")
w = load("Questionnaire-who-5.json")
for a in w["item"][1]["answerOption"]:
    c.append(f"| `{a['valueCoding']['code']}` | {a['valueCoding']['display']} | {int(a['extension'][0]['valueDecimal'])} |\n")
(P / "coding.md").write_text("".join(c), encoding="utf-8")
print("ok")
