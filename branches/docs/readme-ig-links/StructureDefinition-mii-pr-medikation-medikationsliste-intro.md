<!-- TODO:REVIEW machine translation of source page TechnischeImplementierung/FHIR-Profile/List.page.md (de) -->
### Content

The List resource is a flat collection of resources and offers functions for managing that collection. Here the resource serves as a collection of the medications a patient is taking at a particular point in time — on admission or at discharge, for example. To that end it references MedicationStatement resources.

The purpose and context of the list are stated via `List.code`. One coding is always set to the code `medications` from the system `http://terminology.hl7.org/CodeSystem/list-example-use-codes`. The second coding determines the context in which the medication list is maintained: admission medication, discharge medication, or medication during the inpatient stay. For these contexts the codes come from the IHE XDS Fallkontext system (`http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung`); the permitted codes are listed in the value set [MII VS Medikation Fallkontext](ValueSet-mii-vs-medikation-fallkontext.html).
