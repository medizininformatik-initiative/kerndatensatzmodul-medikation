# Page-structure advice

**This report PROPOSES and never edits a module.** It reads the source and target repositories read-only; its only writes are this report and the page-map v2 TSV (`--map`) - the map is the PRIMARY output and the contract step 5 consumes, this report is its rendering. Every routing row below is the branch the MEASUREMENTS support - a human (or the skill at step 5) decides and applies it.

| Input | Value |
| --- | --- |
| source repo | `/private/tmp/claude-501/-Users-thome-code-fhir-profiling-kerndatensatzmodul-medikation/d567792a-2162-4c46-95af-31eabb7323e3/scratchpad/src-unmigrated` |
| target repo | `.` |
| routing table | `/Users/thome/code/fhir-profiling/kerndatensatzmodul-medikation/.claude/skills/mii-ig-migration/references/routing-table.tsv` (17 patterns) |
| Gate 0 preflight | `/Users/thome/code/fhir-profiling/kerndatensatzmodul-medikation/migration-log/preflight-analysis.json` |
| artefact census | fsh-generated/resources (40 resources; cross-checked by Gate 0's generated_crosscheck) |
| page map | `migration-log/page-map.tsv` |
| generated | 2026-09-01T20:59:20Z |
| script | `page-structure-advice.py` v1.3.0 |

Contract limits in force: menu total <= 33, dropdown children <= 10, top level <= 8, menu depth <= 2; size gate at > 2500 words, > 4 merged sources, or ANY repeated heading title; hub at >= 3 children.

## 1. Source page tree

The tree is taken from the FIRST of four inputs that yields pages: **(a)** the `pages:` block of the source `sushi-config.yaml`, **(b)** the authoritative Simplifier guide tree under `implementation-guides/` (spec 5.1a), **(c)** a flat count of `input/pagecontent/*.md`.

**Input used: (b) the Simplifier guide tree `implementation-guides/mii-ig-medikation-v2025`, walked from its `toc.yaml`.**

### 1.0 Simplifier guide trees found

Every tree under `implementation-guides/` is listed - the choice is never made silently. Dispositions follow spec 5.1a: #1 authoritative, #2 parallel-language harvest seed, #3 historical/shared retained, #4 unrecognized.

| Guide tree | Title | Version (dir name) | Version (guide.yaml) | Lang | `*.page.md` on disk | Disposition |
| --- | --- | --- | --- | --- | ---: | --- |
| `ImplementationGuide-Common` | - | - | - | - | 0 | unrecognized directory - needs a retain/retire proposal (5.1a #4) |
| `mii-ig-medikation-de-v2024` | MII IG Medikation DE v2024 | 2024 | 2024.0.0 | DE | 20 | historical version tree - retain unchanged, Gate-D retirement set (5.1a #3) |
| `mii-ig-medikation-v2025` | MII IG Medikation v2026 | 2025 | 2026.0.1 | - | 20 | **AUTHORITATIVE** - steps 5.4/5.5 operate on this tree |

**Chosen: `mii-ig-medikation-v2025`** - HUMAN OVERRIDE: --guide-tree mii-ig-medikation-v2025 (the spec 5.1a ranking below was not applied).

The module's narrative language read from `sushi-config.yaml` `language:` is **not stated**.

**A human can override this choice**: re-run with `--guide-tree <directory name>`. The ranking above is evidence, not a verdict - confirm it against the rendered IG and record it in the inventory (Gate B reviews it).

### 1.1 Depth histogram

Walked from `implementation-guides/mii-ig-medikation-v2025/toc.yaml`: an entry whose `filename` ends in `.page.md` is a page, any other `filename` is a sub-directory holding its own `toc.yaml`. A sub-directory is a LEVEL, not a page, so every page of one directory shares one level (that is how Simplifier renders a folder), and the levels are shifted so the shallowest page sits at level 1 - this guide's root `toc.yaml` lists only a folder, which adds no page level. Routing still needs a page parent, so each directory is represented by its `Index.page.md` and its remaining pages plus its sub-folders' representatives become that page's children; a parent may therefore share its children's level.

| Level | Pages | Share |
| --- | ---: | ---: |
| 1 | 5 | 25% |
| 2 | 7 | 35% |
| 3 | 5 | 25% |
| 4 | 3 | 15% |
| **total** | **20** | 100% |

Maximum depth used: **4**. Total words across the 20 source pages: **7394**. Pages in `input/pagecontent/`: **0**.

### 1.2 Parent-child tree

```
`- Index  `MIIIGModulMedikation/Index.page.md`
   |- Release Notes  `MIIIGModulMedikation/Release-Notes.page.md`
   |- Beschreibung Modul  `MIIIGModulMedikation/BeschreibungModul.page.md`
   |- Kontext im Gesamtprojekt / Bezüge zu anderen Modulen  `MIIIGModulMedikation/KontextimGesamtprojektBezgezuanderenModulen.page.md`
   |- Referenzen  `MIIIGModulMedikation/Referenzen.page.md`
   |- Index  `MIIIGModulMedikation/AnwendungsflleInformationsmodell/Index.page.md`
   |  |- Beschreibung von Szenarien für die Anwendung der Module  `MIIIGModulMedikation/AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md`
   |  |- Datensätze inkl. Beschreibungen  `MIIIGModulMedikation/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md`
   |  `- UML  `MIIIGModulMedikation/AnwendungsflleInformationsmodell/UML.page.md`
   `- Index  `MIIIGModulMedikation/TechnischeImplementierung/Index.page.md`
      |- Terminologien  `MIIIGModulMedikation/TechnischeImplementierung/Terminologien.page.md`
      |- CapabilityStatement  `MIIIGModulMedikation/TechnischeImplementierung/CapabilityStatement.page.md`
      `- Index  `MIIIGModulMedikation/TechnischeImplementierung/FHIR-Profile/Index.page.md`
         |- MedicationAdministration  `MIIIGModulMedikation/TechnischeImplementierung/FHIR-Profile/MedicationAdministration.page.md`
         |- MedicationStatement  `MIIIGModulMedikation/TechnischeImplementierung/FHIR-Profile/MedicationStatement.page.md`
         |- MedicationRequest  `MIIIGModulMedikation/TechnischeImplementierung/FHIR-Profile/MedicationRequest.page.md`
         |- List  `MIIIGModulMedikation/TechnischeImplementierung/FHIR-Profile/List.page.md`
         `- Index  `MIIIGModulMedikation/TechnischeImplementierung/FHIR-Profile/Medication/Index.page.md`
            |- Extension: Wirkstofftyp  `MIIIGModulMedikation/TechnischeImplementierung/FHIR-Profile/Medication/Extension-Wirkstofftyp.page.md`
            `- Extension: Wirkstoffrelation  `MIIIGModulMedikation/TechnischeImplementierung/FHIR-Profile/Medication/Extension-Wirkstoffrelation.page.md`
```

## 2. Target page measurements

Words = whitespace tokens after removing HTML comments, table separator rows and the markup characters `>`, `|`, `*`, `_`, `` ` ``. Headings, list items, table cells and fenced code all count: the gate measures what the reader has to traverse. Repeated titles are compared case-sensitively; each repeat costs one publisher-appended anchor (`-2`, `-3`, ...). Merged sources are the distinct `<!-- source: X.md -->` section markers the migration itself left behind.

| Page | Words | h2 | h3 | h4 | other h | Repeated titles | Anchor collisions | Merged sources | Size gate |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | --- |
| `ImplementationGuide-mii-ig-{{MODULE_SLUG}}.md` | 286 | 0 | 5 | 0 | 0 | 0 | 0 | 0 | ok |
| `capability-statements.md` | 33 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `changes.md` | 564 | 0 | 1 | 1 | 1 | 0 | 0 | 0 | ok |
| `code-systems.md` | 150 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `downloads.md` | 327 | 0 | 0 | 7 | 0 | 0 | 0 | 0 | ok |
| `examples.md` | 45 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `extensions.md` | 123 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `guidance.md` | 132 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | ok |
| `implementer-guidance.md` | 34 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `index.md` | 479 | 0 | 9 | 0 | 0 | 0 | 0 | 0 | ok |
| `logical-models.md` | 35 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `metadata.md` | 2200 | 0 | 1 | 7 | 1 | 0 | 0 | 0 | ok |
| `operations.md` | 106 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `profiles.md` | 79 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `rendering-artifacts.md` | 3933 | 0 | 8 | 3 | 0 | 0 | 0 | 0 | **TRIPS** - 3933 words > 2500 |
| `researcher-guidance.md` | 113 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `search-parameters.md` | 114 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `security-and-privacy.md` | 444 | 0 | 0 | 3 | 0 | 0 | 0 | 0 | ok |
| `translationinfo.md` | 80 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `uml-diagrams.md` | 44 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `value-sets.md` | 180 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `version-history.md` | 550 | 0 | 0 | 6 | 0 | 0 | 0 | 0 | ok |

### 2.1 Pages that trip the size gate

- **`rendering-artifacts.md`** - 3933 words > 2500.
  - rule 5: re-run routing preferring branches 1 and 2, or split.

## 3. Menu budget

Clickable entries are the menu's real destinations: every `<li><a>` except the dropdown toggles, which only repeat their first child's href.

| Metric | Measured | Contract limit | Headroom |
| --- | ---: | ---: | ---: |
| total clickable entries | 26 | 33 | 7 |
| widest dropdown (Artifacts) | 11 | 10 | -1 |
| top-level entries | 7 | 8 | 1 |
| menu depth used | 2 | 2 | 0 |

| Dropdown | Children | Free (of 10) |
| --- | ---: | ---: |
| Guidance | 5 | 5 |
| Conformance | 5 | 5 |
| Artifacts | 11 | -1 |
| Metadata | 2 | 8 |

After the proposals in section 4: total 7 free, top level 1 free, freest dropdown Metadata (8 free).

## 4. Routing proposal (spec 9d/9e)

One row per source page. The branch number is the spec's; the measurement column is the number that forced it. Branch-4 rows state the presentation (4a) and the visibility (4b), and, where a menu entry fits, the remaining budget after it. `Words` is the source page's own size, counted the same way as the target pages in section 2.

| # | Source page | Lvl | Children | Words | Branch | Proposed destination | Measurement |
| ---: | --- | ---: | ---: | ---: | --- | --- | --- |
| 1 | `MIIIGModulMedikation/Index.page.md` | 1 | 6 | 325 | 3 merge into agreed page | index.md | agreed page named 'index' exists in the target |
| 2 | `MIIIGModulMedikation/Release-Notes.page.md` | 1 | 0 | 446 | 3 merge into agreed page | changes.md | semantic match 'releasenotes' -> changes (routing-table) |
| 3 | `MIIIGModulMedikation/BeschreibungModul.page.md` | 1 | 0 | 1098 | 3 merge into agreed page | index.md | semantic match 'beschreibungmodul' -> index (routing-table) |
| 4 | `MIIIGModulMedikation/KontextimGesamtprojektBezgezuanderenModulen.page.md` | 1 | 0 | 393 | 3 merge into agreed page | implementer-guidance.md | semantic match 'kontextimgesamtprojekt' -> implementer-guidance (routing-table) |
| 5 | `MIIIGModulMedikation/Referenzen.page.md` | 1 | 0 | 123 | 3 merge into agreed page | implementer-guidance.md | semantic match 'referenzen' -> implementer-guidance (routing-table) |
| 6 | `MIIIGModulMedikation/AnwendungsflleInformationsmodell/Index.page.md` | 2 | 3 | 13 | 4 own page | own page (HUB), pages:-NESTED under MIIIGModulMedikation/Index.page.md (its host has no menu entry) <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | no artefact anchor; no agreed page; 3 child page(s) |
| 7 | `MIIIGModulMedikation/AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md` | 2 | 0 | 122 | 3 merge into agreed page | guidance.md | semantic match 'szenarien' -> guidance (routing-table) |
| 8 | `MIIIGModulMedikation/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md` | 2 | 0 | 127 | 4 own page | own page (merged page), pages:-NESTED under MIIIGModulMedikation/AnwendungsflleInformationsmodell/Index.page.md (its host has no menu entry) | no artefact anchor; no agreed page; 0 child page(s) |
| 9 | `MIIIGModulMedikation/AnwendungsflleInformationsmodell/UML.page.md` | 2 | 0 | 88 | 3 merge into agreed page | uml-diagrams.md | semantic match 'uml' -> uml-diagrams (routing-table) |
| 10 | `MIIIGModulMedikation/TechnischeImplementierung/Index.page.md` | 2 | 3 | 12 | 4 own page | own page (HUB), pages:-NESTED under MIIIGModulMedikation/Index.page.md (its host has no menu entry) <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | no artefact anchor; no agreed page; 3 child page(s) |
| 11 | `MIIIGModulMedikation/TechnischeImplementierung/Terminologien.page.md` | 2 | 0 | 706 | 3 merge into agreed page | code-systems.md | semantic match 'terminologien' -> code-systems (routing-table) |
| 12 | `MIIIGModulMedikation/TechnischeImplementierung/CapabilityStatement.page.md` | 2 | 0 | 86 | 3 merge into agreed page | capability-statements.md | semantic match 'capabilitystatement' -> capability-statements (routing-table) |
| 13 | `MIIIGModulMedikation/TechnischeImplementierung/FHIR-Profile/Index.page.md` | 3 | 5 | 188 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 5 children, 4 anchoring distinct artefacts (StructureDefinition) |
| 14 | `MIIIGModulMedikation/TechnischeImplementierung/FHIR-Profile/MedicationAdministration.page.md` | 3 | 0 | 671 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-medikation-medication-administration-intro.md | compact match on mii-pr-medikation-medication-administration (1 candidate artefact) |
| 15 | `MIIIGModulMedikation/TechnischeImplementierung/FHIR-Profile/MedicationStatement.page.md` | 3 | 0 | 1082 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-medikation-medication-statement-intro.md | compact match on mii-pr-medikation-medication-statement (1 candidate artefact) |
| 16 | `MIIIGModulMedikation/TechnischeImplementierung/FHIR-Profile/MedicationRequest.page.md` | 3 | 0 | 480 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-medikation-medication-request-intro.md | compact match on mii-pr-medikation-medication-request (1 candidate artefact) |
| 17 | `MIIIGModulMedikation/TechnischeImplementierung/FHIR-Profile/List.page.md` | 3 | 0 | 521 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-medikation-medikationsliste-intro.md | compact match on mii-pr-medikation-medikationsliste (1 candidate artefact) |
| 18 | `MIIIGModulMedikation/TechnischeImplementierung/FHIR-Profile/Medication/Index.page.md` | 4 | 2 | 548 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 2 children, 2 anchoring distinct artefacts (StructureDefinition) |
| 19 | `MIIIGModulMedikation/TechnischeImplementierung/FHIR-Profile/Medication/Extension-Wirkstofftyp.page.md` | 4 | 0 | 195 | 1 intro-note | input/intro-notes/StructureDefinition-mii-ex-medikation-wirkstofftyp-intro.md | tokens match on mii-ex-medikation-wirkstofftyp (3 candidate artefacts) |
| 20 | `MIIIGModulMedikation/TechnischeImplementierung/FHIR-Profile/Medication/Extension-Wirkstoffrelation.page.md` | 4 | 0 | 170 | 1 intro-note | input/intro-notes/StructureDefinition-mii-ex-medikation-wirkstoffrelation-intro.md | tokens match on mii-ex-medikation-wirkstoffrelation (1 candidate artefact) |

Branch totals: 1 intro-note = 6, 2 section on index page = 2, 3 merge into agreed page = 9, 4 own page = 3.

## 5. Report queue 1 items

The menu budget forced a ToC-nesting where a menu entry was otherwise warranted. Allocation below is first-come-first-served in source document order; the human may spend the budget differently.

- MIIIGModulMedikation/AnwendungsflleInformationsmodell/Index.page.md - nested under MIIIGModulMedikation/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulMedikation/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md - nested under MIIIGModulMedikation/AnwendungsflleInformationsmodell/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulMedikation/TechnischeImplementierung/Index.page.md - nested under MIIIGModulMedikation/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.

Size-gate trips (rule 5) needing a routing re-run or a split:

- `rendering-artifacts.md` - 3933 words > 2500.

## 6. Suggested `5.4c page-routing` run-log lines

One per source page (union pages included), ready for the migration run log. The `5.4c page-routing` step IS the advice run that GENERATES the page map (`--map`) - the map is machine-written, never hand-written; these lines are only its run-log form.

```
5.4c page-routing	MIIIGModulMedikation/Index.page.md	branch=3	index.md	agreed page named 'index' exists in the target
5.4c page-routing	MIIIGModulMedikation/Release-Notes.page.md	branch=3	changes.md	semantic match 'releasenotes' -> changes (routing-table)
5.4c page-routing	MIIIGModulMedikation/BeschreibungModul.page.md	branch=3	index.md	semantic match 'beschreibungmodul' -> index (routing-table)
5.4c page-routing	MIIIGModulMedikation/KontextimGesamtprojektBezgezuanderenModulen.page.md	branch=3	implementer-guidance.md	semantic match 'kontextimgesamtprojekt' -> implementer-guidance (routing-table)
5.4c page-routing	MIIIGModulMedikation/Referenzen.page.md	branch=3	implementer-guidance.md	semantic match 'referenzen' -> implementer-guidance (routing-table)
5.4c page-routing	MIIIGModulMedikation/AnwendungsflleInformationsmodell/Index.page.md	branch=4	own page (HUB), pages:-NESTED under MIIIGModulMedikation/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 3 child page(s)
5.4c page-routing	MIIIGModulMedikation/AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md	branch=3	guidance.md	semantic match 'szenarien' -> guidance (routing-table)
5.4c page-routing	MIIIGModulMedikation/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md	branch=4	own page (merged page), pages:-NESTED under MIIIGModulMedikation/AnwendungsflleInformationsmodell/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulMedikation/AnwendungsflleInformationsmodell/UML.page.md	branch=3	uml-diagrams.md	semantic match 'uml' -> uml-diagrams (routing-table)
5.4c page-routing	MIIIGModulMedikation/TechnischeImplementierung/Index.page.md	branch=4	own page (HUB), pages:-NESTED under MIIIGModulMedikation/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 3 child page(s)
5.4c page-routing	MIIIGModulMedikation/TechnischeImplementierung/Terminologien.page.md	branch=3	code-systems.md	semantic match 'terminologien' -> code-systems (routing-table)
5.4c page-routing	MIIIGModulMedikation/TechnischeImplementierung/CapabilityStatement.page.md	branch=3	capability-statements.md	semantic match 'capabilitystatement' -> capability-statements (routing-table)
5.4c page-routing	MIIIGModulMedikation/TechnischeImplementierung/FHIR-Profile/Index.page.md	branch=2	h3/h4 section on profiles.md	5 children, 4 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulMedikation/TechnischeImplementierung/FHIR-Profile/MedicationAdministration.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-medikation-medication-administration-intro.md	compact match on mii-pr-medikation-medication-administration (1 candidate artefact)
5.4c page-routing	MIIIGModulMedikation/TechnischeImplementierung/FHIR-Profile/MedicationStatement.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-medikation-medication-statement-intro.md	compact match on mii-pr-medikation-medication-statement (1 candidate artefact)
5.4c page-routing	MIIIGModulMedikation/TechnischeImplementierung/FHIR-Profile/MedicationRequest.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-medikation-medication-request-intro.md	compact match on mii-pr-medikation-medication-request (1 candidate artefact)
5.4c page-routing	MIIIGModulMedikation/TechnischeImplementierung/FHIR-Profile/List.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-medikation-medikationsliste-intro.md	compact match on mii-pr-medikation-medikationsliste (1 candidate artefact)
5.4c page-routing	MIIIGModulMedikation/TechnischeImplementierung/FHIR-Profile/Medication/Index.page.md	branch=2	h3/h4 section on profiles.md	2 children, 2 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulMedikation/TechnischeImplementierung/FHIR-Profile/Medication/Extension-Wirkstofftyp.page.md	branch=1	input/intro-notes/StructureDefinition-mii-ex-medikation-wirkstofftyp-intro.md	tokens match on mii-ex-medikation-wirkstofftyp (3 candidate artefacts)
5.4c page-routing	MIIIGModulMedikation/TechnischeImplementierung/FHIR-Profile/Medication/Extension-Wirkstoffrelation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-ex-medikation-wirkstoffrelation-intro.md	tokens match on mii-ex-medikation-wirkstoffrelation (1 candidate artefact)
5.4c page-routing	map rows=22 retired=2 coverage=ok	map=migration-log/page-map.tsv
```

## 7. Page map (v2) and coverage

The page map is the CONTRACT of the narrative migration: this run generates and validates it, step 5 consumes ONLY it, step 8 checks against it. Columns: `source_page`, `target` (repo-relative path or `RETIRED`), `reason`, `branch` (spec 9e 1-4; 5 = RETIRED), `measure`. One row per page of the source page universe - the authoritative guide tree UNION `input/pagecontent` UNION on-disk pages no toc lists.

Rows: **22** total - 20 routed source pages (20 from the primary tree, 0 union pages outside it) and 2 RETIRED guide-tree summary row(s).

### 7.2 RETIRED guide trees

| Tree | Reason |
| --- | --- |
| `ImplementationGuide-Common/**` | unrecognized directory - needs a retain/retire proposal (5.1a #4) |
| `mii-ig-medikation-de-v2024/**` | historical version tree - retain unchanged, Gate-D retirement set (5.1a #3) |

### 7.3 Coverage validation

Universe re-derived from disk: **20** page(s). Every one needs a row with a non-empty target; every RETIRED row needs a reason. The exit code reports the result (0 covered, 1 not).

**Covered.** All 20 universe pages have a target row; every RETIRED row carries a reason.

## 8. M9 optional-page / other-bucket proposal (Gate 0 census)

Counts: generated_crosscheck.counts (fsh-generated/resources). Rule (spec 9a): count 0 -> REMOVE the optional page, count > 0 -> KEEP and fill it; artefacts are never deleted to force a removal. Each proposal is a `5.4a` run-log line and a HUMAN decision - this table only measures.

| Optional page | Census key | Count | Proposal |
| --- | --- | ---: | --- |
| `extensions.md` | `extensions` | 2 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `search-parameters.md` | `searchparameters` | 0 | **REMOVE** per the template's docs/optional-pages.md procedure |
| `operations.md` | `operations` | 0 | **REMOVE** per the template's docs/optional-pages.md procedure |
| `value-sets.md` | `valuesets` | 5 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `code-systems.md` | `codesystems` | 1 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `researcher-guidance.md` | - | - | no artefact count decides it - source narrative does (human decision) |
| `metadata.md` | - | - | no artefact count decides it - source narrative does (human decision) |

_The census reports no `other`-bucket artefact types._

