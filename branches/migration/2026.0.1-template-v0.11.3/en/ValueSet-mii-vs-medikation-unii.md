# MII VS Medikation UNII - MII IG Medikation v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Medikation UNII**

## ValueSet: MII VS Medikation UNII 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/mii-vs-medikation-unii | *Version*:2026.0.1 |
| Active as of 2025-11-05 | *Computable Name*:MII_VS_Medikation_UNII |
| **Copyright/Legal**: U.S. Food and Drug Administration (FDA) | |

 
Enthaelt Unique Ingredient Identifier (UNII-Codes) 

 **References** 

* [MII PR Medikation Medication](StructureDefinition-mii-pr-medikation-medication.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

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
  "description" : "Enthaelt Unique Ingredient Identifier (UNII-Codes)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
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
