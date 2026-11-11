### Identifying the medication

A *Medication* MUST carry a `code` or at least one `ingredient` (invariant `mii-med-1`). The active ingredient SHOULD be given.

Since version 2027.0.0, `Medication.ingredient` is optional (previously `1..*`). This follows the [ISiK Medikament profile of ISiK stage 6 (6.0.0)](https://gematik.github.io/spec-ISiK-Basismodul/main-stufe-6/ISiK-Medikation/en/StructureDefinition-ISiKMedikament.html), which likewise requires only a code or an ingredient (invariant `isik-med-1`, `code.exists() or ingredient.exists()`). A finished medicinal product that an ISiK 6 system codes only by PZN or ATC therefore conforms to this profile as delivered; the earlier workaround of an `ingredient` carrying only a `data-absent-reason` extension is no longer needed. Consumers MUST NOT assume that `ingredient` is present.
