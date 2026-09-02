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


#### Sales status of a PZN

Pharmazentralnummern are volatile: an article that is no longer in today's catalogue may well have been regularly on the market at the time of treatment. So that this can be documented, the module carries the sales status codes of the MMI Pharmindex (catalogue #116) as a code system of its own: [MII CS Medikation PZN Sales Status Codes](CodeSystem-mii-cs-medikation-pzn-sales-status-code.html).

| Code | Meaning | Description |
|---|---|---|
| `N` | On the market | The article is available on the market and distributed by the supplier |
| `F` | Withdrawn from distribution | Stock may be sold off, provided the marketability status allows it |
| `D` | Lapsed | Marketability has expired |
| `R` | Recalled | The article has been recalled and must no longer be dispensed |
| `Z` | Withdrawn | The article has been withdrawn and must no longer be dispensed |

The value is intended to be carried as a **property on a PZN coding** — it describes the article, not the prescription.

<div class="ig-highlight ig-highlight-grey" markdown="1">
**Licence:** the content is generated from the MMI Pharmindex R3 raw data files and distributed under licence for integration into the systems of the MII and the NUM. It is therefore **not** covered by the CC-BY-4.0 licence of the rest of the module.
</div>

#### Medicinal products

The following are proposed for identifying medicinal products:

* the [Pharmazentralnummer (PZN)](https://de.wikipedia.org/wiki/Pharmazentralnummer). These numbers must be made queryable via a publicly available URL/URI (§ 31b SGB V).
* the [Pharmaceutical Product Identifier (PHPID)](https://www.fda.gov/industry/fda-resources-data-standards/pharmaceutical-product-identification), which is part of the ISO IDMP standards but is currently not available.

#### Combination packages

For combination packages — where the medicinal product consists of several components with different active ingredients, dose forms, doses or dose units — two representations are currently permitted on the medication plan and in the carrier:

**Variant 1: one shared PZN.** The combined finished medicinal product is coded with a single PZN, so that it appears as one medication entry. The dosage should then be entered as free text by the user to account for both components. An additional bound line can provide room for further explanation.

**Variant 2: two or more PZNs.** The individual components are coded with two or more PZNs. In that case the combined product is represented by splitting it across corresponding, consecutive medication entries. There is currently no structural way to express that such entries belong together as one combined product; the user can establish that relation with suitable text, if necessary under a separate subheading.

#### Route of administration and dose form

For the route of administration and the dose form the following are to be used:

* the standard terminologies of the [EDQM (European Directorate for the Quality of Medicines and Health Care)](https://standardterms.edqm.eu/), "Routes and Methods of Administration" and "Pharmaceutical Dose Forms".
* alternatively the dose form may be given as an IFA code, per the KBV medication plan specification. Key table: <https://applications.kbv.de/S_BMP_DARREICHUNGSFORM_V1.02.xhtml>

The EDQM standard terminologies should be preferred, since they conform to the ISO standards for the Identification of Medicinal Products.

#### Context in which medication is used

Codes distinguishing the context in which a medication list (`List`) is maintained, or categorising a medication statement (`MedicationStatement`), are given in the value set [MII VS Medikation Fallkontext](ValueSet-mii-vs-medikation-fallkontext.html).

Canonical: `https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/fallkontext`

#### List of external code systems

| URI | Source | Comment | OID (for non-FHIR systems) |
|---|---|---|---|
| `http://fhir.de/CodeSystem/ifa/pzn` | PZN [Pharmazentralnummer](https://de.wikipedia.org/wiki/Pharmazentralnummer) | | 1.2.276.0.76.4.6 |
| `http://fhir.de/CodeSystem/bfarm/atc` | ATC [Anatomical Therapeutic Chemical classification](https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/ATC/_node.html) | German edition | |
| `http://fhir.de/CodeSystem/ask` | Arzneistoffkatalog number | | 1.2.276.0.76.5.308 |
| `http://fdasis.nlm.nih.gov` | UNII [Unique Ingredient Identifier](https://www.fda.gov/industry/fda-data-standards-advisory-board/unique-ingredient-identifier-unii) | [Using UNII with FHIR](http://hl7.org/fhir/unii.html) | 2.16.840.1.113883.4.9 |
| `http://terminology.hl7.org/CodeSystem/CAS` | [CAS registry system](https://www.cas.org/support/documentation/chemical-substances) | unique numerical identifier of a substance in the CAS Registry system | 2.16.840.1.113883.6.61 |
| `http://standardterms.edqm.eu` | EDQM [Standard Terms](https://standardterms.edqm.eu/) | | 0.4.0.127.0.16.1.1.2.1 |
| `http://snomed.info/sct` | SNOMED CT [snomed.org](http://snomed.org/) | [Using SNOMED CT with FHIR](http://hl7.org/fhir/snomedct.html) | 2.16.840.1.113883.6.96 |
| `http://unitsofmeasure.org` | UCUM [unitsofmeasure.org](http://unitsofmeasure.org/) | [Using UCUM with FHIR](http://hl7.org/fhir/ucum.html) | 2.16.840.1.113883.6.8 |
| `http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung` | IHE XDS Fallkontext bei Dokumentenerstellung | | 1.3.6.1.4.1.19376.3.276.1.5.16 |
