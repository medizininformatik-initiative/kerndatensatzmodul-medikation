<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW machine translation of input/translations/de/pagecontent/researcher-guidance.md -->

<!-- DERIVED:written source=BeschreibungModul.page.md,TechnischeImplementierung/Terminologien.page.md,KontextimGesamtprojektBezgezuanderenModulen.page.md gate=B -->
> This page was newly written during the migration. The Simplifier guide had no guidance for researchers; the text draws together statements from the module description, the terminology page and the context chapter for this audience. Needs domain review.
{: .ig-highlight .ig-highlight-grey}

### Guidance for Researchers

Anyone analysing medication data soon notices that the same therapy can look very different in the data. That is not a modelling error but deliberate: sites document at different levels of detail, and the module represents that range on purpose. For queries it means that searching on one pattern alone will systematically miss cases.

#### Active ingredient or medicinal product — two routes to the same statement

A medication can be coded at three levels, and all three are permitted:

* **Via the finished medicinal product**, using the Pharmazentralnummer (PZN). This identifies the concrete product of a package — trade name, manufacturer, pack size.
* **Via the active ingredient**, using an ASK number, UNII or CAS. This identifies the substance, but not the preparation.
* **Via the ATC classification**, which categorises anatomically, therapeutically and chemically. An ATC code is not unambiguously assigned to one substance — for a question about a specific ingredient it is too coarse.

Practical consequence: searching for "all patients on bisoprolol" finds, via the PZN, only those cases where a product was recorded, and via the ATC code also combination products that contain more than what was sought. A defensible cohort usually emerges only from combining several routes.

There is also the distinction between **precise and general ingredient**: "bisoprolol hemifumarate" and "bisoprolol" are not the same, and their quantities differ — 10 mg of the salt corresponds to 8.49 mg of the pure substance. Which level is present is stated by the [Wirkstofftyp](StructureDefinition-mii-ex-medikation-wirkstofftyp.html) extension; [Wirkstoffrelation](StructureDefinition-mii-ex-medikation-wirkstoffrelation.html) establishes the mapping between the two. Aggregating doses without accounting for this adds up unlike things.

#### Medication resources can be nested

A `Medication` references further `Medication` resources through `ingredient.itemReference`. This is needed in two places:

* **Combination packages.** The outer resource carries the PZN of the package; the inner ones describe the individual preparations with their ingredients, each without a PZN of its own.
* **Compounded preparations and infusion solutions.** The prepared solution references its components.

For analyses this means: **a single `Medication` is not necessarily the whole story.** Counting ingredients without following the reference chain loses, for combination packages, exactly the information being sought — the ingredient sits one level down.

#### Ordered is not administered

Three resources appear to describe something similar but mean different things:

* **MedicationRequest** — an order. It does not say whether the medication was given.
* **MedicationAdministration** — an actual single administration, with time and dose.
* **MedicationStatement** — an entry, often from a medication plan or from what the patient reported. Whether and when it was taken is explicitly left open here.

A question about exposure is answered by the administration, a question about therapeutic intent by the order. Conflating the two overestimates exposure.

#### The level of detail varies between sites

The module requires the active ingredient as a minimum. Trade name, dose with unit, dosage regimen, dose form as well as site and route of administration are provided for but not present everywhere — the share of structured medication documentation differs considerably between sites. For multi-centre analyses it is advisable to check completeness per site beforehand rather than assume it.

Which code systems apply where is described under [Terminologies](code-systems.html); an overview of the data elements is under [Datasets and descriptions](logical-models.html).
