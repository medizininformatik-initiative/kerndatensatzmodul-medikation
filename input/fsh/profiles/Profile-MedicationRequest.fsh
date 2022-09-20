Profile: MII_PR_Medikation_MedicationRequest
Parent: MedicationRequest
Id: mii-pr-medikation-medication-request
Title: "MII PR Medikation MedicationRequest"
Description: "Dieses Profil beschreibt die Verordnung einer Medikation."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest"
* insert Translation(^name, en-US, MII_PR_Medikation_MedicationRequest)
* insert Translation(^title, en-US, MII PR Medikation MedicationRequest)
* insert Translation(^description, en-US, An order or request for both supply of the medication and the instructions for administration of the medication to a patient.)
* ^status = #draft
* ^date = "2022-05-18"
* insert Publisher
* . ^comment = "MI-I Medikamentenverordnung"
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* doNotPerform 0..0
* category MS
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
* encounter MS
* dosageInstruction MS