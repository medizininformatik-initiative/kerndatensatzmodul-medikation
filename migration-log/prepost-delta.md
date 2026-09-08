# Pre/post delta — the two ig-stats measurements compared

| Side | Measurement |
|---|---|
| pre | preflight-analysis.json (mii-ig-medikation, 69120dd, 2026-09-01T20:42:56Z) |
| post | postflight-analysis.json (mii-ig-medikation, dca2570, 2026-09-02T02:22:23Z) |

Verdicts: **unchanged** 27 · **improved** 1 · **expected-change** 5 · **REGRESSION** 1 · **not-measurable** 0.

## ⛔ Regressions — properties that got WORSE

Each one blocks the migration until it is fixed or explained; an explanation belongs in the migration report, not in a merge commit.

- **`narrative_sources.dual_source`**: `false` → `true` — the migration introduced a SECOND narrative source tree -- two trees is how the wrong one gets edited

## Identity

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `identity.id` | mii-ig-medikation | mii-ig-medikation | unchanged |  |
| `identity.canonical` | https://www.medizininformatik-initiative.de/fhir/core/modul-medikation | https://www.medizininformatik-initiative.de/fhir/core/modul-medikation | unchanged |  |
| `identity.packageId` | de.medizininformatikinitiative.kerndatensatz.medikation | de.medizininformatikinitiative.kerndatensatz.medikation | unchanged |  |
| `identity.name` | MII_IG_Medikation | MII_IG_Medikation | unchanged |  |
| `identity.version` | 2026.0.1 | 2026.0.1 | unchanged |  |
| `identity.fhirVersion` | 4.0.1 | 4.0.1 | unchanged |  |
| `identity.license` | CC-BY-4.0 | CC-BY-4.0 | unchanged |  |
| `identity.calver` | true | true | unchanged |  |
| `identity.publisher` | Medizininformatik Initiative |  | expected-change | descriptive metadata, not machine identity -- confirm the change is deliberate in the report |
| `identity.status` | active | active | unchanged |  |
| `identity.title` | MII IG Medikation | MII IG Medikation | unchanged |  |

## Preflight flags

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `licence.contradictory` | true | true | unchanged |  |
| `dependency_health.injection_risk` | true | false | improved | the dependency-injection risk the source carried is cleared |
| `narrative_sources.dual_source` | false | true | **REGRESSION** | the migration introduced a SECOND narrative source tree -- two trees is how the wrong one gets edited |

## Artefact counts

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `mode` | static | static | unchanged |  |
| `artifacts.profiles` | 5 | 5 | unchanged |  |
| `artifacts.extensions` | 2 | 2 | unchanged |  |
| `artifacts.valuesets` | 5 | 5 | unchanged |  |
| `artifacts.codesystems` | 1 | 1 | unchanged |  |
| `artifacts.logicals` | 1 | 1 | unchanged |  |
| `artifacts.capabilitystatements` | 1 | 1 | unchanged |  |
| `artifacts.questionnaires` | 0 | 0 | unchanged |  |
| `artifacts.searchparameters` | 0 | 0 | unchanged |  |
| `artifacts.operations` | 0 | 0 | unchanged |  |
| `artifacts.examples` | 25 | 25 | unchanged |  |
| `artifacts.rulesets` | 28 | 57 | expected-change | the count rose by 29 -- artefacts added by the migration; the report names what and why |
| `artifacts.invariants` | 3 | 3 | unchanged |  |
| `artifacts.mappings` | 2 | 2 | unchanged |  |
| `artifacts.other_total` | 0 | 0 | unchanged |  |
| `artifacts.total` | 40 | 40 | unchanged |  |

## Narrative pages

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `narrative.pages` | 36 | 55 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |
| `narrative.intro_note_pages` | 0 | 6 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |
| `narrative.translation_pages` | 0 | 19 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |

## Directives

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `directives.total` | 316 | 316 | unchanged |  |

