# Guidance for Implementers - MII IG Medikation v2026.0.1

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **Guidance for Implementers**

## Guidance for Implementers

### Context within the overall project / relations to other modules

Prescribing and dispensing medication are core processes of routine care and take place at every MII site. The share of digitally documented prescriptions differs considerably between sites, however, with respect to the degree of structuring, the populations covered and the medications involved. No comprehensive overview of the availability of structured medication data at the consortium sites currently exists. The graduated provision proposed here — depending on the data actually available — accounts for that. Documenting medication plans is required by law and should be available at all sites, although here too the share of structured documentation varies widely.

Medication data are central to a wide range of research questions, for example in pharmacovigilance (drug therapy safety) or as inclusion and exclusion criteria for study cohorts. They appear in the audit queries compiled by the [Data Sharing Working Group](https://www.medizininformatik-initiative.de/index.php/de/zusammenarbeit/arbeitsgruppe-data-sharing), for instance in the proposals of the [SMITH consortium](https://www.medizininformatik-initiative.de/de/konsortien/smith). The MEDICATION module is also required for the cross-consortium use case POLAR — polypharmacy.

#### Relation to the Person module

Medication data are assigned to a patient through references from the MEDICATION module to the [PERSON](https://simplifier.net/medizininformatikinitiative-modulperson) module.

#### Relation to the Encounter module

Medication data are assigned to an encounter through references from the MEDICATION module to the [ENCOUNTER](https://simplifier.net/medizininformatikinitiative-modulfall) module. Whenever available, a reference to the encounter should be carried along to preserve the case context of the medication.

* Statements and lists in the sense of admission and discharge medication ⇒ institutional contact
* Request ⇒ departmental units, preferably also care units
* Administration ⇒ care units

#### Relation to the Procedure module

Taking, administering or ordering a medication may relate to a procedure that was carried out — for example the administration of a contrast agent before radiological diagnostics. In this context the MEDICATION module specifies, among other things, the medication as well as dose and time of administration. The [PROCEDURE](https://simplifier.net/medizininformatikinitiative-modulprozeduren) module is used for the procedure details. The data structures of this module make it possible to express the relation to the procedure through references from MEDICATION to PROCEDURE.

The relation between the two modules is also relevant for use cases involving the German procedure classification (OPS). For billing purposes, hospitals record selected expensive medications per encounter using chapter 6 of the OPS catalogue. In that case the clinical documentation of drug therapy can be linked to the procedure classification according to OPS.

#### Relation to the Condition module

The MEDICATION module contains links to the [CONDITION](https://simplifier.net/medizininformatikinitiative-moduldiagnosen) module which make it possible to record the underlying disease as the cause and reason for a drug therapy.

### References

When creating the dataset for documenting medication, specifications were taken into account that were produced for the [KBV patient-related medication plan V2.6](https://www.kbv.de/media/sp/Medikationsplan_Anlage3.pdf) and [Medikationsplan PLUS](https://simplifier.net/medikationsplanplus), and for the [International Patient Summary](http://international-patient-summary.net/).

For medication terminologies (medicinal products, substances and so on) the ISO standards for the [Identification of Medicinal Products (IDMP)](https://www.ema.europa.eu/en/human-regulatory/overview/data-medicines-iso-idmp-standards-overview) are to be taken into account.

The Medikationsplan PLUS specification was used to model the dataset and the FHIR profiles; conformance of this specification with the medication plan cannot, however, be established. The main reason is that Medikationsplan PLUS is based on FHIR version STU3, whereas the Medical Informatics Initiative works with FHIR R4. Some elements in the data structure of the FHIR resources differ fundamentally between the versions — for example how a strength is stated within a `Medication` resource.

