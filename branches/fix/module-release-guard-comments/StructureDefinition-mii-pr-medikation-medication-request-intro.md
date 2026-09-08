<!-- TODO:REVIEW machine translation of source page TechnischeImplementierung/FHIR-Profile/MedicationRequest.page.md (de) -->
### Content

The MedicationRequest resource describes an order for the supply of a medication, or the prescription and instructions for administering the medication to a patient.

The administered medication should be given either as a reference to a *Medication* resource, as a Pharmazentralnummer (PZN) or as an ATC code. Coding the medication via the Unique Ingredient Identifier (UNII) should only be considered for medications where neither a PZN nor an ATC code is available — for example investigational medicinal products, or certain preparations used in oncology or for rare diseases. Note that the UNII codes only an active ingredient, not a medication; combination products can therefore only be modelled via a *Medication*.

Dosage information should follow the [Dosage profile from the Medication IG DE](https://ig.fhir.de/igs/medication/StructureDefinition-DosageDE.html). Further guidance on documenting dosages is available in the [Medication IG DE (STU1)](https://ig.fhir.de/igs/medication/index.html).
