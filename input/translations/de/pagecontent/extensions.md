<!-- markdownlint-disable MD041 -->

### Extensions

Diese Seite listet die FHIR-Extensions, die das Modul **Medikation** definiert. Extensions transportieren Informationen, die die Basis-Ressourcen und Profile nicht ausdrücken können.

Die folgende Tabelle wird beim Build aus den tatsächlich gebauten Artefakten erzeugt — sie kann nicht veralten.

{% sql {
  "query" : "select Name, Title, Description, Web from Resources where Type = 'StructureDefinition' and sdType = 'Extension' order by Name",
  "class" : "lines",
  "columns" : [
    { "name" : "Extension", "type" : "link", "source" : "Title", "target" : "Web" },
    { "name" : "Beschreibung", "type" : "markdown", "source" : "Description" }
  ]
} %}

#### Wozu sie dienen

Beide Extensions hängen an der Wirkstoffangabe einer `Medication` und lösen dasselbe fachliche Problem: die Dosisberechnung braucht die Unterscheidung zwischen dem genauen Wirkstoff — der ein Salz oder Ester sein kann — und der reinen Substanz.

* **Wirkstofftyp** klassifiziert die Angabe als allgemeinen Wirkstoff (`IN`), genauen Wirkstoff (`PIN`) oder Kombinationswirkstoff (`MIN`).
* **Wirkstoffrelation** verknüpft einen genauen mit dem zugehörigen allgemeinen Wirkstoff und macht damit die Umrechnung nachvollziehbar: 10 mg Bisoprololhemifumarat entsprechen 8,49 mg Bisoprolol.

Die zugehörigen Codes beschreibt der Abschnitt [Terminologien](code-systems.html).
