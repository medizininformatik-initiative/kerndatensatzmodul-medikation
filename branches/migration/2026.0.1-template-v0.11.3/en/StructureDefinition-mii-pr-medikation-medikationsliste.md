# MII PR Medikation Medikationsliste - MII IG Medikation v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Medikation Medikationsliste**

## Resource Profile: MII PR Medikation Medikationsliste 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste | *Version*:2026.0.1 |
| Active as of 2024-11-13 | *Computable Name*:MII_PR_Medikation_Medikationsliste |

 
List of discrete medications e.g. for documentation of admission or discharge medication. 

### Content

The List resource is a flat collection of resources and offers functions for managing that collection. Here the resource serves as a collection of the medications a patient is taking at a particular point in time — on admission or at discharge, for example. To that end it references MedicationStatement resources.

The purpose and context of the list are stated via `List.code`. One coding is always set to the code `medications` from the system `http://terminology.hl7.org/CodeSystem/list-example-use-codes`. The second coding determines the context in which the medication list is maintained: admission medication, discharge medication, or medication during the inpatient stay. For these contexts the codes come from the IHE XDS Fallkontext system (`http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung`); the permitted codes are listed in the value set [MII VS Medikation Fallkontext](ValueSet-mii-vs-medikation-fallkontext.md).

**Usages:**

* Examples for this Profile: [List/mii-exa-medikation-list-admission](List-mii-exa-medikation-list-admission.md), [List/mii-exa-medikation-medikationsliste-aktuelle-therapie](List-mii-exa-medikation-medikationsliste-aktuelle-therapie.md) and [List/mii-exa-medikation-medikationsliste-aufnahmemedikation](List-mii-exa-medikation-medikationsliste-aufnahmemedikation.md)
* CapabilityStatements using this Profile: [MII CPS Medikation CapabilityStatement](CapabilityStatement-mii-cps-medikation-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.medikation|current/StructureDefinition/StructureDefinition-mii-pr-medikation-medikationsliste.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-medikation-medikationsliste.csv), [Excel](../StructureDefinition-mii-pr-medikation-medikationsliste.xlsx), [Schematron](../StructureDefinition-mii-pr-medikation-medikationsliste.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-medikation-medikationsliste",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste",
  "version" : "2026.0.1",
  "name" : "MII_PR_Medikation_Medikationsliste",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_PR_Medikation_Medicationlist"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII PR Medikation Medikationsliste",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de-DE"
      },
      {
        "url" : "content",
        "valueString" : "Medikationsliste"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    },
    {
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "Medicationlist"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "date" : "2024-11-13",
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
  "description" : "Liste einzelner Medikationen z.B. zur Dokumentation der Aufnahme- oder Entlassmedikation.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de-DE"
      },
      {
        "url" : "content",
        "valueString" : "Sammlung der Medikationen, die ein Patient zu einem bestimmten Zeitpunkt einnimmt, beispielsweise bei Aufnahme oder Entlassung"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    },
    {
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "List of discrete medications e.g. for documentation of admission or discharge medication."
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
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "List",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/List",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "List",
      "path" : "List",
      "constraint" : [{
        "key" : "medication-list-context-1",
        "severity" : "error",
        "human" : "Wenn der Kontext Aufnahme, Entlassung oder ambulanter Kontakt ist, soll der mode 'snapshot' sein.",
        "expression" : "List.code.coding.where(system='http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung' and code='E210' or system='http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung' and code='E230' or system='http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung' and code='E100').exists() implies List.mode='snapshot'",
        "source" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste"
      },
      {
        "key" : "medication-list-context-2",
        "severity" : "error",
        "human" : "Wenn der Kontext stationärer Aufenthalt ist, soll der mode 'working' sein.",
        "expression" : "List.code.coding.where(system='http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung' and code='E200').exists() implies List.mode='working'",
        "source" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste"
      }]
    },
    {
      "id" : "List.meta",
      "path" : "List.meta",
      "mustSupport" : true
    },
    {
      "id" : "List.meta.source",
      "path" : "List.meta.source",
      "mustSupport" : true
    },
    {
      "id" : "List.meta.profile",
      "path" : "List.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "List.identifier",
      "path" : "List.identifier",
      "mustSupport" : true
    },
    {
      "id" : "List.status",
      "path" : "List.status",
      "short" : "Status",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Status"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Status"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "aktuell | inaktiv | Eingabe fehlerhaft",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "aktuell | inaktiv | Eingabe fehlerhaft"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "current | retired | entered-in-error"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "List.mode",
      "path" : "List.mode",
      "short" : "Modus",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Modus"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Mode"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Arbeitsmodus | Momentaufnahme | Änderungen",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Arbeitsmodus | Momentaufnahme | Änderungen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "working | snapshot | changes"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "List.code",
      "path" : "List.code",
      "short" : "Code",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Enthält Codes für Medikationsliste und Kontext der Medikationsliste.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Enthält Codes für Medikationsliste und Kontext der Medikationsliste."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Contains codes for medication list and context of the medication list."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "List.code.coding",
      "path" : "List.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "min" : 2,
      "mustSupport" : true
    },
    {
      "id" : "List.code.coding:medCode",
      "path" : "List.code.coding",
      "sliceName" : "medCode",
      "short" : "Medikationsliste",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Medikationsliste"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Medication list"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Code für Medikationsliste",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Code für Medikationsliste"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Code for medication list"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/list-example-use-codes",
        "code" : "medications"
      },
      "mustSupport" : true
    },
    {
      "id" : "List.code.coding:medCode.system",
      "path" : "List.code.coding.system",
      "mustSupport" : true
    },
    {
      "id" : "List.code.coding:medCode.code",
      "path" : "List.code.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "List.code.coding:contextCode",
      "path" : "List.code.coding",
      "sliceName" : "contextCode",
      "short" : "Kontext der Medikationsliste",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Kontext der Medikationsliste"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Context of the medication list"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "ambulanter Kontakt | stationärer Aufenthalt | stationäre Aufnahme | stationäre Entlassung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "ambulanter Kontakt | stationärer Aufenthalt | stationäre Aufnahme | stationäre Entlassung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "ambulatory contact | inpatient stay | inpatient admission | inpatient discharge"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung"
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/fallkontext"
      }
    },
    {
      "id" : "List.code.coding:contextCode.system",
      "path" : "List.code.coding.system",
      "mustSupport" : true
    },
    {
      "id" : "List.code.coding:contextCode.code",
      "path" : "List.code.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "List.subject",
      "path" : "List.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "List.encounter",
      "path" : "List.encounter",
      "short" : "Fall oder Kontakt",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Fall oder Kontakt"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Encounter"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Fall oder Kontakt, bei dem die Medikationsliste erstellt wurde.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Fall oder Kontakt, bei dem die Medikationsliste erstellt wurde."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Encounter during which the medication list was created."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "List.date",
      "path" : "List.date",
      "short" : "Datum",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Date"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Das Datum, an dem die Medikationsliste erstellt wurde.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Das Datum, an dem die Medikationsliste erstellt wurde."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "The date that the medication list was prepared."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "List.entry",
      "path" : "List.entry",
      "short" : "Eintrag",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Eintrag"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Entry"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ein Eintrag in der Medikationsliste vom Typ MedicationStatement.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Eintrag in der Medikationsliste vom Typ MedicationStatement."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "An entry in the medication list that is a MedicationStatement."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "List.entry.flag",
      "path" : "List.entry.flag",
      "max" : "0"
    },
    {
      "id" : "List.entry.deleted",
      "path" : "List.entry.deleted",
      "max" : "0"
    },
    {
      "id" : "List.entry.item",
      "path" : "List.entry.item",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"]
      }],
      "mustSupport" : true
    }]
  }
}

```
