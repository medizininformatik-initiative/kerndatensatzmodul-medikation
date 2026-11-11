### Identifying the medication

A *Medication* MUST carry a `code` or at least one `ingredient` (invariant `mii-med-1`). The active ingredient SHOULD be given.

Since version 2027.0.0, `Medication.ingredient` is optional (previously `1..*`). This follows the [ISiK Medikament profile of ISiK stage 6 (6.0.0)](https://gematik.github.io/spec-ISiK-Basismodul/main-stufe-6/ISiK-Medikation/en/StructureDefinition-ISiKMedikament.html), which likewise requires only a code or an ingredient (invariant `isik-med-1`, `code.exists() or ingredient.exists()`). A finished medicinal product that an ISiK 6 system codes only by PZN or ATC therefore conforms to this profile as delivered; the earlier workaround of an `ingredient` carrying only a `data-absent-reason` extension is no longer needed. Consumers MUST NOT assume that `ingredient` is present.

### Status

Since version 2027.0.0, `Medication.status` is Must Support. `status` is a modifier element: `inactive` and `entered-in-error` change the meaning of the resource, so receiving systems MUST evaluate it. The [ISiK Medikament profile of ISiK stage 6 (6.0.0)](https://gematik.github.io/spec-ISiK-Basismodul/main-stufe-6/ISiK-Medikation/en/StructureDefinition-ISiKMedikament.html) also requires `status` (`1..1`). This profile deliberately keeps it optional (`0..1`), so that existing MII data without a `status` stays valid; ISiK data conforms either way.

### Ingredient type

Since version 2027.0.0, the ingredient type (`IN`, `PIN`, `MIN`) is recorded with the extension [WirkstofftypEX](https://simplifier.net/packages/de.basisprofil.r4/1.6.0/files/3644264) from the German base profiles, as in [ISiK stage 6](https://gematik.github.io/spec-ISiK-Basismodul/main-stufe-6/ISiK-Medikation/en/StructureDefinition-ISiKMedikament.html); the slice `Medication.ingredient.extension:Wirkstofftyp` now uses it. The MII extension [Wirkstofftyp](StructureDefinition-mii-ex-medikation-wirkstofftyp.html) is deprecated: it is still accepted, but the invariant `mii-med-2` warns when it is used and advises replacing it. Both extensions use the same codes, so data converts by changing the extension URL and the code system (`http://fhir.de/CodeSystem/WirkstofftypCS`); the ConceptMap [MII CM Medikation Wirkstofftyp](ConceptMap-mii-cm-medikation-wirkstofftyp.html) records this one-to-one mapping.
