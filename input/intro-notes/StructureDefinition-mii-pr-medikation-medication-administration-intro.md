<!-- TODO:REVIEW machine translation of source page TechnischeImplementierung/FHIR-Profile/MedicationAdministration.page.md (de) -->
### Content

The MedicationAdministration resource is used to record the administration of medication, including self-administration of oral medication, injections, intravenous administration and so on.

The administered medication should be given either as a reference to a *Medication* resource, as a Pharmazentralnummer (PZN) or as an ATC code. Coding the medication via the Unique Ingredient Identifier (UNII) should only be considered for medications where neither a PZN nor an ATC code is available — for example investigational medicinal products, or certain preparations used in oncology or for rare diseases. Note that the UNII codes only an active ingredient, not a medication; combination products can therefore only be modelled via a *Medication*.

### Dose unit

Since version 2027.0.0, `MedicationAdministration.dosage.dose` is bound (*required*) to the ValueSet [DosageDoseQuantityDE](https://ig.fhir.de/igs/medication/ValueSet-DosageDoseQuantityDE.html) from the Medication IG DE (`de.fhir.medication` 1.0.7): UCUM units, the dosage units of the BMP (KBV) and EDQM units of presentation. MedicationRequest and MedicationStatement already use this binding through the [DosageDE profile](https://ig.fhir.de/igs/medication/StructureDefinition-DosageDE.html); an administration is now coded in the same units as the order or statement it relates to. `DosageDE` itself cannot be used here, because `MedicationAdministration.dosage` is a separate backbone element in FHIR R4, not a `Dosage`. Doses in units outside this ValueSet are no longer valid. Profiles derived from this one (e.g. in the modules Bildgebung and Lungenfunktion) inherit the binding.
