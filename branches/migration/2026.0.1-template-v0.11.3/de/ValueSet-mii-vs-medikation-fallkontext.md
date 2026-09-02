# MII VS Medikation Fallkontext - MII IG Medikation v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Medikation Fallkontext**

## ValueSet: MII VS Medikation Fallkontext 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/fallkontext | *Version*:2026.0.1 |
| Active Stand: 2024-11-14 | *Maschinenlesbarer Name*:MII_VS_Medikation_Fallkontext |
| **Copyright/Rechtliches**: This artifact includes content from IHE Deutschland e.V. (https://www.ihe-d.de/) | |

 
Codes zur Differenzierung des Kontextes in dem eine Medikationsliste verwaltet wird. 

 **References** 

* [MII PR Medikation MedicationStatement](StructureDefinition-mii-pr-medikation-medication-statement.md)
* [MII PR Medikation Medikationsliste](StructureDefinition-mii-pr-medikation-medikationsliste.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-medikation-fallkontext",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-ex-meta-license-codeable",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/spdx-license",
        "code" : "CC-BY-4.0",
        "display" : "Creative Commons Attribution 4.0 International"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/fallkontext",
  "version" : "2026.0.1",
  "name" : "MII_VS_Medikation_Fallkontext",
  "title" : "MII VS Medikation Fallkontext",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-11-14",
  "publisher" : "NUM-DIZ",
  "_publisher" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "NUM-DIZ"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "Codes zur Differenzierung des Kontextes in dem eine Medikationsliste verwaltet wird.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "This artifact includes content from IHE Deutschland e.V. (https://www.ihe-d.de/)",
  "compose" : {
    "include" : [{
      "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
      "concept" : [{
        "code" : "E100",
        "display" : "ambulanter Kontakt"
      },
      {
        "code" : "E200",
        "display" : "stationärer Aufenthalt"
      },
      {
        "code" : "E210",
        "display" : "stationäre Aufnahme"
      },
      {
        "code" : "E230",
        "display" : "stationäre Entlassung"
      }]
    }]
  }
}

```
