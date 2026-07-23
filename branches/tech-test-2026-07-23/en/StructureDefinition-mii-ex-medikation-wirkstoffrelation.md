# MII EX Medikation Wirkstoffrelation - v2026.0.1

## Extension: MII EX Medikation Ingredient Relation 

The extension enables the assignment of an exact substance e.g. salt, ester to a general substance.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR Medikation Medication](StructureDefinition-mii-pr-medikation-medication.md)
* Examples for this Extension: [Medication/mii-exa-medikation-medication-calcium](Medication-mii-exa-medikation-medication-calcium.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.medikation|current/StructureDefinition/StructureDefinition-mii-ex-medikation-wirkstoffrelation.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-medikation-wirkstoffrelation.csv), [Excel](../StructureDefinition-mii-ex-medikation-wirkstoffrelation.xlsx), [Schematron](../StructureDefinition-mii-ex-medikation-wirkstoffrelation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-medikation-wirkstoffrelation",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation",
  "version" : "2026.0.1",
  "name" : "MII_EX_Medikation_Wirkstoffrelation",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_EX_Medikation_IngredientRelation"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII EX Medikation Wirkstoffrelation",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII EX Medikation Ingredient Relation"
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
  "description" : "Die Extension ermöglicht die Zuordnung von einem genauem Wirkstoff (z.B. Salz, Ester) zu einem allgemeinem Wirkstoff.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "The extension enables the assignment of an exact substance e.g. salt, ester to a general substance."
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
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Medication.ingredient"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension"
    },
    {
      "id" : "Extension.extension:ingredientReference",
      "path" : "Extension.extension",
      "sliceName" : "ingredientReference",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:ingredientReference.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:ingredientReference.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ingredientReference"
    },
    {
      "id" : "Extension.extension:ingredientReference.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Medication",
        "http://hl7.org/fhir/StructureDefinition/Substance"]
      }]
    },
    {
      "id" : "Extension.extension:ingredientUri",
      "path" : "Extension.extension",
      "sliceName" : "ingredientUri",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:ingredientUri.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:ingredientUri.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ingredientUri"
    },
    {
      "id" : "Extension.extension:ingredientUri.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
