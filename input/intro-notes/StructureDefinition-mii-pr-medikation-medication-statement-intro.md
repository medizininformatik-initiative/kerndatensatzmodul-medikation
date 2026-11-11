<!-- TODO:REVIEW machine translation of source page TechnischeImplementierung/FHIR-Profile/MedicationStatement.page.md (de) -->
### Content

The MedicationStatement documents the prescription of a medicinal product or its consumption by a patient. A MedicationStatement MAY indicate that the patient is currently taking a medication, has taken it in the past, or will take it in the future. This MAY cover both prescription-only medicines and over-the-counter preparations that a patient takes on their own responsibility.

The main difference between the concrete administration of a medication (MedicationAdministration) and the MedicationStatement is that the medication administration carries complete administration information and is based on the actual information of the person who administered the medication. By comparison, the MedicationStatement has more the character of, for example, a medication plan. It is not clear whether the patient actually took these medicinal products or whether they were administered.

The administered medication should be given either as a reference to a *Medication* resource, as a Pharmazentralnummer (PZN) or as an ATC code. Coding the medication via the Unique Ingredient Identifier (UNII) should only be considered for medications where neither a PZN nor an ATC code is available — for example investigational medicinal products, or certain preparations used in oncology or for rare diseases. Note that the UNII codes only an active ingredient, not a medication; combination products can therefore only be modelled via a *Medication*.

Dosage information should follow the [Dosage profile from the Medication IG DE](https://ig.fhir.de/igs/medication/StructureDefinition-DosageDE.html). Further guidance on documenting dosages is available in the [Medication IG DE (STU1)](https://ig.fhir.de/igs/medication/index.html).

### Pausing a medication

As best practice, a pause in a medication SHOULD be represented with several MedicationStatement resources instead of overwriting an existing one. This adopts the note in the [ISiK profile ISiKMedikationsInformation of ISiK stage 6 (6.0.0)](https://gematik.github.io/spec-ISiK-Basismodul/main-stufe-6/ISiK-Medikation/en/StructureDefinition-ISiKMedikationsInformation.html):

* **Current status:** `status` always reflects the current state of the medication and can be searched across systems.
* **Efficient REST queries:** in combination with the time period, the medication active at a given time can be found with a search on `status`. If only the dosage were changed in an existing resource, every resource would have to be retrieved and analysed.
* **History preserved:** a `statusReason` (e.g. "paused because of side effects") would be lost when the existing resource is updated on continuation; separate resources keep it.

<div class="ig-highlight ig-highlight-blue" markdown="1">
**Open question — input welcome.** ISiK does not say which `status` the first MedicationStatement carries. During the pause it is `on-hold` or `stopped`. One current implementation sets the first resource back to `active` once the continuation is documented in a new, `active` MedicationStatement: its `effectivePeriod.start` and `effectivePeriod.end` show that this part has ended, while the status shows that the medication itself is being continued. Feedback on this pattern is welcome.
</div>
