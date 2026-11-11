<!-- TODO:REVIEW machine translation of source page TechnischeImplementierung/FHIR-Profile/MedicationRequest.page.md (de) -->
### Content

The MedicationRequest resource describes an order for the supply of a medication, or the prescription and instructions for administering the medication to a patient.

The administered medication should be given either as a reference to a *Medication* resource, as a Pharmazentralnummer (PZN) or as an ATC code. Coding the medication via the Unique Ingredient Identifier (UNII) should only be considered for medications where neither a PZN nor an ATC code is available — for example investigational medicinal products, or certain preparations used in oncology or for rare diseases. Note that the UNII codes only an active ingredient, not a medication; combination products can therefore only be modelled via a *Medication*.

Dosage information should follow the [Dosage profile from the Medication IG DE](https://ig.fhir.de/igs/medication/StructureDefinition-DosageDE.html). Further guidance on documenting dosages is available in the [Medication IG DE (STU1)](https://ig.fhir.de/igs/medication/index.html).

### Do not perform

Since version 2027.0.0, `MedicationRequest.doNotPerform` is allowed (`0..1`, Must Support; previously `0..0`). This adopts the [ISiK MedikationsVerordnung profile of ISiK stage 6 (6.0.0)](https://gematik.github.io/spec-ISiK-Basismodul/main-stufe-6/ISiK-Medikation/en/StructureDefinition-ISiKMedikationsVerordnung.html), which flags the element as Must Support because it is a modifier element in the core specification and because the e-prescription and ePA profiles do not prohibit it. Requests from ISiK 6 systems that carry `doNotPerform` therefore conform to this profile. `doNotPerform` is a modifier: a value of `true` turns the request into an order NOT to give the medication, so receiving systems MUST evaluate it.
