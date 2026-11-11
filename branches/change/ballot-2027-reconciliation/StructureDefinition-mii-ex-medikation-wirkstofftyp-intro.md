<!-- TODO:REVIEW machine translation of source page TechnischeImplementierung/FHIR-Profile/Medication/Extension-Wirkstofftyp.page.md (de) -->
<div class="ig-highlight ig-highlight-orange" markdown="1">
**Deprecated — planned for retirement.** Since version 2027.0.0 the profile [MII PR Medikation Medication](StructureDefinition-mii-pr-medikation-medication.html) no longer uses this artifact. The ingredient type is recorded with the extension [WirkstofftypEX](https://simplifier.net/packages/de.basisprofil.r4/1.6.0/files/3644264) and the code system [WirkstofftypCS](https://simplifier.net/packages/de.basisprofil.r4/1.6.0/files/3644187) from the German base profiles (`de.basisprofil.r4` 1.6.0). That extension grew out of the original MII extension: it has the same context (`Medication.ingredient`) and the same codes (`IN`, `PIN`, `MIN`), and ISiK (e.g. [ISiK Medikament, stage 6](https://gematik.github.io/spec-ISiK-Basismodul/main-stufe-6/ISiK-Medikation/en/StructureDefinition-ISiKMedikament.html)) and other German specifications use it. Using one shared extension avoids two parallel artifacts for the same concept. The MII extension, value set and code system stay in this guide for existing data and will be set to `retired` in a later release. Data that still uses the MII extension triggers the warning `mii-med-2`. The ConceptMap [MII CM Medikation Wirkstofftyp](ConceptMap-mii-cm-medikation-wirkstofftyp.html) maps the MII codes to `WirkstofftypCS`.
</div>

### Content

This extension MAY be used to distinguish, when calculating dose information, between the precise active ingredient (which may be a salt, ester and so on) and the pure active ingredient — indicating whether the calculation is based on the derivative (less common) or on the pure, "general" substance (usually). An extension was therefore defined that MAY be supplied in addition to the ingredient coding. It references a value set with codes for:

* `IN` (ingredient — general active ingredient),
* `PIN` (precise ingredient — precise active ingredient),
* or `MIN` (multiple ingredients — combination code for several active ingredients).

See also [**Terminologies**](code-systems.html).
