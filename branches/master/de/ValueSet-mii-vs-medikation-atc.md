# MII VS Medikation ATC - MII IG Medikation v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Medikation ATC**

## ValueSet: MII VS Medikation ATC 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/mii-vs-medikation-atc | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2025-03-19 | *Maschinenlesbarer Name*:MII_VS_Medikation_ATC |
| **Copyright/Rechtliches**: WHO, BfArM 1994 - 2026 - Die Erstellung erfolgt unter Verwendung der maschinenlesbaren Fassung des Bundesinstituts für Arzneimittel und Medizinprodukte (BfArM). | |

 
Enthaelt ATC-Codes der Versionen 2018 bis 2026 

 **References** 

* [MII PR Medikation Medication](StructureDefinition-mii-pr-medikation-medication.md)
* [MII PR Medikation MedicationAdministration](StructureDefinition-mii-pr-medikation-medication-administration.md)
* [MII PR Medikation MedicationRequest](StructureDefinition-mii-pr-medikation-medication-request.md)
* [MII PR Medikation MedicationStatement](StructureDefinition-mii-pr-medikation-medication-statement.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-medikation-atc",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/mii-vs-medikation-atc",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Medikation_ATC",
  "title" : "MII VS Medikation ATC",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-03-19",
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
  "description" : "Enthaelt ATC-Codes der Versionen 2018 bis 2026",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "WHO, BfArM 1994 - 2026 - Die Erstellung erfolgt unter Verwendung der maschinenlesbaren Fassung des Bundesinstituts für Arzneimittel und Medizinprodukte (BfArM).",
  "compose" : {
    "include" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2026"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2025"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2024"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2023"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2022"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2021"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2020"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2019"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2018"
    }]
  }
}

```
