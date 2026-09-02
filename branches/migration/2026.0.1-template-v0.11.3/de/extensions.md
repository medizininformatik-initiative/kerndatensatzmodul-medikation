# Extensions - MII IG Medikation v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* **Extensions**

## Extensions

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

### Extensions

Diese Seite listet die FHIR-Extensions, die das Modul **Medikation** definiert. Extensions transportieren Informationen, die die Basis-Ressourcen und Profile nicht ausdrücken können.

Die folgende Tabelle wird beim Build aus den tatsächlich gebauten Artefakten erzeugt — sie kann nicht veralten.

| | |
| :--- | :--- |
| Title | Description |
| [MII EX Medikation Wirkstoffrelation](StructureDefinition-mii-ex-medikation-wirkstoffrelation.md) | Die Extension ermöglicht die Zuordnung von einem genauem Wirkstoff (z.B. Salz, Ester) zu einem allgemeinem Wirkstoff. |
| [MII EX Medikation Wirkstofftyp](StructureDefinition-mii-ex-medikation-wirkstofftyp.md) | Extension zur Differenzierung des Wirkstofftyps in allgemeinen, genauen oder Kombinationswirkstoff. |

#### Wozu sie dienen

Beide Extensions hängen an der Wirkstoffangabe einer `Medication` und lösen dasselbe fachliche Problem: die Dosisberechnung braucht die Unterscheidung zwischen dem genauen Wirkstoff — der ein Salz oder Ester sein kann — und der reinen Substanz.

* **Wirkstofftyp** klassifiziert die Angabe als allgemeinen Wirkstoff (`IN`), genauen Wirkstoff (`PIN`) oder Kombinationswirkstoff (`MIN`).
* **Wirkstoffrelation** verknüpft einen genauen mit dem zugehörigen allgemeinen Wirkstoff und macht damit die Umrechnung nachvollziehbar: 10 mg Bisoprololhemifumarat entsprechen 8,49 mg Bisoprolol.

Die zugehörigen Codes beschreibt der Abschnitt [Terminologien](code-systems.md).

