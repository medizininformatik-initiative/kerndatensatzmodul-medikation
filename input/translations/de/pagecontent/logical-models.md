<!-- markdownlint-disable MD041 -->

### Logische Modelle

Die logischen Datenmodelle des Moduls **Medikation** beschreiben den fachlichen Datensatz unabhängig von der konkreten FHIR-Repräsentation.

#### Datensätze inkl. Beschreibungen

Das Modul Medikation umfasst Datensätze zur Medikation selbst (Arzneimittel, Rezeptur, Wirkstoff), zur Anwendung bei der Patientin oder dem Patienten (Einnahmedauer, Dosierung) sowie Metainformationen (Status, Bezüge, Autor, Datum etc.).

Die offizielle und abgenommene Version des Informationsmodells für das Modul Medikation findet sich auf [ART-DECOR](https://art-decor.org/art-decor/decor-datasets--mide-). Zur Vereinheitlichung der Repräsentation wurde das Informationsmodell zusätzlich als FHIR Logical Model abgebildet: [MII LM Medikation](StructureDefinition-mii-lm-medikation.html).

Es ist zu beachten, dass das Logical Model rein auf die Abbildung der Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen — dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Models existiert ein 1:1-Mapping auf ein Element einer konkreten FHIR-Ressource.

{% lang-fragment StructureDefinition-mii-lm-medikation-dict.xhtml %}
