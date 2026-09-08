# MII EX Medikation Wirkstoffrelation - MII IG Medikation v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EX Medikation Wirkstoffrelation**

## Extension: MII EX Medikation Ingredient Relation 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2024-11-14 | *Computable Name*:MII_EX_Medikation_Wirkstoffrelation |

The extension enables the assignment of an exact substance e.g. salt, ester to a general substance.

**Context of Use**

### Content

The Wirkstoffrelation extension makes it possible to represent references between active ingredients. An ingredient classified as a "precise" ingredient CAN thereby be assigned unambiguously to a "general" ingredient. This allows, for example, the conversion that "10 mg bisoprolol hemifumarate" corresponds to "8.49 mg bisoprolol".

**Usage info**

**Usages:**

* Use this Extension: [MII PR Medikation Medication](StructureDefinition-mii-pr-medikation-medication.md)
* Examples for this Extension: [Medication/mii-exa-medikation-medication-calcium](Medication-mii-exa-medikation-medication-calcium.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.medikation|current/StructureDefinition/StructureDefinition-mii-ex-medikation-wirkstoffrelation.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

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
  "version" : "2027.0.0-ballot.rc1",
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
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
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
      "path" : "Extension",
      "short" : "MII EX Medikation Wirkstoffrelation",
      "definition" : "Die Extension ermöglicht die Zuordnung von einem genauem Wirkstoff (z.B. Salz, Ester) zu einem allgemeinem Wirkstoff."
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
