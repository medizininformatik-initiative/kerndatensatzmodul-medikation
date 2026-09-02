<!-- markdownlint-disable MD041 -->

### Extensions

This page lists the FHIR extensions defined by the **Medikation** module. Extensions carry information that the base resources and profiles cannot express.

The table below is generated at build time from the artifacts actually built — it cannot go stale.

{% sql {
  "query" : "select Name, Title, Description, Web from Resources where Type = 'StructureDefinition' and sdType = 'Extension' order by Name",
  "class" : "lines",
  "columns" : [
    { "name" : "Extension", "type" : "link", "source" : "Title", "target" : "Web" },
    { "name" : "Description", "type" : "markdown", "source" : "Description" }
  ]
} %}

#### What they are for

Both extensions attach to the ingredient of a `Medication` and solve the same domain problem: calculating a dose requires distinguishing the precise ingredient — which may be a salt or an ester — from the pure substance.

* **Wirkstofftyp** classifies the entry as a general ingredient (`IN`), a precise ingredient (`PIN`) or a combination ingredient (`MIN`).
* **Wirkstoffrelation** links a precise ingredient to its general counterpart, making the conversion traceable: 10 mg bisoprolol hemifumarate corresponds to 8.49 mg bisoprolol.

The corresponding codes are described under [Terminologies](code-systems.html).
