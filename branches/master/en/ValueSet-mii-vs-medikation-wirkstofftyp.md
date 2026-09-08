# MII VS Medikation Wirkstofftypen - MII IG Medikation v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Medikation Wirkstofftypen**

## ValueSet: MII VS Medikation IngredientType 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/wirkstofftyp | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2024-11-14 | *Computable Name*:MII_VS_Medikation_Wirkstofftyp |

 
Codes zur Differenzierung von Wirkstoffen zwischen genauer Substanz (z.B. Salz, Ester etc.), allgemeiner (normalisierter) Substanz und Kombinationscode für mehrere Wirkstoffe. 

 **References** 

* [MII EX Medikation Wirkstofftyp](StructureDefinition-mii-ex-medikation-wirkstofftyp.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-medikation-wirkstofftyp",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/wirkstofftyp",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Medikation_Wirkstofftyp",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_VS_Medikation_IngredientType"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII VS Medikation Wirkstofftypen",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII VS Medikation IngredientType"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
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
  "description" : "Codes zur Differenzierung von Wirkstoffen zwischen genauer Substanz (z.B. Salz, Ester etc.), allgemeiner (normalisierter) Substanz und Kombinationscode für mehrere Wirkstoffe.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "Codes for differentiating ingredients between exact substance e.g. salt, ester, general normalized substance and combination code for several active ingredients."
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CodeSystem/wirkstofftyp"
    }]
  }
}

```
