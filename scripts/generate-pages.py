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

VIEWER = "https://e-medlab.github.io/mental-ig/viewer/"
TONE = {"minimal": "mh-good", "adequate": "mh-good", "mild": "mh-mid", "moderate": "mh-mid",
        "moderately severe": "mh-bad", "severe": "mh-bad", "poor": "mh-bad"}
RANGE = {"phq-9": "of 27", "gad-7": "of 21", "who-5": "of 100"}
STYLE = '<link rel="stylesheet" href="mental-ig.css"/>\n\n'


def result_of(i, k):
    qr = load(f"QuestionnaireResponse-{i}-response-{k}.json")
    score = [it for it in qr["item"] if it["linkId"].endswith(("total", "index"))][0]["answer"][0]["valueInteger"]
    outcome = load(f"Procedure-{i}-procedure-{k}.json")["outcome"]["text"]
    label = outcome.split(": ", 1)[1].split(".")[0].split(";")[0]
    tone = next(v for key, v in sorted(TONE.items(), key=lambda kv: -len(kv[0])) if label.startswith(key))
    return score, label, tone, outcome


out = [STYLE, """<p class="mh-section-lead">Three fictional patients each completed PHQ-9, GAD-7 and WHO-5 at one
visit to their family physician, <a href="Practitioner-practitioner-peeter.html">Dr. Peeter Pihlakas</a>.
Together they cover the range of results: well, moderate symptoms, and severe symptoms that need action
the same day.</p>

<div class="mh-grid">
"""]
for k, n in people.items():
    rows = []
    for i in T:
        score, label, tone, _ = result_of(i, k)
        rows.append(f'<div class="mh-score"><span><a href="QuestionnaireResponse-{i}-response-{k}.html">{T[i]}</a></span>'
                    f'<span><span class="mh-num">{score}</span> <span class="mh-of">{RANGE[i]}</span> '
                    f'<span class="mh-pill {tone}">{label}</span></span></div>')
    out.append(f"""  <div class="mh-card">
    <div class="mh-card-title"><a href="Patient-patient-{k}.html">{n}</a></div>
    <p class="mh-meta">{story[k]}</p>
    {"".join(rows)}
    <p class="mh-links" style="margin-top:0.7em"><a href="{VIEWER}?q=phq-9&amp;r={k}">Open in the form viewer</a></p>
  </div>
""")
out.append("""</div>

<div class="mh-note mh-warn" markdown="1">
**Kati Karu answered question 9 of PHQ-9** (thoughts of self-harm) with *More than half the days*. Any
answer other than *Not at all* to that question needs a clinician's attention the same day, whatever the
total score, and her PHQ-9 procedure records that this happened.
</div>

For each patient and questionnaire there are two resources: the **QuestionnaireResponse** with the
patient's answers and calculated score, and the **Procedure** that records the assessment and its result
in the patient's record. The response points to the procedure through its `partOf` field.

### All examples

""")
for i in T:
    codings = load(f"Procedure-{i}-procedure-mari.json")["code"]["coding"]
    names = " and ".join(f"{system_name(x['system'])} <code>{x['code']}</code> <em>{x['display']}</em>"
                         for x in codings)
    out.append(f'#### {T[i]}\n\n<p class="mh-meta">Questionnaire <a href="Questionnaire-{i}.html">{T[i]}</a>. '
               f"Procedure code: {names}.</p>\n\n"
               '<table class="mh-table">\n  <tr><th>Patient</th><th>Result</th><th>Answers</th><th>Assessment</th><th>Try it</th></tr>\n')
    for k, n in people.items():
        score, label, tone, outcome = result_of(i, k)
        out.append(f'  <tr><td><b>{n}</b></td><td><span class="mh-pill {tone}">{score} · {label}</span><br/>'
                   f'<span class="mh-of">{outcome}</span></td>'
                   f'<td><a href="QuestionnaireResponse-{i}-response-{k}.html">QuestionnaireResponse</a></td>'
                   f'<td><a href="Procedure-{i}-procedure-{k}.html">Procedure</a></td>'
                   f'<td><a href="{VIEWER}?q={i}&amp;r={k}">open in the form</a></td></tr>\n')
    out.append("</table>\n\n")
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

c = [STYLE, """The guide codes every concept in **both LOINC and SNOMED CT** wherever both systems have a code for it.
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


def style_tables(md):
    """Give every markdown table the guide's table style (a kramdown block attribute after the table)."""
    lines, outl = md.split("\n"), []
    for n, line in enumerate(lines):
        outl.append(line)
        nxt = lines[n + 1] if n + 1 < len(lines) else ""
        if line.startswith("|") and not nxt.startswith("|"):
            outl.append("{: .mh-table}")
    return "\n".join(outl)


(P / "coding.md").write_text(style_tables("".join(c)), encoding="utf-8")
print("ok")
