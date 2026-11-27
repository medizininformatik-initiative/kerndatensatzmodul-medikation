<!-- TODO:REVIEW machine translation of source page TechnischeImplementierung/FHIR-Profile/MedicationAdministration.page.md (de) -->
### Content

The MedicationAdministration resource is used to record the administration of medication, including self-administration of oral medication, injections, intravenous administration and so on.

The administered medication should be given either as a reference to a *Medication* resource, as a Pharmazentralnummer (PZN) or as an ATC code. Coding the medication via the Unique Ingredient Identifier (UNII) should only be considered for medications where neither a PZN nor an ATC code is available — for example investigational medicinal products, or certain preparations used in oncology or for rare diseases. Note that the UNII codes only an active ingredient, not a medication; combination products can therefore only be modelled via a *Medication*.
