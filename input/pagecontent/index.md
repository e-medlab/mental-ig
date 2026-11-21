<link rel="stylesheet" href="mental-ig.css"/>

<div class="mh-hero">
  <div class="mh-badges">
    <span class="mh-badge">FHIR R5</span>
    <span class="mh-badge">LOINC + SNOMED CT</span>
    <span class="mh-badge">English · Eesti · Русский · Українська</span>
    <span class="mh-badge">Draft {{site.data.fhir.version}}</span>
  </div>
  <div class="mh-hero-title">Mental health questionnaires, standardised</div>
  <p>PHQ-9, GAD-7 and WHO-5 as FHIR Questionnaires that any health information system can show to a
  patient, score the same way, store and share without losing their meaning. With worked examples, a
  form viewer you can try, and every code explained.</p>
  <div class="mh-buttons">
    <a class="mh-btn mh-primary" href="https://e-medlab.github.io/mental-ig/viewer/">Try the questionnaires</a>
    <a class="mh-btn" href="examples.html">Worked examples</a>
    <a class="mh-btn" href="coding.html">Codes used</a>
    <a class="mh-btn" href="package.tgz">Download the package</a>
  </div>
</div>

### The three questionnaires

All three ask about the **last two weeks**, are filled in by the patient and take a few minutes. Each
questionnaire page lists the questions and answer options, how the score is calculated and how to read it.

<div class="mh-grid">
  <div class="mh-card mh-phq">
    <span class="mh-kicker">Depression</span>
    <div class="mh-card-title">PHQ-9</div>
    <p class="mh-meta">Patient Health Questionnaire-9</p>
    <div class="mh-stats"><span><strong>9</strong> questions (+1 unscored)</span><span>score <strong>0–27</strong>, higher is worse</span></div>
    <p class="mh-meta">LOINC <code>44249-1</code> · assessment SNOMED CT <code>715252007</code></p>
    <p class="mh-links"><a href="Questionnaire-phq-9.html">Open</a><a href="https://e-medlab.github.io/mental-ig/viewer/?q=phq-9">Try it</a></p>
  </div>
  <div class="mh-card mh-gad">
    <span class="mh-kicker">Anxiety</span>
    <div class="mh-card-title">GAD-7</div>
    <p class="mh-meta">Generalized Anxiety Disorder 7-item scale</p>
    <div class="mh-stats"><span><strong>7</strong> questions</span><span>score <strong>0–21</strong>, higher is worse</span></div>
    <p class="mh-meta">LOINC <code>69737-5</code> · SNOMED CT <code>704501007</code></p>
    <p class="mh-links"><a href="Questionnaire-gad-7.html">Open</a><a href="https://e-medlab.github.io/mental-ig/viewer/?q=gad-7">Try it</a></p>
  </div>
  <div class="mh-card mh-who">
    <span class="mh-kicker">Well-being</span>
    <div class="mh-card-title">WHO-5</div>
    <p class="mh-meta">World Health Organization-Five Well-Being Index</p>
    <div class="mh-stats"><span><strong>5</strong> statements</span><span>index <strong>0–100</strong>, higher is better</span></div>
    <p class="mh-meta">SNOMED CT <code>1144752009</code> · guide code <code>who-5</code></p>
    <p class="mh-links"><a href="Questionnaire-who-5.html">Open</a><a href="https://e-medlab.github.io/mental-ig/viewer/?q=who-5">Try it</a></p>
  </div>
</div>

### Who this guide is for

<div class="mh-grid mh-small">
  <div class="mh-card"><div class="mh-card-title mh-sm">Clinicians and researchers</div><p>Check that the questionnaires are worded and scored exactly like the original instruments.</p></div>
  <div class="mh-card"><div class="mh-card-title mh-sm">Software developers</div><p>Build a system that shows these questionnaires or receives their results.</p></div>
  <div class="mh-card"><div class="mh-card-title mh-sm">Anyone new to FHIR</div><p>See a small, complete example of a standardised questionnaire. The next section explains every term you need.</p></div>
</div>

### New to FHIR? The ten terms you need

<div class="mh-grid mh-small">
  <div class="mh-card mh-term"><div class="mh-card-title mh-sm">FHIR</div><p><em>Fast Healthcare Interoperability Resources</em>: the international standard for exchanging health data between systems, published by <a href="https://hl7.org/fhir/R5/">HL7</a>. This guide uses version R5.</p></div>
  <div class="mh-card mh-term"><div class="mh-card-title mh-sm">Resource</div><p>One unit of health data with a fixed structure: a patient, a questionnaire, a procedure. Every page under <em>Artifacts</em> is one resource.</p></div>
  <div class="mh-card mh-term"><div class="mh-card-title mh-sm"><a href="https://hl7.org/fhir/R5/questionnaire.html">Questionnaire</a></div><p>The <em>blank form</em>: the questions, their order, the allowed answers and the scoring rules.</p></div>
  <div class="mh-card mh-term"><div class="mh-card-title mh-sm"><a href="https://hl7.org/fhir/R5/questionnaireresponse.html">QuestionnaireResponse</a></div><p>One <em>filled-in form</em>: who answered, when, and which answer they chose for each question.</p></div>
  <div class="mh-card mh-term"><div class="mh-card-title mh-sm"><a href="https://hl7.org/fhir/R5/procedure.html">Procedure</a></div><p>Something done to or for a patient. Here: <em>the assessment itself</em>, as it appears in the record, with its result.</p></div>
  <div class="mh-card mh-term"><div class="mh-card-title mh-sm"><a href="https://hl7.org/fhir/R5/patient.html">Patient</a> · <a href="https://hl7.org/fhir/R5/practitioner.html">Practitioner</a></div><p>The person the data is about, and the health professional involved. The ones here are fictional.</p></div>
  <div class="mh-card mh-term"><div class="mh-card-title mh-sm">Code system</div><p>A list of agreed codes with an exact meaning, so that two computer systems know they mean the same thing.</p></div>
  <div class="mh-card mh-term"><div class="mh-card-title mh-sm"><a href="https://loinc.org">LOINC</a></div><p>The code system for questions, answers and measurements. PHQ-9 is panel <code>44249-1</code>; “Several days” is <code>LA6569-3</code>.</p></div>
  <div class="mh-card mh-term"><div class="mh-card-title mh-sm"><a href="https://www.snomed.org/what-is-snomed-ct">SNOMED CT</a></div><p>The clinical terminology used in Estonia and most of Europe. It names the instruments, their scores and the assessments.</p></div>
  <div class="mh-card mh-term"><div class="mh-card-title mh-sm">Implementation guide</div><p>A set of FHIR rules and examples for one purpose, published as a website — this one.</p></div>
</div>

<div class="mh-note mh-info" markdown="1">
Two conventions help when reading the pages. Every questionnaire has a **canonical URL**, a permanent name
such as `https://taltech.ee/fhir/mental/Questionnaire/phq-9`; a filled-in form points to the questionnaire
it answers by this URL and a version. Each answer option carries an **item weight**, the points it scores;
the total is calculated from these with a short [FHIRPath](https://hl7.org/fhirpath/) formula, following
HL7's [Structured Data Capture (SDC)](https://hl7.org/fhir/uv/sdc/) guide.
</div>

### How the pieces fit together

When a patient completes PHQ-9 at a visit, three resources describe what happened:

<div class="mh-flow">
  <div class="mh-node mh-n1"><b><a href="Questionnaire-phq-9.html">Questionnaire</a></b><span>The form. The same for everyone; never changes within a version.</span></div>
  <div class="mh-arrow"><b>←</b>questionnaire</div>
  <div class="mh-node mh-n2"><b><a href="QuestionnaireResponse-phq-9-response-juhan.html">QuestionnaireResponse</a></b><span>Juhan's answers and the calculated total score.</span></div>
  <div class="mh-arrow"><b>→</b>partOf</div>
  <div class="mh-node mh-n3"><b><a href="Procedure-phq-9-procedure-juhan.html">Procedure</a></b><span>The assessment in his record: who, when and the result in words.</span></div>
</div>
<p class="mh-caption">Both the response and the procedure point to the same <a href="Patient-patient-juhan.html">Patient</a> through their <code>subject</code>.</p>

The guide codes everything in **both LOINC and SNOMED CT** wherever both have a code. The assessment
procedures are:

<table class="mh-table">
  <tr><th>Questionnaire</th><th>SNOMED CT procedure</th><th>LOINC panel</th></tr>
  <tr><td><b>PHQ-9</b></td><td><code>715252007</code> Depression screening using PHQ-9 (Patient Health Questionnaire 9) score</td><td><code>44249-1</code></td></tr>
  <tr><td><b>GAD-7</b></td><td><code>445598007</code> Assessment using Generalized Anxiety Disorder 7 item score</td><td><code>69737-5</code></td></tr>
  <tr><td><b>WHO-5</b></td><td><code>1417808008</code> Assessment using World Health Organization-Five Well-Being Index questionnaire</td><td>LOINC has no WHO-5 codes; the guide's <a href="CodeSystem-who-5.html">WHO-5 code system</a> gives <code>who-5</code></td></tr>
</table>

Every code, LOINC and SNOMED CT side by side, is on [Codes used](coding.html).

### Reading the pages

<div class="mh-grid mh-small">
  <div class="mh-card"><div class="mh-card-title mh-sm">Narrative tab</div><p>The first tab of every resource page: a human-readable rendering. For a questionnaire it lists every question and answer — start here.</p></div>
  <div class="mh-card"><div class="mh-card-title mh-sm">XML and JSON tabs</div><p>The same resource as a computer exchanges it, ready to copy or download.</p></div>
  <div class="mh-card"><div class="mh-card-title mh-sm">Artifacts and package</div><p><a href="artifacts.html">Artifacts</a> lists every resource. <a href="package.tgz">package.tgz</a> holds them all, for a FHIR server or a form tool.</p></div>
</div>

### Try a questionnaire

<div class="mh-note" markdown="1">
**[Open the form viewer](https://e-medlab.github.io/mental-ig/viewer/)** to see each questionnaire the way a
patient would, in the same form renderer as HelexEMR. Pick a language, answer the questions and watch the
score update, or load a worked example. *Submit* shows the FHIR QuestionnaireResponse the form produces,
ready to copy or download. Everything runs in your browser; nothing is sent anywhere.
</div>

The questionnaire files also open in other form tools, for example
[Questionnaire-phq-9.json](Questionnaire-phq-9.json) in the
[NLM LHC-Forms demo](https://lhcforms.nlm.nih.gov/lhcforms) (*Load from file*).

### Languages

Every questionnaire carries **Estonian (`et`), Russian (`ru`) and Ukrainian (`uk`)** translations of its
title, questions and answers next to the English, in FHIR's standard
[translation extension](https://hl7.org/fhir/R5/extension-translation.html): a form tool that supports it
shows the patient's language, one that doesn't still shows English. The translations are those used in
HelexEMR:

<table class="mh-table">
  <tr><th>Questionnaire</th><th>Estonian</th><th>Russian</th><th>Ukrainian</th></tr>
  <tr><td><b>PHQ-9</b></td><td>official Pfizer sheet <em>Estonian for Estonia</em> (2020), one typo corrected; the answer scale uses the GAD-7 Estonian wording so both read the same</td><td>official Pfizer sheet <em>Russian for Estonia</em> (2020)</td><td>official Pfizer sheet <em>Ukrainian for Ukraine</em></td></tr>
  <tr><td><b>GAD-7</b></td><td>HelexEMR's own wording: there is no official Estonian GAD-7</td><td>official Pfizer sheet <em>Russian for Russia</em></td><td>official Pfizer sheet <em>Ukrainian for Ukraine</em></td></tr>
  <tr><td><b>WHO-5</b></td><td>HelexEMR working draft</td><td>HelexEMR working draft</td><td>HelexEMR working draft</td></tr>
</table>

<div class="mh-note mh-warn" markdown="1">
The WHO-5 translations are not WHO translations, and WHO is not responsible for their content or accuracy.
The Estonian GAD-7 and the WHO-5 translations have not been validated and need review before clinical use.
</div>

### Status and licences

This is a **draft** (version {{site.data.fhir.version}}, FHIR {{site.data.fhir.fhirVersion}}) prepared for
discussion. It is not yet approved for clinical use.

<div class="mh-note mh-info" markdown="1">
**This guide** © 2026 TalTech — Tallinn University of Technology, eMedLab, is licensed under
[CC BY 4.0](https://creativecommons.org/licenses/by/4.0/). You may share and adapt it, also commercially,
**provided you credit TalTech**: name the guide and TalTech eMedLab, link to the guide and the licence, and
say whether you made changes. For example: *"Mental Health Questionnaires (PHQ-9, GAD-7, WHO-5) FHIR IG" by
TalTech eMedLab, https://e-medlab.github.io/mental-ig/, licensed under CC BY 4.0.* The build scripts and
the viewer's source code are MIT; see [LICENSE](https://github.com/e-medlab/mental-ig/blob/main/LICENSE).
</div>

The licence covers the guide's own work. The instruments and code systems keep their owners' terms:

- **PHQ-9** and **GAD-7** © Pfizer Inc.: free to reproduce, translate, display and distribute.
- **WHO-5** © World Health Organization 2024 (WHO/UCN/MSD/MHE/2024.1),
  [CC BY-NC-SA 3.0 IGO](https://creativecommons.org/licenses/by-nc-sa/3.0/igo/): non-commercial use;
  commercial use needs WHO's permission.
- **LOINC** © Regenstrief Institute, Inc., under the [LOINC licence](https://loinc.org/license/).
- **SNOMED CT** © SNOMED International. Estonia is a SNOMED International member, so use in Estonia is
  covered by the national licence.
