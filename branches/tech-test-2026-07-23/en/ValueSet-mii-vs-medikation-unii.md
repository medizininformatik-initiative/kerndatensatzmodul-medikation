# MII VS Medikation UNII - v2026.0.1

## ValueSet: MII VS Medikation UNII 

 
Enthaelt Unique Ingredient Identifier (UNII-Codes) 

 **References** 

* [MII PR Medikation Medication](StructureDefinition-mii-pr-medikation-medication.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-medikation-unii",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/mii-vs-medikation-unii",
  "version" : "2026.0.1",
  "name" : "MII_VS_Medikation_UNII",
  "title" : "MII VS Medikation UNII",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-11-05",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Enthaelt Unique Ingredient Identifier (UNII-Codes)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE"
    }]
  }],
  "copyright" : "U.S. Food and Drug Administration (FDA)",
  "compose" : {
    "include" : [{
      "system" : "http://fdasis.nlm.nih.gov",
      "version" : "20250702"
    }]
  }
}

```
