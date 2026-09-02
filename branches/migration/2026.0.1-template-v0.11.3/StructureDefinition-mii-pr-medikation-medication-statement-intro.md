<!-- TODO:REVIEW machine translation of source page TechnischeImplementierung/FHIR-Profile/MedicationStatement.page.md (de) -->
### Content

The MedicationStatement documents the prescription of a medicinal product or its consumption by a patient. A MedicationStatement MAY indicate that the patient is currently taking a medication, has taken it in the past, or will take it in the future. This MAY cover both prescription-only medicines and over-the-counter preparations that a patient takes on their own responsibility.

The main difference between the concrete administration of a medication (MedicationAdministration) and the MedicationStatement is that the medication administration carries complete administration information and is based on the actual information of the person who administered the medication. By comparison, the MedicationStatement has more the character of, for example, a medication plan. It is not clear whether the patient actually took these medicinal products or whether they were administered.

The administered medication should be given either as a reference to a *Medication* resource, as a Pharmazentralnummer (PZN) or as an ATC code. Coding the medication via the Unique Ingredient Identifier (UNII) should only be considered for medications where neither a PZN nor an ATC code is available — for example investigational medicinal products, or certain preparations used in oncology or for rare diseases. Note that the UNII codes only an active ingredient, not a medication; combination products can therefore only be modelled via a *Medication*.

Dosage information should follow the [Dosage profile from the Medication IG DE](https://ig.fhir.de/igs/medication/StructureDefinition-DosageDE.html). Further guidance on documenting dosages is available in the [Medication IG DE (STU1)](https://ig.fhir.de/igs/medication/index.html).
