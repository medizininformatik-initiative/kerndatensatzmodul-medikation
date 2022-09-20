Profile: MII_PR_Medikation_MedicationStatement
Parent: MedicationStatement
Id: mii-pr-medikation-medication-statement
Title: "MII PR Medikation MedicationStatement"
Description: "Das MedicationStatement kann anzeigen, dass der Patient ein Medikament zur Zeit einnimmt, in der Vergangenheit genommen hat oder in Zukunft einnehmen wird. Dabei kann es sich sowohl um verschreibungspflichtige Medikamente handeln, wie auch um OTC-Präparate, welche ein Patient in Eigenverantwortung einnimmt."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"
* insert Translation(^name, en-US, MII_PR_Medikation_MedicationStatement)
* insert Translation(^title, en-US, MII PR Medikation MedicationStatement)
* insert Translation(^description, en-US, A record of a medication that is being consumed by a patient.)
* ^status = #active
* ^date = "2022-07-13"
* insert Publisher
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* partOf MS
* status MS
* category MS
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains
    usageCategory 0..* and
    contextCode 0..1
* category.coding[usageCategory] ^patternCoding.system = "http://terminology.hl7.org/CodeSystem/medication-statement-category"
* category.coding[usageCategory] from http://hl7.org/fhir/ValueSet/medication-statement-category (required)
* category.coding[contextCode] ^patternCoding.system = "urn:oid:1.3.6.1.4.1.19376.3.276.1.5.16"
* category.coding[contextCode] from https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/fallkontext (required)
* medication[x] MS
* medication[x] only CodeableConcept or Reference
* medication[x] ^slicing.discriminator.type = #type
* medication[x] ^slicing.discriminator.path = "$this"
* medication[x] ^slicing.rules = #open
* medicationReference only Reference
* medicationCodeableConcept only CodeableConcept
* medicationCodeableConcept MS
* medicationCodeableConcept.coding MS
* medicationCodeableConcept.coding ^slicing.discriminator.type = #pattern
* medicationCodeableConcept.coding ^slicing.discriminator.path = "$this"
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept.coding contains
    Pharmazentralnummer 0..* MS and
    atcClassDe 0..* MS and
    atcClassEn 0..* MS
* medicationCodeableConcept.coding[Pharmazentralnummer] ^sliceName = "Pharmazentralnummer"
* medicationCodeableConcept.coding[Pharmazentralnummer] ^patternCoding.system = "http://fhir.de/CodeSystem/ifa/pzn"
* medicationCodeableConcept.coding[Pharmazentralnummer] ^mustSupport = true
* medicationCodeableConcept.coding[Pharmazentralnummer].system 1.. MS
* medicationCodeableConcept.coding[Pharmazentralnummer].code 1.. MS
* medicationCodeableConcept.coding[atcClassDe] from $vs-atc (required)
* medicationCodeableConcept.coding[atcClassDe] ^sliceName = "atcClassDe"
* medicationCodeableConcept.coding[atcClassDe] ^short = "ATC Klassifikation deutsche Version"
* medicationCodeableConcept.coding[atcClassDe] ^definition = "ATC-Codes für Fertigarzneimittel bspw. von Kombiprodukten"
* medicationCodeableConcept.coding[atcClassDe] ^patternCoding.system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe] ^mustSupport = true
* medicationCodeableConcept.coding[atcClassDe].system 1.. MS
* medicationCodeableConcept.coding[atcClassDe].code 1.. MS
* medicationCodeableConcept.coding[atcClassEn] ^sliceName = "atcClassEn"
* medicationCodeableConcept.coding[atcClassEn] ^short = "Anatomical Therapeutic Chemical Classification System"
* medicationCodeableConcept.coding[atcClassEn] ^definition = "ATC Classification International WHO Version"
* medicationCodeableConcept.coding[atcClassEn] ^patternCoding.system = "http://www.whocc.no/atc"
* medicationCodeableConcept.coding[atcClassEn] ^mustSupport = true
* medicationCodeableConcept.coding[atcClassEn].system 1.. MS
* medicationCodeableConcept.coding[atcClassEn].code 1.. MS
* medicationCodeableConcept.text MS
* subject only https://www.medizininformatik-initiative.de/fhir/core/StructureDefinition/MII-Reference
* subject MS
* context MS
* effective[x] 1.. MS
* reasonReference MS
* dosage MS
* dosage.text MS
* dosage.timing MS
* dosage.site MS
* dosage.site.coding MS
* dosage.site.coding ^slicing.discriminator.type = #pattern
* dosage.site.coding ^slicing.discriminator.path = "$this"
* dosage.site.coding ^slicing.rules = #open
* dosage.site.coding contains
    SNOMED 0..* MS
* dosage.site.coding[SNOMED] from http://hl7.org/fhir/uv/ips/ValueSet/target-site-uv-ips (example)
* dosage.site.coding[SNOMED] ^sliceName = "SNOMED"
* dosage.site.coding[SNOMED] ^patternCoding.system = "http://snomed.info/sct"
* dosage.site.coding[SNOMED] ^binding.description = "target site IPS"
* dosage.site.coding[SNOMED].system 1.. MS
* dosage.site.coding[SNOMED].code 1.. MS
* dosage.route MS
* dosage.route.coding MS
* dosage.route.coding ^slicing.discriminator.type = #pattern
* dosage.route.coding ^slicing.discriminator.path = "$this"
* dosage.route.coding ^slicing.rules = #open
* dosage.route.coding contains
    EDQM 0..1 MS and
    SNOMED 0..1 MS
* dosage.route.coding[EDQM] from http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration (preferred)
* dosage.route.coding[EDQM] ^sliceName = "EDQM"
* dosage.route.coding[EDQM] ^patternCoding.system = "http://standardterms.edqm.eu"
* dosage.route.coding[EDQM] ^mustSupport = true
* dosage.route.coding[EDQM] ^binding.description = "EDQM Standard Terms"
* dosage.route.coding[EDQM].system 1.. MS
* dosage.route.coding[EDQM].code 1.. MS
* dosage.route.coding[SNOMED] ^sliceName = "SNOMED"
* dosage.route.coding[SNOMED] ^patternCoding.system = "http://snomed.info/sct"
* dosage.route.coding[SNOMED] ^mustSupport = true
* dosage.route.coding[SNOMED].system 1.. MS
* dosage.route.coding[SNOMED].code 1.. MS
* dosage.doseAndRate MS
* dosage.doseAndRate.dose[x] MS
* dosage.doseAndRate.rate[x] MS