<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW machine translation of source page Release-Notes.page.md (de) -->

### Release notes

**Version 2027.0.0** — unreleased

<!-- From 2027.0.0 on, every bullet starts with a link to the affected artifact(s). -->

Changes from the ballot reconciliation of 2027.0.0-ballot:

* `Changed`: [MII PR Medikation Medication](StructureDefinition-mii-pr-medikation-medication.html) — `Medication.ingredient` is optional (`1..*` → `0..*`), so a finished
  medicinal product coded only by PZN or ATC conforms without a placeholder ingredient.
  The new invariant `mii-med-1` requires a `code` or at least one `ingredient`
  ([HDB-980](https://hl7germany.atlassian.net/browse/HDB-980),
  [HDB-1038](https://hl7germany.atlassian.net/browse/HDB-1038)).
* `Changed`: [MII PR Medikation MedicationRequest](StructureDefinition-mii-pr-medikation-medication-request.html) — `MedicationRequest.doNotPerform` is allowed and Must Support
  (`0..0` → `0..1`), as in ISiK stage 6, so ISiK requests carrying it conform
  ([HDB-984](https://hl7germany.atlassian.net/browse/HDB-984)).
* `Changed`: [MII PR Medikation Medication](StructureDefinition-mii-pr-medikation-medication.html) — `Medication.status` is Must Support, with guidance that `inactive`
  and `entered-in-error` must be evaluated. Unlike ISiK stage 6 it stays optional (`0..1`)
  ([HDB-982](https://hl7germany.atlassian.net/browse/HDB-982)).
* `Changed`: [MII PR Medikation MedicationAdministration](StructureDefinition-mii-pr-medikation-medication-administration.html) — **breaking:** `MedicationAdministration.dosage.dose` is bound
  (*required*) to `DosageDoseQuantityDE`, the binding MedicationRequest and
  MedicationStatement already use via `DosageDE`. Doses in other units become invalid
  ([HDB-967](https://hl7germany.atlassian.net/browse/HDB-967)).
* `Deprecated`: [MII PR Medikation Medication](StructureDefinition-mii-pr-medikation-medication.html), [MII EX Medikation Wirkstofftyp](StructureDefinition-mii-ex-medikation-wirkstofftyp.html) — the ingredient type uses the Basisprofil DE extension
  `WirkstofftypEX` (codes from `WirkstofftypCS`), as ISiK does. The MII extension, value set and
  code system stay in the guide, are deprecated and will be retired in a later release; the
  invariant `mii-med-2` warns when the MII extension is used. The new ConceptMap
  [MII CM Medikation Wirkstofftyp](ConceptMap-mii-cm-medikation-wirkstofftyp.html) maps the MII codes to `WirkstofftypCS`. Examples updated
  ([HDB-983](https://hl7germany.atlassian.net/browse/HDB-983)).
* `Added`: [MII PR Medikation MedicationAdministration](StructureDefinition-mii-pr-medikation-medication-administration.html) — guidance that `effective[x]` SHOULD be given to the second, as best
  practice following ISiK stage 6; coarser values stay valid. MedicationStatement is unchanged
  ([HDB-985](https://hl7germany.atlassian.net/browse/HDB-985)).
* `Added`: [MII PR Medikation MedicationStatement](StructureDefinition-mii-pr-medikation-medication-statement.html), [MII PR Medikation MedicationAdministration](StructureDefinition-mii-pr-medikation-medication-administration.html) — best practice from ISiK stage 6 for pausing a medication: several
  resources instead of overwriting one. The status of the first resource after a
  continuation is an open question with one current implementation described; input welcome
  ([HDB-979](https://hl7germany.atlassian.net/browse/HDB-979)).
* `Changed`: [MII PR Medikation MedicationRequest](StructureDefinition-mii-pr-medikation-medication-request.html), [MII PR Medikation MedicationStatement](StructureDefinition-mii-pr-medikation-medication-statement.html), [MII PR Medikation MedicationAdministration](StructureDefinition-mii-pr-medikation-medication-administration.html) — combination packages: orders, statements and administrations MUST
  reference the component (sub-`Medication`), not only the package. A PZN order of a package is
  represented by a package request plus one request per component (`basedOn`); see the home page
  ([HDB-986](https://hl7germany.atlassian.net/browse/HDB-986)).

**Version 2027.0.0-ballot** — 2026-09-11

* `Added`: every conformance artefact now carries CRMI metadata — the shareable /
  publishable / computable profile claims, knowledge capabilities, version policy,
  package source, approval date, effective period, artefact topic and contributors.
  The rulesets had been present since the template migration but were never applied.
* `Fixed`: `dosage.site` bound to `target-site-uv-ips`, which IPS removed in 2.0.
  It now binds `body-site-uv-ips` — content-identical (SNOMED CT descendants of
  442083009).
* `Changed`: `artifact-author` is the module's author again; the editorial upkeep of
  this module is recorded as a second `artifact-editor`.

*This is the ballot version. `2027.0.0-ballot.rc1` … `rc5` carry git tags; rc1 and rc2
were never released (release-tooling defects), rc3 and rc4 predate the corrections
above, and rc5 was the first formally published candidate.*

* `Fixed`: publication metadata. `ci-build` pointed at `branches/dev/` — a branch this
  repository does not have; its default branch is `master`. `status` said `release` although
  the version is a ballot candidate, and `sequence` said `2026` on a 2027 version. The
  `releaseLabel` is now `Release` rather than `ci-build`, so the published rendering no
  longer presents itself as a continuous build.
* `Fixed`: 19 unresolvable references in the example instances. Two targets existed under
  different ids after an earlier consolidation; `Patient` and `Encounter` had never existed
  in this module and are now supplied as minimal context instances.
* `Fixed`: the twelve artefacts whose canonical does not end in their id are now declared
  via the `special-url` IG parameter — the mechanism the IG Publisher provides for exactly
  this case. The canonicals themselves are unchanged, as they have been published since
  2026.0.1.
* `Fixed`: the International Patient Summary link pointed at STU1; this module depends on
  IPS 2.0.0, which is STU2.

*The IG Publisher QA report goes from 60 errors to 1. The remaining one,
`IG_DEPENDENCY_DIRECT`, is not fixable from here: `de.ihe-d.terminology` declares a
canonical without an `/ImplementationGuide/` segment and ships no such resource.*

*Earlier release candidates of this sequence carry git tags but were not published:
rc1 and rc2 failed in the release tooling, rc3 predates the corrections above.*

* `Changed`: the implementation guide was migrated from Simplifier onto the MII KDS module template (IG Publisher). Content and artifact URLs are unchanged; the page structure now follows the module-wide page set, and the guide is bilingual.
* `Changed`: the ATC value set now also includes version 2026 (previously 2018 to 2025).
* `Fixed`: the `raterange` search parameter in the CapabilityStatement pointed at a canonical under the module that never existed as an artifact; it now points at `mii-sp-meta-medication-dosage-raterange` of the Meta module, consistent with `raterange-low` and `raterange-high`.
* `Added`: guidance for researchers on the modelling patterns (ingredient vs medicinal product, nested medication resources, order vs administration).

**Version 2026.0.1** — 2026-02-13

* `Changed`: ASK value set — removed the specific version pin in `ValueSet.compose.include.version` so that it expands automatically against the current code system version on the terminology server.

**Version 2026.0.0** — 2025-12-18

* `Added`: dependency on `de.fhir.medication` added, version [STU1](https://ig.fhir.de/igs/medication/index.html).
* `Added`: `MedicationStatement.dosage` and `MedicationRequest.dosageInstruction` use the [Dosage profile](https://ig.fhir.de/igs/medication/StructureDefinition-DosageDE.html) from `de.fhir.medication` for dosage information.
* `Fixed`: dosage information in the example instances conforms to `de.fhir.medication` [STU1](https://ig.fhir.de/igs/medication/index.html).

**Version 2025.0.1** — 2025-11-06

* `Added`: `(MedicationAdministration|MedicationStatement|MedicationRequest).medicationCodeableConcept` carries a reference to UNII (see [PR #106](https://github.com/medizininformatik-initiative/kerndatensatzmodul-medikation/pull/106)).
* `Added`: new value sets and bindings for ATC (`.../ValueSet/mii-vs-medikation-atc`), ASK (`.../ValueSet/mii-vs-medikation-ask`) and UNII (`.../ValueSet/mii-vs-medikation-unii`), which can be expanded with the [MII terminology server](https://www.ontoserver.mii-termserv.de/) and thus allow extended validation.
* `Changed`: example resources follow the best-practice approach for dose and amount/strength information, stating a `Quantity` preferably using UCUM. UCUM annotations in curly braces should be avoided; alternatively, other unit systems can be given via the Quantity Translation extension.

<!-- TODO:REVIEW The complete release history of earlier versions is in the source page Release-Notes.page.md of the Simplifier guide and should be added here. -->
