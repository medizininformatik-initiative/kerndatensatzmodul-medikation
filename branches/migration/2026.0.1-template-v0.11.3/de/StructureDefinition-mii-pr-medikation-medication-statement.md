# MII PR Medikation MedicationStatement - MII IG Medikation v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Medikation MedicationStatement**

## Ressourcenprofil: MII PR Medikation MedicationStatement 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement | *Version*:2026.0.1 |
| Active Stand: 2025-12-18 | *Maschinenlesbarer Name*:MII_PR_Medikation_MedicationStatement |

 
Ein Bericht oder Dokumentation über den Konsum einer Medikation. 

### Inhalt

Das MedicationStatement dokumentiert die Verordnung eines Arzneimittels oder den Konsum durch einen Patienten. MedicationStatement KANN anzeigen, dass der Patient ein Medikament zur Zeit einnimmt, in der Vergangenheit genommen hat oder in Zukunft einnehmen wird. Dabei KANN es sich sowohl um verschreibungspflichtige Medikamente handeln, wie auch um OTC-Präparate, welche ein Patient in Eigenverantwortung einnimmt.

Der Hauptunterschied zwischen der konkreten Verabreichung einer Medikation (MedicationAdministration) und dem MedicationStatement besteht darin, dass die Medikamentenverabreichung über vollständige Verabreichungsinformationen verfügt und auf den tatsächlichen Informationen der Person basiert, die das Medikament verabreicht hat. MedicationStatement hat im Vergleich eher den Charakter z.B. eines Medikationsplans. Es ist nicht klar, ob der Patient diese Arzneimittel tatsächlich eingenommen hat oder diese verabreicht wurden.

Das verabreichte Medikament soll entweder über eine Referenz auf ein **Medication**-Objekt, über eine Pharmazentralnummer oder über einen ATC-Code erfolgen. Eine Kodierung des Medikaments über den Unique Ingredient Identifier (UNII) ist nur für Medikamente zu erwägen, bei denen weder PZN noch ATC-Code verfügbar ist, beispielsweise bei Studienmedikamenten oder bestimmten Präparate für den Einsatz in der Onkologie oder bei seltenen Erkrankungen. Hierbei ist zu beachten, dass der UNII nur einen Wirkstoff - kein Medikament - kodiert. Bei Kombipräparaten ist daher nur eine Modellierung über eine **Medication** möglich.

Dosierungsangaben sollen gemäß dem [Dosage-Profil aus dem Medication IG DE](https://ig.fhir.de/igs/medication/StructureDefinition-DosageDE.html) erfolgen. Weitere Informationen zur Dokumentation von Dosierungen finden sich im [Medication IG DE (STU1)](https://ig.fhir.de/igs/medication/index.html).

**Usages:**

* Refer to this Profile: [MII PR Medikation Medikationsliste](StructureDefinition-mii-pr-medikation-medikationsliste.md)
* Examples for this Profile: [MedicationStatement/mii-exa-medikation-medication-statement-caelyx](MedicationStatement-mii-exa-medikation-medication-statement-caelyx.md), [MedicationStatement/mii-exa-medikation-medication-statement-concor](MedicationStatement-mii-exa-medikation-medication-statement-concor.md), [MedicationStatement/mii-exa-medikation-medication-statement-hct](MedicationStatement-mii-exa-medikation-medication-statement-hct.md), [MedicationStatement/mii-exa-medikation-medication-statement-ibuprofen](MedicationStatement-mii-exa-medikation-medication-statement-ibuprofen.md)... Show 5 more, [MedicationStatement/mii-exa-medikation-medication-statement-intravenous-use](MedicationStatement-mii-exa-medikation-medication-statement-intravenous-use.md), [MedicationStatement/mii-exa-medikation-medication-statement-offset](MedicationStatement-mii-exa-medikation-medication-statement-offset.md), [MedicationStatement/mii-exa-medikation-medication-statement-periodisches-intervall](MedicationStatement-mii-exa-medikation-medication-statement-periodisches-intervall.md), [MedicationStatement/mii-exa-medikation-medication-statement-zopiclon](MedicationStatement-mii-exa-medikation-medication-statement-zopiclon.md) and [MedicationStatement/mii-exa-medikation-medication-statement](MedicationStatement-mii-exa-medikation-medication-statement.md)
* CapabilityStatements using this Profile: [MII CPS Medikation CapabilityStatement](CapabilityStatement-mii-cps-medikation-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.medikation|current/StructureDefinition/StructureDefinition-mii-pr-medikation-medication-statement.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html) 

#### Terminology Bindings (Differential)

#### Constraints

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html) 

** Summary **

Mandatory: 1 element(56 nested mandatory elements)
 Must-Support: 136 elements

**Structures**

This structure refers to these other structures:

* [MII PR Medikation Medication (https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication)](StructureDefinition-mii-pr-medikation-medication.md)
* [Dosage DE (http://ig.fhir.de/igs/medication/StructureDefinition/DosageDE)](http://ig.fhir.de/igs/medication/1.0.7/StructureDefinition-DosageDE.html)
* [SimpleQuantity (http://hl7.org/fhir/StructureDefinition/SimpleQuantity)](http://hl7.org/fhir/R4/datatypes.html#SimpleQuantity)
* [SimpleQuantity (http://hl7.org/fhir/StructureDefinition/SimpleQuantity|4.0.1)](http://hl7.org/fhir/R4/datatypes.html#SimpleQuantity)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of MedicationStatement.category.coding
* The element 1 is sliced based on the value of MedicationStatement.medication[x]
* The element 1 is sliced based on the value of MedicationStatement.medication[x].coding
* The element 1 is sliced based on the value of MedicationStatement.effective[x]
* The element 1 is sliced based on the value of MedicationStatement.dosage.asNeeded[x]
* The element 1 is sliced based on the value of MedicationStatement.dosage.site.coding
* The element 1 is sliced based on the value of MedicationStatement.dosage.route.coding
* The element 1 is sliced based on the value of MedicationStatement.dosage.doseAndRate.rate[x]

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html) 

#### Terminology Bindings (Differential)

#### Constraints

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html) 

** Summary **

Mandatory: 1 element(56 nested mandatory elements)
 Must-Support: 136 elements

**Structures**

This structure refers to these other structures:

* [MII PR Medikation Medication (https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication)](StructureDefinition-mii-pr-medikation-medication.md)
* [Dosage DE (http://ig.fhir.de/igs/medication/StructureDefinition/DosageDE)](http://ig.fhir.de/igs/medication/1.0.7/StructureDefinition-DosageDE.html)
* [SimpleQuantity (http://hl7.org/fhir/StructureDefinition/SimpleQuantity)](http://hl7.org/fhir/R4/datatypes.html#SimpleQuantity)
* [SimpleQuantity (http://hl7.org/fhir/StructureDefinition/SimpleQuantity|4.0.1)](http://hl7.org/fhir/R4/datatypes.html#SimpleQuantity)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of MedicationStatement.category.coding
* The element 1 is sliced based on the value of MedicationStatement.medication[x]
* The element 1 is sliced based on the value of MedicationStatement.medication[x].coding
* The element 1 is sliced based on the value of MedicationStatement.effective[x]
* The element 1 is sliced based on the value of MedicationStatement.dosage.asNeeded[x]
* The element 1 is sliced based on the value of MedicationStatement.dosage.site.coding
* The element 1 is sliced based on the value of MedicationStatement.dosage.route.coding
* The element 1 is sliced based on the value of MedicationStatement.dosage.doseAndRate.rate[x]

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-medikation-medication-statement.csv), [Excel](../StructureDefinition-mii-pr-medikation-medication-statement.xlsx), [Schematron](../StructureDefinition-mii-pr-medikation-medication-statement.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-medikation-medication-statement",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement",
  "version" : "2026.0.1",
  "name" : "MII_PR_Medikation_MedicationStatement",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_PR_Medikation_MedicationStatement"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII PR Medikation MedicationStatement",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de-DE"
      },
      {
        "url" : "content",
        "valueString" : "Medikationseintrag"
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
        "valueString" : "Medication statement"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "date" : "2025-12-18",
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
  "description" : "Das MedicationStatement kann anzeigen, dass der Patient ein Medikament zur Zeit einnimmt, in der Vergangenheit genommen hat oder in Zukunft einnehmen wird. Dabei kann es sich sowohl um verschreibungspflichtige Medikamente handeln, wie auch um OTC-Präparate, welche ein Patient in Eigenverantwortung einnimmt.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de-DE"
      },
      {
        "url" : "content",
        "valueString" : "Ein Bericht oder Dokumentation über den Konsum einer Medikation."
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
        "valueString" : "A record of a medication that is being consumed by a patient."
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
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationStatement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationStatement",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationStatement",
      "path" : "MedicationStatement"
    },
    {
      "id" : "MedicationStatement.id",
      "path" : "MedicationStatement.id",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.meta",
      "path" : "MedicationStatement.meta",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.meta.source",
      "path" : "MedicationStatement.meta.source",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.meta.profile",
      "path" : "MedicationStatement.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.identifier",
      "path" : "MedicationStatement.identifier",
      "short" : "Identifikator",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Identifikator"
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
            "valueString" : "Identifier"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ein Identifikator für den Medikationseintrag",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ein Identifikator für den Medikationseintrag"
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
            "valueString" : "An identifier for this medication statement"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.basedOn",
      "path" : "MedicationStatement.basedOn",
      "short" : "Basiert auf",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Basiert auf"
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
            "valueString" : "Based on"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ein Plan oder eine Anforderung, die durch den Medikationseintrag erfüllt wird.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ein Plan oder eine Anforderung, die durch den Medikationseintrag erfüllt wird."
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
            "valueString" : "A plan, proposal or order that is fulfilled in whole or in part by this event."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.partOf",
      "path" : "MedicationStatement.partOf",
      "short" : "Teil von",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Teil von"
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
            "valueString" : "Part of"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ein größeres Ereignis, von dem dieses spezielle Ereignis ein Bestandteil oder Schritt ist.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ein größeres Ereignis, von dem dieses spezielle Ereignis ein Bestandteil oder Schritt ist."
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
            "valueString" : "A larger event of which this particular event is a component or step."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.status",
      "path" : "MedicationStatement.status",
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
      "definition" : "aktiv | abgeschlossen | Eingabe fehlerhaft | intendiert | gestoppt | pausiert | unbekannt| nicht eingenommen",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "aktiv | abgeschlossen | Eingabe fehlerhaft | intendiert | gestoppt | pausiert | unbekannt| nicht eingenommen"
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
            "valueString" : "active | completed | entered-in-error | intended | stopped | on-hold | unknown | not-taken"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.category",
      "path" : "MedicationStatement.category",
      "short" : "Kategorie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Kategorie"
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
            "valueString" : "Category"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Eine Kategorie, die dem Medikationseintrag zugeordnet ist.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Eine Kategorie, die dem Medikationseintrag zugeordnet ist."
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
            "valueString" : "A category assigned to the medication statement."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.category.coding",
      "path" : "MedicationStatement.category.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "MedicationStatement.category.coding:usageCategory",
      "path" : "MedicationStatement.category.coding",
      "sliceName" : "usageCategory",
      "short" : "Kategorie Anwendungsbereich",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Kategorie Anwendungsbereich"
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
            "valueString" : "Usage Category"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Kategorie, die den Anwendungsbereich des Medikationseintrags beschreibt.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Kategorie, die den Anwendungsbereich des Medikationseintrags beschreibt."
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
            "valueString" : "Usage Category for the medication statement."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "patternCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/medication-statement-category"
      },
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/medication-statement-category"
      }
    },
    {
      "id" : "MedicationStatement.category.coding:contextCode",
      "path" : "MedicationStatement.category.coding",
      "sliceName" : "contextCode",
      "short" : "Kategorie Kontext",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Kategorie Kontext"
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
            "valueString" : "Context Category"
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
            "valueString" : "outpatient contact | inpatient stay | inpatient admission | inpatient discharge"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung"
      },
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/fallkontext"
      }
    },
    {
      "id" : "MedicationStatement.medication[x]",
      "path" : "MedicationStatement.medication[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "short" : "Medikation",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Medikation"
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
            "valueString" : "Medication"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Das Medikament, welches Gegenstand des Eintrags ist. Code oder Referenz auf Medication-Objekt.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Medikation, welche Gegenstand des Eintrags ist. Code oder Referenz auf Medication-Objekt."
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
            "valueString" : "The medication that the statement is about. Code or a reference to a Medication resource."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationReference",
      "path" : "MedicationStatement.medication[x]",
      "sliceName" : "medicationReference",
      "short" : "Medikation Referenz",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Medikation Referenz"
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
            "valueString" : "Medication Reference"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Referenz auf ein Medication-Ressource.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Referenz auf eine Medication-Ressource."
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
            "valueString" : "Reference to a Medication resource."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept",
      "path" : "MedicationStatement.medication[x]",
      "sliceName" : "medicationCodeableConcept",
      "short" : "Medikation Code",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Medikation Code"
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
            "valueString" : "Medication code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Code für das Medikament, welches Gegenstand des Eintrags ist.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Code für das Medikament, welches Gegenstand des Eintrags ist."
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
            "valueString" : "Code for the medication that the statement is about."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept.coding",
      "path" : "MedicationStatement.medication[x].coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept.coding:Pharmazentralnummer",
      "path" : "MedicationStatement.medication[x].coding",
      "sliceName" : "Pharmazentralnummer",
      "short" : "PZN Code",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "PZN Code"
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
            "valueString" : "PZN code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ein Verweis auf einen von der Pharmazentralnummer (PZN) definierten Code",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ein Verweis auf einen von der Pharmazentralnummer definierten Code"
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
            "valueString" : "A reference to a code defined by Pharmazentralnummer"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "patternCoding" : {
        "system" : "http://fhir.de/CodeSystem/ifa/pzn"
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept.coding:Pharmazentralnummer.system",
      "path" : "MedicationStatement.medication[x].coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept.coding:Pharmazentralnummer.code",
      "path" : "MedicationStatement.medication[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept.coding:atcClassDe",
      "path" : "MedicationStatement.medication[x].coding",
      "sliceName" : "atcClassDe",
      "short" : "ATC Klassifikation deutsche Version",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "ATC Code"
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
            "valueString" : "ATC code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "ATC-Codes für Fertigarzneimittel bspw. von Kombiprodukten",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ein Verweis auf einen von der deutschen Fassung der Anatomisch-Therapeutisch-Chemischen Klassifikation definierten Code"
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
            "valueString" : "A reference to a code defined by the German edition of the Anatomical Therapeutic Chemical classification system"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "patternCoding" : {
        "system" : "http://fhir.de/CodeSystem/bfarm/atc"
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/mii-vs-medikation-atc"
      }
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept.coding:atcClassDe.system",
      "path" : "MedicationStatement.medication[x].coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept.coding:atcClassDe.code",
      "path" : "MedicationStatement.medication[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept.coding:atcClassEn",
      "path" : "MedicationStatement.medication[x].coding",
      "sliceName" : "atcClassEn",
      "short" : "Anatomical Therapeutic Chemical Classification System",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "ATC WHO Code"
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
            "valueString" : "ATC WHO code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "ATC Classification International WHO Version",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ein Verweis auf einen von der WHO Anatomisch-Therapeutisch-Chemischen Klassifikation definierten Code"
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
            "valueString" : "A reference to a code defined by the WHO edition of the Anatomical Therapeutic Chemical classification system"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "patternCoding" : {
        "system" : "http://www.whocc.no/atc"
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept.coding:atcClassEn.system",
      "path" : "MedicationStatement.medication[x].coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept.coding:atcClassEn.code",
      "path" : "MedicationStatement.medication[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept.coding:UNII",
      "path" : "MedicationStatement.medication[x].coding",
      "sliceName" : "UNII",
      "short" : "Unique Ingredient Identifier",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Unique Ingredient Identifier"
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
            "valueString" : "Unique Ingredient Identifier"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Global Susbstance Registration System Unique Ingredient Identifier. Soll nur eingesetzt werden, wenn weder ATC-Code noch PZN existiert, z.B. bei experimentellen Krebsmedikamenten.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ein Unique Ingredient Identifier (UNII) aus dem Global Substance Registration System der amerikanischen Food & Drug Administration"
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
            "valueString" : "A Unique Ingredient Identifier (UNII) from the american Food & Drug Administration's Global Substance Registration System"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "patternCoding" : {
        "system" : "http://fdasis.nlm.nih.gov"
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept.coding:UNII.system",
      "path" : "MedicationStatement.medication[x].coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept.coding:UNII.code",
      "path" : "MedicationStatement.medication[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept.text",
      "path" : "MedicationStatement.medication[x].text",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.subject",
      "path" : "MedicationStatement.subject",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.context",
      "path" : "MedicationStatement.context",
      "short" : "Kontext",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Kontext"
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
            "valueString" : "Context"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Fall oder Kontakt in Verbindung mit dem Medikationseintrag",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Fall oder Kontakt in Verbindung mit dem Medikationseintrag"
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
            "valueString" : "Encounter / Episode associated with MedicationStatement"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.effective[x]",
      "path" : "MedicationStatement.effective[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Zeitpunkt oder Zeitraum",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zeitpunkt oder Zeitraum"
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
            "valueString" : "Date or period"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Die Zeitspanne, in der angegeben wird, dass der Patient das Medikament eingenommen hat oder einnehmen wird.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Die Zeitspanne, in der angegeben wird, dass der Patient das Medikament eingenommen hat oder einnehmen wird."
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
            "valueString" : "The interval of time during which it is being asserted that the patient is/was/will be taking the medication."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.effective[x]:effectiveDateTime",
      "path" : "MedicationStatement.effective[x]",
      "sliceName" : "effectiveDateTime",
      "short" : "Zeitpunkt",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zeitpunkt"
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
            "valueString" : "Date time"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Der Zeitpunkt, an dem der Patient das Medikament eingenommen hat oder einnehmen wird.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Der Zeitpunkt, an dem der Patient das Medikament eingenommen hat oder einnehmen wird."
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
            "valueString" : "The date time when the medication was or will be taken."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.effective[x]:effectivePeriod",
      "path" : "MedicationStatement.effective[x]",
      "sliceName" : "effectivePeriod",
      "short" : "Zeitraum",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zeitraum"
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
            "valueString" : "Period"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Der Zeitraum, in dem der Patient das Medikament eingenommen hat oder einnehmen wird.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Der Zeitraum, in dem der Patient das Medikament eingenommen hat oder einnehmen wird."
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
            "valueString" : "The interval of time during which the patient is/was/will be taking the medication."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dateAsserted",
      "path" : "MedicationStatement.dateAsserted",
      "short" : "Datum Bestätigung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum Bestätigung"
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
            "valueString" : "Date asserted"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Das Datum, an dem der Medikationseintrag von der Informationsquelle bestätigt wurde.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Das Datum, an dem der Medikationseintrag von der Informationsquelle bestätigt wurde."
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
            "valueString" : "The date when the medication statement was asserted by the information source."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.informationSource",
      "path" : "MedicationStatement.informationSource",
      "short" : "Informationsquelle",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Informationsquelle"
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
            "valueString" : "Information source"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Die Person oder Organisation, die die Information über die Einnahme dieses Medikaments bereitgestellt hat.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Die Person oder Organisation, die die Information über die Einnahme dieses Medikaments bereitgestellt hat."
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
            "valueString" : "The person or organization that provided the information about the taking of this medication."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.reasonCode",
      "path" : "MedicationStatement.reasonCode",
      "short" : "Grund Code",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Grund Code"
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
            "valueString" : "Reason code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Grund für den Medikationseintrag als Code.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Grund für den Medikationseintrag als Code."
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
            "valueString" : "Reason for the medication statement as a code."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.reasonReference",
      "path" : "MedicationStatement.reasonReference",
      "short" : "Grund Referenz",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Grund Referenz"
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
            "valueString" : "Reason reference"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Grund für den Medikationseintrag als Referenz auf Condition- oder Observation-Ressource.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Grund für den Medikationseintrag als Referenz auf Condition- oder Observation-Ressource."
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
            "valueString" : "Condition or observation that supports why the medication is being/was taken"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.note",
      "path" : "MedicationStatement.note",
      "short" : "Hinweis",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Hinweis"
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
            "valueString" : "Note"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Zusätzliche Informationen zum Medikationseintrag als Freitext.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zusätzliche Informationen zum Medikationseintrag als Freitext."
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
            "valueString" : "Additional information about the medication statement as free text."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage",
      "path" : "MedicationStatement.dosage",
      "short" : "Dosierung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Dosierung"
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
            "valueString" : "Dosage"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Details zur Dosierung des Medikamentes.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Details zur Dosierung des Medikamentes."
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
            "valueString" : "Details of how the medication is/was taken or should be taken."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "Dosage",
        "profile" : ["http://ig.fhir.de/igs/medication/StructureDefinition/DosageDE"]
      }],
      "constraint" : [{
        "key" : "dsg-1",
        "severity" : "error",
        "human" : "If present, dosage must include free text or structured data",
        "expression" : "text.exists() or doseAndRate.exists()",
        "source" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.sequence",
      "path" : "MedicationStatement.dosage.sequence",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.timing.event",
      "path" : "MedicationStatement.dosage.timing.event",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.timing.repeat.bounds[x]:boundsDuration",
      "path" : "MedicationStatement.dosage.timing.repeat.bounds[x]",
      "sliceName" : "boundsDuration",
      "type" : [{
        "code" : "Duration"
      }]
    },
    {
      "id" : "MedicationStatement.dosage.timing.repeat.bounds[x]:boundsDuration.value",
      "path" : "MedicationStatement.dosage.timing.repeat.bounds[x].value",
      "min" : 1
    },
    {
      "id" : "MedicationStatement.dosage.timing.repeat.bounds[x]:boundsDuration.system",
      "path" : "MedicationStatement.dosage.timing.repeat.bounds[x].system",
      "min" : 1
    },
    {
      "id" : "MedicationStatement.dosage.timing.repeat.bounds[x]:boundsDuration.code",
      "path" : "MedicationStatement.dosage.timing.repeat.bounds[x].code",
      "min" : 1
    },
    {
      "id" : "MedicationStatement.dosage.timing.repeat.bounds[x]:boundsRange",
      "path" : "MedicationStatement.dosage.timing.repeat.bounds[x]",
      "sliceName" : "boundsRange",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.timing.repeat.bounds[x]:boundsRange.low",
      "path" : "MedicationStatement.dosage.timing.repeat.bounds[x].low",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.timing.repeat.bounds[x]:boundsRange.low.value",
      "path" : "MedicationStatement.dosage.timing.repeat.bounds[x].low.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.timing.repeat.bounds[x]:boundsRange.low.unit",
      "path" : "MedicationStatement.dosage.timing.repeat.bounds[x].low.unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.timing.repeat.bounds[x]:boundsRange.low.system",
      "path" : "MedicationStatement.dosage.timing.repeat.bounds[x].low.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.timing.repeat.bounds[x]:boundsRange.low.code",
      "path" : "MedicationStatement.dosage.timing.repeat.bounds[x].low.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.timing.repeat.bounds[x]:boundsRange.high",
      "path" : "MedicationStatement.dosage.timing.repeat.bounds[x].high",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.timing.repeat.bounds[x]:boundsRange.high.value",
      "path" : "MedicationStatement.dosage.timing.repeat.bounds[x].high.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.timing.repeat.bounds[x]:boundsRange.high.unit",
      "path" : "MedicationStatement.dosage.timing.repeat.bounds[x].high.unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.timing.repeat.bounds[x]:boundsRange.high.system",
      "path" : "MedicationStatement.dosage.timing.repeat.bounds[x].high.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.timing.repeat.bounds[x]:boundsRange.high.code",
      "path" : "MedicationStatement.dosage.timing.repeat.bounds[x].high.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.timing.repeat.bounds[x]:boundsPeriod",
      "path" : "MedicationStatement.dosage.timing.repeat.bounds[x]",
      "sliceName" : "boundsPeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.timing.repeat.bounds[x]:boundsPeriod.start",
      "path" : "MedicationStatement.dosage.timing.repeat.bounds[x].start",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.timing.repeat.bounds[x]:boundsPeriod.end",
      "path" : "MedicationStatement.dosage.timing.repeat.bounds[x].end",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.timing.repeat.count",
      "path" : "MedicationStatement.dosage.timing.repeat.count",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.timing.repeat.countMax",
      "path" : "MedicationStatement.dosage.timing.repeat.countMax",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.timing.repeat.duration",
      "path" : "MedicationStatement.dosage.timing.repeat.duration",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.timing.repeat.durationMax",
      "path" : "MedicationStatement.dosage.timing.repeat.durationMax",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.timing.repeat.durationUnit",
      "path" : "MedicationStatement.dosage.timing.repeat.durationUnit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.timing.repeat.frequencyMax",
      "path" : "MedicationStatement.dosage.timing.repeat.frequencyMax",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.timing.repeat.periodMax",
      "path" : "MedicationStatement.dosage.timing.repeat.periodMax",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.timing.repeat.offset",
      "path" : "MedicationStatement.dosage.timing.repeat.offset",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.asNeeded[x]",
      "path" : "MedicationStatement.dosage.asNeeded[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.asNeeded[x]:asNeededBoolean",
      "path" : "MedicationStatement.dosage.asNeeded[x]",
      "sliceName" : "asNeededBoolean",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.asNeeded[x]:asNeededCodeableConcept",
      "path" : "MedicationStatement.dosage.asNeeded[x]",
      "sliceName" : "asNeededCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.site",
      "path" : "MedicationStatement.dosage.site",
      "short" : "Verabreichungsort",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verabreichungsort"
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
            "valueString" : "Site of administration"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Körperstelle, an der das Medikament verabreicht wurde/wird oder werden soll.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Körperstelle, an der das Medikament verabreicht wurde/wird oder werden soll."
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
            "valueString" : "Anatomic site where the medication was/is or should be administered."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.site.coding",
      "path" : "MedicationStatement.dosage.site.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.site.coding:SNOMED",
      "path" : "MedicationStatement.dosage.site.coding",
      "sliceName" : "SNOMED",
      "short" : "SNOMED CT Code",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "SNOMED CT Code"
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
            "valueString" : "SNOMED CT code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ein Verweis auf einen von SNOMED CT definierten Code",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ein Verweis auf einen von SNOMED CT definierten Code"
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
            "valueString" : "A reference to a code defined by SNOMED CT"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "patternCoding" : {
        "system" : "http://snomed.info/sct"
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "example",
        "description" : "target site IPS",
        "valueSet" : "http://hl7.org/fhir/uv/ips/ValueSet/target-site-uv-ips"
      }
    },
    {
      "id" : "MedicationStatement.dosage.site.coding:SNOMED.system",
      "path" : "MedicationStatement.dosage.site.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.site.coding:SNOMED.code",
      "path" : "MedicationStatement.dosage.site.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.route",
      "path" : "MedicationStatement.dosage.route",
      "short" : "Verabreichungsweg",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verabreichungsweg"
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
            "valueString" : "Route of administration"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Der Weg, auf dem das Medikament verabreicht wurde/wird oder werden soll.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Der Weg, auf dem das Medikament verabreicht wurde/wird oder werden soll."
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
            "valueString" : "How drug was administered or should be administered."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.route.coding",
      "path" : "MedicationStatement.dosage.route.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.route.coding:EDQM",
      "path" : "MedicationStatement.dosage.route.coding",
      "sliceName" : "EDQM",
      "short" : "EDQM Code",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "EDQM Code"
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
            "valueString" : "EDQM code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ein Verweis auf einen durch EDQM Standard Terms definierten Code",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ein Verweis auf einen durch EDQM Standard Terms definierten Code"
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
            "valueString" : "A reference to a code defined by EDQM Standard Terms"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://standardterms.edqm.eu"
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "description" : "EDQM Standard Terms",
        "valueSet" : "http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration"
      }
    },
    {
      "id" : "MedicationStatement.dosage.route.coding:EDQM.system",
      "path" : "MedicationStatement.dosage.route.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.route.coding:EDQM.code",
      "path" : "MedicationStatement.dosage.route.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.route.coding:SNOMED",
      "path" : "MedicationStatement.dosage.route.coding",
      "sliceName" : "SNOMED",
      "short" : "SNOMED CT Code",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "SNOMED CT Code"
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
            "valueString" : "SNOMED CT code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ein Verweis auf einen von SNOMED CT definierten Code",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ein Verweis auf einen von SNOMED CT definierten Code"
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
            "valueString" : "A reference to a code defined by SNOMED CT"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://snomed.info/sct"
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.route.coding:SNOMED.system",
      "path" : "MedicationStatement.dosage.route.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.route.coding:SNOMED.code",
      "path" : "MedicationStatement.dosage.route.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.dose[x]",
      "path" : "MedicationStatement.dosage.doseAndRate.dose[x]",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.dose[x]:doseQuantity",
      "path" : "MedicationStatement.dosage.doseAndRate.dose[x]",
      "sliceName" : "doseQuantity",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }]
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.dose[x]:doseQuantity.value",
      "path" : "MedicationStatement.dosage.doseAndRate.dose[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.dose[x]:doseQuantity.unit",
      "path" : "MedicationStatement.dosage.doseAndRate.dose[x].unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.dose[x]:doseQuantity.system",
      "path" : "MedicationStatement.dosage.doseAndRate.dose[x].system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.dose[x]:doseQuantity.code",
      "path" : "MedicationStatement.dosage.doseAndRate.dose[x].code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.dose[x]:doseRange",
      "path" : "MedicationStatement.dosage.doseAndRate.dose[x]",
      "sliceName" : "doseRange",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.dose[x]:doseRange.low",
      "path" : "MedicationStatement.dosage.doseAndRate.dose[x].low",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.dose[x]:doseRange.low.value",
      "path" : "MedicationStatement.dosage.doseAndRate.dose[x].low.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.dose[x]:doseRange.low.unit",
      "path" : "MedicationStatement.dosage.doseAndRate.dose[x].low.unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.dose[x]:doseRange.low.system",
      "path" : "MedicationStatement.dosage.doseAndRate.dose[x].low.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.dose[x]:doseRange.low.code",
      "path" : "MedicationStatement.dosage.doseAndRate.dose[x].low.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.dose[x]:doseRange.high.value",
      "path" : "MedicationStatement.dosage.doseAndRate.dose[x].high.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.dose[x]:doseRange.high.unit",
      "path" : "MedicationStatement.dosage.doseAndRate.dose[x].high.unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.dose[x]:doseRange.high.system",
      "path" : "MedicationStatement.dosage.doseAndRate.dose[x].high.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.dose[x]:doseRange.high.code",
      "path" : "MedicationStatement.dosage.doseAndRate.dose[x].high.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateRatio",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x]",
      "sliceName" : "rateRatio",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Ratio"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateRatio.numerator",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x].numerator",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateRatio.numerator.value",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x].numerator.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateRatio.numerator.unit",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x].numerator.unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateRatio.numerator.system",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x].numerator.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateRatio.numerator.code",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x].numerator.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateRatio.denominator",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x].denominator",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateRatio.denominator.value",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x].denominator.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateRatio.denominator.unit",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x].denominator.unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateRatio.denominator.system",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x].denominator.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateRatio.denominator.code",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x].denominator.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateRange",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x]",
      "sliceName" : "rateRange",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateRange.low",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x].low",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateRange.low.value",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x].low.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateRange.low.unit",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x].low.unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateRange.low.system",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x].low.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateRange.low.code",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x].low.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateRange.high",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x].high",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateRange.high.value",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x].high.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateRange.high.unit",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x].high.unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateRange.high.system",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x].high.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateRange.high.code",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x].high.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateQuantity",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x]",
      "sliceName" : "rateQuantity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity|4.0.1"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateQuantity.value",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateQuantity.unit",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x].unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateQuantity.system",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x].system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateQuantity.code",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x].code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.maxDosePerPeriod",
      "path" : "MedicationStatement.dosage.maxDosePerPeriod",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.maxDosePerPeriod.numerator",
      "path" : "MedicationStatement.dosage.maxDosePerPeriod.numerator",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.maxDosePerPeriod.numerator.value",
      "path" : "MedicationStatement.dosage.maxDosePerPeriod.numerator.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.maxDosePerPeriod.numerator.unit",
      "path" : "MedicationStatement.dosage.maxDosePerPeriod.numerator.unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.maxDosePerPeriod.numerator.system",
      "path" : "MedicationStatement.dosage.maxDosePerPeriod.numerator.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.maxDosePerPeriod.numerator.code",
      "path" : "MedicationStatement.dosage.maxDosePerPeriod.numerator.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.maxDosePerPeriod.denominator",
      "path" : "MedicationStatement.dosage.maxDosePerPeriod.denominator",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.maxDosePerPeriod.denominator.value",
      "path" : "MedicationStatement.dosage.maxDosePerPeriod.denominator.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.maxDosePerPeriod.denominator.unit",
      "path" : "MedicationStatement.dosage.maxDosePerPeriod.denominator.unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.maxDosePerPeriod.denominator.system",
      "path" : "MedicationStatement.dosage.maxDosePerPeriod.denominator.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.maxDosePerPeriod.denominator.code",
      "path" : "MedicationStatement.dosage.maxDosePerPeriod.denominator.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.maxDosePerAdministration",
      "path" : "MedicationStatement.dosage.maxDosePerAdministration",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.maxDosePerAdministration.value",
      "path" : "MedicationStatement.dosage.maxDosePerAdministration.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.maxDosePerAdministration.unit",
      "path" : "MedicationStatement.dosage.maxDosePerAdministration.unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.maxDosePerAdministration.system",
      "path" : "MedicationStatement.dosage.maxDosePerAdministration.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.maxDosePerAdministration.code",
      "path" : "MedicationStatement.dosage.maxDosePerAdministration.code",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
