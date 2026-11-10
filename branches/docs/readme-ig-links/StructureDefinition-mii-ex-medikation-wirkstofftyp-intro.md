<!-- TODO:REVIEW machine translation of source page TechnischeImplementierung/FHIR-Profile/Medication/Extension-Wirkstofftyp.page.md (de) -->
### Content

This extension MAY be used to distinguish, when calculating dose information, between the precise active ingredient (which may be a salt, ester and so on) and the pure active ingredient — indicating whether the calculation is based on the derivative (less common) or on the pure, "general" substance (usually). An extension was therefore defined that MAY be supplied in addition to the ingredient coding. It references a value set with codes for:

* `IN` (ingredient — general active ingredient),
* `PIN` (precise ingredient — precise active ingredient),
* or `MIN` (multiple ingredients — combination code for several active ingredients).

See also [**Terminologies**](code-systems.html).
