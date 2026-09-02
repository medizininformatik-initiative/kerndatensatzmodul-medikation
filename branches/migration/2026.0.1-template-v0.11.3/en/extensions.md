# Extensions - MII IG Medikation v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Extensions**

## Extensions

### Extensions

This page lists the FHIR extensions defined by the **Medikation** module. Extensions carry information that the base resources and profiles cannot express.

The table below is generated at build time from the artifacts actually built — it cannot go stale.

| | |
| :--- | :--- |
| Title | Description |
| [MII EX Medikation Wirkstoffrelation](StructureDefinition-mii-ex-medikation-wirkstoffrelation.md) | Die Extension ermöglicht die Zuordnung von einem genauem Wirkstoff (z.B. Salz, Ester) zu einem allgemeinem Wirkstoff. |
| [MII EX Medikation Wirkstofftyp](StructureDefinition-mii-ex-medikation-wirkstofftyp.md) | Extension zur Differenzierung des Wirkstofftyps in allgemeinen, genauen oder Kombinationswirkstoff. |

#### What they are for

Both extensions attach to the ingredient of a `Medication` and solve the same domain problem: calculating a dose requires distinguishing the precise ingredient — which may be a salt or an ester — from the pure substance.

* **Wirkstofftyp** classifies the entry as a general ingredient (`IN`), a precise ingredient (`PIN`) or a combination ingredient (`MIN`).
* **Wirkstoffrelation** links a precise ingredient to its general counterpart, making the conversion traceable: 10 mg bisoprolol hemifumarate corresponds to 8.49 mg bisoprolol.

The corresponding codes are described under [Terminologies](code-systems.md).

