<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW machine translation of source page TechnischeImplementierung/Terminologien.page.md (de) -->

### Terminologies

<div class="ig-highlight ig-highlight-grey" markdown="1">
CodeSystem resources for external terminologies (ATC, ASK, EDQM and so on) are no longer published in this module. They are to be obtained from the Service Unit Terminological Services (SU-TermServ): <https://www.ontoserver.mii-termserv.de/>
</div>

Wherever possible, terminologies and unique codes conforming to international standards are to be used. For medicinal product and dosage information these are the ISO standards for the [Identification of Medicinal Products (IDMP)](https://www.ema.europa.eu/en/human-regulatory/overview/data-medicines-iso-idmp-standards-overview), which are implemented above all in the regulatory context.

#### Active ingredients

The following are proposed as unique identifiers (codes) for active ingredients:

* Substance codes of the German medicinal substance catalogue of the BfArM (ASK). How this ASK number is made publicly available via URI/URL through the BfArM or ABDATA (§ 31b SGB V) still needs to be clarified.
* The [Unique Ingredient Identifier (UNII)](https://en.wikipedia.org/wiki/Unique_Ingredient_Identifier) of the US Substance Registration System. It is not available in Germany.
* The [CAS Registry Number](https://www.cas.org/support/documentation/chemical-substances/faqs) from the Chemical Abstracts Service database.
* SNOMED CT codes from the substance hierarchy. These codes are not contained in the German databases (PharmNet/AMIS and ABDATA).

For naming substances, the registered substance names can be used; these are usually — but not always — the [WHO INNs (International Non-proprietary Names)](https://www.who.int/teams/health-product-and-policy-standards/inn). Within the MII the German spelling should be used, which in some cases differs slightly from the English version.

It is recommended to use [ATC codes (Anatomical Therapeutic Chemical classification)](https://www.whocc.no/atc_ddd_index/) for coding active ingredients only with reservations, since an ATC code cannot be assigned unambiguously to a substance.

#### Ingredient type

For active ingredients it should be possible, when calculating dose information, to distinguish between the precise ingredient (which may be a salt, ester and so on) and the pure ingredient, and to state whether the calculation is based on the derivative (less common) or on the pure, general, normalised substance (usually). An extension was therefore defined that can be attached to the ingredient coding. It references a value set with the codes:

* `IN` — ingredient, general active ingredient
* `PIN` — precise ingredient
* `MIN` — multiple ingredients, combination code for several active ingredients

See the extensions [Wirkstofftyp](StructureDefinition-mii-ex-medikation-wirkstofftyp.html) and [Wirkstoffrelation](StructureDefinition-mii-ex-medikation-wirkstoffrelation.html).

<!-- TODO:REVIEW The source page Terminologien.page.md contains further sections (on medicinal products, dose forms and routes of administration, among others) that need to be added here. -->
