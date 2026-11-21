# Mental Health Questionnaires IG (PHQ-9, GAD-7, WHO-5)

FHIR R4 implementation guide `ee.taltech.fhir.mental`, canonical `https://taltech.ee/fhir/mental`.

It defines three standardised Questionnaires (PHQ-9, GAD-7, WHO-5) coded with LOINC and SNOMED CT, and
worked examples: three fictional patients, each with a completed QuestionnaireResponse and the
assessment Procedure it belongs to, for every questionnaire (9 + 9). The landing page
(`input/pagecontent/index.md`) is written for readers who have not used FHIR before.

## Layout

| Path | What |
|---|---|
| `sushi-config.yaml` | IG metadata, dependencies (SDC 3.0.0), pages and menu |
| `input/fsh/questionnaires.fsh` | the three Questionnaires, the WHO-5 answer CodeSystem and ValueSet |
| `input/fsh/examples-*.fsh` | patients, practitioner, QuestionnaireResponses and Procedures |
| `input/pagecontent/` | `index.md` (home), `examples.md`, `coding.md` |
| `scripts/generate-fsh.py` | writes every `input/fsh/*.fsh` file, so example scores are computed, not typed |
| `scripts/generate-pages.py` | writes `examples.md` and `coding.md` from SUSHI's output |

The FSH and the two generated pages are produced by the scripts. Change the script, not the generated
file, or the next run overwrites your edit:

```bash
python3 scripts/generate-fsh.py .
./build.sh sushi
python3 scripts/generate-pages.py .
```

## Building

Needs Docker only: `build.sh` runs SUSHI and the HL7 IG Publisher (pinned to 3.0.4) inside
`hl7fhir/ig-publisher-base`.

```bash
./build.sh          # full build: output/index.html, QA report in output/qa.html
./build.sh sushi    # FSH -> JSON only, in seconds
```

## Sources

- Item and answer wording: the PHQ-9 and GAD-7 sheets (Pfizer) and the WHO-5 2024 sheet
  (WHO/UCN/MSD/MHE/2024.1), as seeded in HelexEMR.
- LOINC 2.83; SNOMED CT International Edition 2026-11-01 (every SNOMED CT code checked active).
