# Ballot Reconciliation 2027.0.0-ballot - MII IG Medikation v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* **Ballot Reconciliation 2027.0.0-ballot**

## Ballot Reconciliation 2027.0.0-ballot

This page is a **working document** for the reconciliation of the ballot comments on version `2027.0.0-ballot` of the MII Kerndatensatz Modul Medikation. It lists the tickets from the HL7 Germany ballot ([Jira query](https://hl7germany.atlassian.net/issues/?jql=project%20%3D%20HDB%20AND%20created%20%3E%3D%20-200d%20AND%20statusCategory%20%21%3D%20Done%20AND%20%22Project%5BDropdown%5D%22%20in%20%28%22MII%20-%20Modul%20Medikation%22%29%20ORDER%20BY%20created%20DESC)), grouped by category, with the **decision** taken in the reconciliation and how it is implemented for `2027.0.0`. The changes are made on the branch `change/ballot-2027-reconciliation`, one commit per ticket, and are listed in the release notes of `2027.0.0`. This page is temporary and will be removed before the `2027.0.0` release.

#### Legend

| | |
| :--- | :--- |
| **Accepted** | Implemented as proposed. |
| **Accepted with modification** | Implemented, with changes to the proposal agreed in the reconciliation. |
| **Accepted (docs)** | Documentation or guidance only, no change to the artefacts' constraints. |
| **Accepted – deferred** | Agreed, but cannot be implemented yet; tracked in the backlog. |

**Breaking** = **yes** if implementations conforming to the previous release (`2026.0.x`) no longer conform after the change.

-------

### A. Profile changes

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [HDB-980](https://hl7germany.atlassian.net/browse/HDB-980) | Medication ingredient – Vorschlag zur Kardinalität | `Medication.ingredient`relaxed from`1..*`to`0..*`. New invariant`mii-med-1`(error):`code.exists() or ingredient.exists()`, as`isik-med-1`in ISiK stage 6. The active ingredient SHOULD still be given. Explained on the Medication profile page with reference to ISiK 6. | Accepted | no (relaxation) |
| [HDB-1038](https://hl7germany.atlassian.net/browse/HDB-1038) | Medication.ingredient von 1..* auf 0..* aufweichen | Resolved together with HDB-980. The workaround of an`ingredient`carrying only a`data-absent-reason`extension is no longer needed. | Accepted | no |
| [HDB-984](https://hl7germany.atlassian.net/browse/HDB-984) | MedicationRequest doNotPerform nicht verbieten | ISiK stage 6 variant adopted:`MedicationRequest.doNotPerform``0..1`, Must Support,**any value**(the proposal had allowed only`false`). The element comment and the profile page state that`true`marks an order not to give the medication and must be evaluated by receivers. | Accepted with modification | no (relaxation) |
| [HDB-982](https://hl7germany.atlassian.net/browse/HDB-982) | MII PR Medikation Medication – status nicht definiert | `Medication.status`Must Support, with guidance that`inactive`and`entered-in-error`must be evaluated. It stays**optional (`0..1`)**; the deviation from ISiK stage 6 (`1..1`) is documented on the profile page, so that existing MII data without`status`stays valid. | Accepted | no (Must Support only) |
| [HDB-967](https://hl7germany.atlassian.net/browse/HDB-967) | MedicationAdministration.dosage.dose ist Pflichtfeld ohne Wertevorrat | `MedicationAdministration.dosage.dose`bound (**required**) to`http://ig.fhir.de/igs/medication/ValueSet/DosageDoseQuantityDE`, the binding`DosageDE`applies in MedicationRequest and MedicationStatement. Explained on the profile page. | Accepted | **yes**(units outside the ValueSet become invalid) |

### B. Terminology

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [HDB-981](https://hl7germany.atlassian.net/browse/HDB-981) | ValueSet mii-vs-medikation-atc – fehlendes 2027er Release | ATC-DE 2027 will be added to`mii-vs-medikation-atc`(explicit`\|2027`include, description and copyright updated). BfArM has not released ATC-DE 2027 yet, so the change is tracked in the backlog. A version-independent include remains rejected. | Accepted – deferred | no |
| [HDB-983](https://hl7germany.atlassian.net/browse/HDB-983) | Extension wirkstofftyp, CodeSystem wirkstofftyp aus deutschen Basisprofilen nutzen | The slice`Medication.ingredient.extension:Wirkstofftyp`now uses`http://fhir.de/StructureDefinition/WirkstofftypEX`(`de.basisprofil.r4`1.6.0), as ISiK does; the MII extension is removed from the profile. The MII extension, ValueSet and CodeSystem stay in the guide, are marked**deprecated**on their pages (the Basisprofil extension grew out of the MII extension and is used by ISiK) and will be retired in a later release. New warning invariant`mii-med-2`flags use of the MII extension and advises replacing it. New ConceptMap`mii-cm-medikation-wirkstofftyp`maps the MII codes to`WirkstofftypCS`. Examples updated. A StructureMap (FML) for converting data is tracked in the backlog. | Accepted with modification | no (MII extension still accepted, with a warning) |

### C. Discussed

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [HDB-985](https://hl7germany.atlassian.net/browse/HDB-985) | MedicationAdministration effective[x] | ISiK states the second precision in prose, not as an invariant. MedicationAdministration:`effective[x]`SHOULD be given to the second, as best practice with reference to ISiK stage 6 (element comment and profile page); coarser values such as date-only data from retrospective sources stay valid. MedicationStatement stays unchanged, because there are use cases for coarser periods. | Accepted (docs) | no |

### D. Documentation

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [HDB-979](https://hl7germany.atlassian.net/browse/HDB-979) | Hinweis zur Pausierung einer Medikation aus ISiK übernehmen | ISiK best practice adopted on the MedicationStatement and MedicationAdministration profile pages: a pause SHOULD be represented with several resources instead of overwriting one. Added as an**open question, input welcome**: ISiK does not say which`status`the first resource carries. During the pause it is`on-hold`or`stopped`; one current implementation sets it back to`active`(MedicationAdministration:`in-progress`) once the continuation is documented, with`effectivePeriod`closed. | Accepted (docs) | no |

### E. Questions

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [HDB-986](https://hl7germany.atlassian.net/browse/HDB-986) | Frage zur Verschreibung von Kombipackungen (Beschreibung auf der Startseite) | Guidance extended beyond the planned reply: MedicationRequest, MedicationStatement and MedicationAdministration MUST reference the component (sub-`Medication`), not only the "upper" combination-package`Medication`. A PZN order of a package is represented by a package request plus one request per component stating how it is taken, linked via`basedOn`. Hospital information systems rarely order combination packages by PZN; the component is usually the subject. Home page and researcher guidance updated. | Accepted (docs) | no |

### Follow-ups

* ATC-DE 2027 in `mii-vs-medikation-atc` once BfArM releases it (HDB-981).
* StructureMap (FML) converting the MII Wirkstofftyp extension to `WirkstofftypEX` (HDB-983).
* Retire the MII Wirkstofftyp extension, ValueSet and CodeSystem in a later release (HDB-983).
* Collect feedback on the status of the first resource after a paused medication is continued (HDB-979).

