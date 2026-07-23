# MII CS Medikation Wirkstofftyp - v2026.0.1

## CodeSystem: MII CS Medikation Wirkstofftyp 

 
Codes for differentiating ingredients between exact substance e.g. salt, ester, general normalized substance and combination code for several active ingredients. 

This Code system is referenced in the definition of the following value sets:

* [MII_VS_Medikation_Wirkstofftyp](ValueSet-mii-vs-medikation-wirkstofftyp.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-medikation-wirkstofftyp",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CodeSystem/wirkstofftyp",
  "version" : "2026.0.1",
  "name" : "MII_CS_Medikation_Wirkstofftyp",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_CS_Medikation_IngredientType"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII CS Medikation Wirkstofftyp",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII CS Medikation Ingredient Type"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "experimental" : false,
  "date" : "2024-11-14",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
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
      "code" : "DE"
    }]
  }],
  "caseSensitive" : true,
  "valueSet" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/wirkstofftyp",
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "IN",
    "display" : "ingredient",
    "definition" : "The name of the substance.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Wirkstoff allgemein"
    }]
  },
  {
    "code" : "PIN",
    "display" : "precise ingredient",
    "definition" : "The name of the substance expressed precisely as a salt or ester of the ingredient.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Wirkstoff präzise"
    }]
  },
  {
    "code" : "MIN",
    "display" : "multiple ingredients",
    "definition" : "The name of the substances in a combination product.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Kombinationswirkstoff"
    }]
  }]
}

```
