Profile: MII_PR_Medikation_MedicationRequest
Parent: MedicationRequest
Id: mii-pr-medikation-medication-request
Title: "MII PR Medikation MedicationRequest"
Description: "Dieses Profil beschreibt die Verordnung einer Medikation."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest"
* insert Translation(^name, en-US, MII_PR_Medikation_MedicationRequest)
* insert Translation(^title, en-US, MII PR Medikation MedicationRequest)
* insert Translation(^description, en-US, An order or request for both supply of the medication and the instructions for administration of the medication to a patient.)
//* ^status = #draft
* ^date = "2022-05-18"
* insert Publisher
* . ^comment = "MI-I Medikamentenverordnung"
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* identifier MS
* doNotPerform 0..0
* status MS
* intent MS
* medication[x] MS
* medication[x] only CodeableConcept or Reference
* medication[x] ^slicing.discriminator.type = #type
* medication[x] ^slicing.discriminator.path = "$this"
* medication[x] ^slicing.rules = #open
* medicationReference MS
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
* subject MS
* subject only https://www.medizininformatik-initiative.de/fhir/core/StructureDefinition/MII-Reference
* encounter MS
* authoredOn MS
* requester MS
* recorder MS
* reasonCode MS
* reasonReference MS
* basedOn MS
* note MS
* dosageInstruction obeys dsg-1
* dosageInstruction MS
* dosageInstruction.sequence MS
* dosageInstruction.text MS
* dosageInstruction.timing MS
* dosageInstruction.timing.event MS
* dosageInstruction.timing.repeat MS
* dosageInstruction.timing.repeat.boundsDuration MS
* dosageInstruction.timing.repeat.boundsDuration ^patternDuration.system = "http://unitsofmeasure.org"
* dosageInstruction.timing.repeat.boundsDuration.value 1.. MS
* dosageInstruction.timing.repeat.boundsDuration.unit MS
* dosageInstruction.timing.repeat.boundsDuration.system 1.. MS
* dosageInstruction.timing.repeat.boundsDuration.code 1.. MS
* dosageInstruction.timing.repeat.boundsRange MS
* dosageInstruction.timing.repeat.boundsRange.low MS
* dosageInstruction.timing.repeat.boundsRange.low ^patternQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction.timing.repeat.boundsRange.low.value 1.. MS
* dosageInstruction.timing.repeat.boundsRange.low.unit MS
* dosageInstruction.timing.repeat.boundsRange.low.system 1.. MS
* dosageInstruction.timing.repeat.boundsRange.low.code 1.. MS
* dosageInstruction.timing.repeat.boundsRange.high MS
* dosageInstruction.timing.repeat.boundsRange.high ^patternQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction.timing.repeat.boundsRange.high.value 1.. MS
* dosageInstruction.timing.repeat.boundsRange.high.unit MS
* dosageInstruction.timing.repeat.boundsRange.high.system 1.. MS
* dosageInstruction.timing.repeat.boundsRange.high.code 1.. MS
* dosageInstruction.timing.repeat.boundsPeriod MS
* dosageInstruction.timing.repeat.boundsPeriod.start MS
* dosageInstruction.timing.repeat.boundsPeriod.end MS
* dosageInstruction.timing.repeat.count MS
* dosageInstruction.timing.repeat.countMax MS
* dosageInstruction.timing.repeat.duration MS
* dosageInstruction.timing.repeat.durationMax MS
* dosageInstruction.timing.repeat.durationUnit MS
* dosageInstruction.timing.repeat.frequency MS
* dosageInstruction.timing.repeat.frequencyMax MS
* dosageInstruction.timing.repeat.period MS
* dosageInstruction.timing.repeat.periodMax MS
* dosageInstruction.timing.repeat.periodUnit MS
* dosageInstruction.timing.repeat.dayOfWeek MS
* dosageInstruction.timing.repeat.timeOfDay MS
* dosageInstruction.timing.repeat.when MS
* dosageInstruction.timing.repeat.offset MS
* dosageInstruction.asNeeded[x] MS
* dosageInstruction.asNeededBoolean MS
* dosageInstruction.asNeededCodeableConcept MS
* dosageInstruction.site MS
* dosageInstruction.site.coding MS
* dosageInstruction.site.coding ^slicing.discriminator.type = #pattern
* dosageInstruction.site.coding ^slicing.discriminator.path = "$this"
* dosageInstruction.site.coding ^slicing.rules = #open
* dosageInstruction.site.coding contains
    SNOMED 0..* MS
* dosageInstruction.site.coding[SNOMED] from http://hl7.org/fhir/uv/ips/ValueSet/target-site-uv-ips (example)
* dosageInstruction.site.coding[SNOMED] ^sliceName = "SNOMED"
* dosageInstruction.site.coding[SNOMED] ^patternCoding.system = "http://snomed.info/sct"
* dosageInstruction.site.coding[SNOMED] ^binding.description = "target site IPS"
* dosageInstruction.site.coding[SNOMED].system 1.. MS
* dosageInstruction.site.coding[SNOMED].code 1.. MS
* dosageInstruction.route MS
* dosageInstruction.route.coding MS
* dosageInstruction.route.coding ^slicing.discriminator.type = #pattern
* dosageInstruction.route.coding ^slicing.discriminator.path = "$this"
* dosageInstruction.route.coding ^slicing.rules = #open
* dosageInstruction.route.coding contains
    EDQM 0..1 MS and
    SNOMED 0..1 MS
* dosageInstruction.route.coding[EDQM] from http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration (preferred)
* dosageInstruction.route.coding[EDQM] ^sliceName = "EDQM"
* dosageInstruction.route.coding[EDQM] ^patternCoding.system = "http://standardterms.edqm.eu"
* dosageInstruction.route.coding[EDQM] ^mustSupport = true
* dosageInstruction.route.coding[EDQM] ^binding.description = "EDQM Standard Terms"
* dosageInstruction.route.coding[EDQM].system 1.. MS
* dosageInstruction.route.coding[EDQM].code 1.. MS
* dosageInstruction.route.coding[SNOMED] ^sliceName = "SNOMED"
* dosageInstruction.route.coding[SNOMED] ^patternCoding.system = "http://snomed.info/sct"
* dosageInstruction.route.coding[SNOMED] ^mustSupport = true
* dosageInstruction.route.coding[SNOMED].system 1.. MS
* dosageInstruction.route.coding[SNOMED].code 1.. MS
* dosageInstruction.doseAndRate MS
* dosageInstruction.doseAndRate.dose[x] MS
* dosageInstruction.doseAndRate.doseRange MS
* dosageInstruction.doseAndRate.doseRange.low MS
* dosageInstruction.doseAndRate.doseRange.low ^patternQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction.doseAndRate.doseRange.low.value 1.. MS
* dosageInstruction.doseAndRate.doseRange.low.unit MS
* dosageInstruction.doseAndRate.doseRange.low.system 1.. MS
* dosageInstruction.doseAndRate.doseRange.low.code 1.. MS
* dosageInstruction.doseAndRate.doseRange.high MS
* dosageInstruction.doseAndRate.doseRange.high ^patternQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction.doseAndRate.doseRange.high.value 1.. MS
* dosageInstruction.doseAndRate.doseRange.high.unit MS
* dosageInstruction.doseAndRate.doseRange.high.system 1.. MS
* dosageInstruction.doseAndRate.doseRange.high.code 1.. MS
* dosageInstruction.doseAndRate.doseQuantity MS
* dosageInstruction.doseAndRate.doseRange.low MS
* dosageInstruction.doseAndRate.doseRange.low ^patternQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction.doseAndRate.doseRange.low.value 1.. MS
* dosageInstruction.doseAndRate.doseRange.low.unit MS
* dosageInstruction.doseAndRate.doseRange.low.system 1.. MS
* dosageInstruction.doseAndRate.doseRange.low.code 1.. MS
* dosageInstruction.doseAndRate.doseRange.high MS
* dosageInstruction.doseAndRate.doseRange.high ^patternQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction.doseAndRate.doseRange.high.value 1.. MS
* dosageInstruction.doseAndRate.doseRange.high.unit MS
* dosageInstruction.doseAndRate.doseRange.high.system 1.. MS
* dosageInstruction.doseAndRate.doseRange.high.code 1.. MS
* dosageInstruction.doseAndRate.rate[x] MS
* dosageInstruction.doseAndRate.rateRatio MS
* dosageInstruction.doseAndRate.rateRatio.numerator MS
* dosageInstruction.doseAndRate.rateRatio.numerator ^patternQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction.doseAndRate.rateRatio.numerator.value 1.. MS
* dosageInstruction.doseAndRate.rateRatio.numerator.unit MS
* dosageInstruction.doseAndRate.rateRatio.numerator.system 1.. MS
* dosageInstruction.doseAndRate.rateRatio.numerator.code 1.. MS
* dosageInstruction.doseAndRate.rateRatio.denominator MS
* dosageInstruction.doseAndRate.rateRatio.denominator ^patternQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction.doseAndRate.rateRatio.denominator.value 1.. MS
* dosageInstruction.doseAndRate.rateRatio.denominator.unit MS
* dosageInstruction.doseAndRate.rateRatio.denominator.system 1.. MS
* dosageInstruction.doseAndRate.rateRatio.denominator.code 1.. MS
* dosageInstruction.doseAndRate.rateRange MS
* dosageInstruction.doseAndRate.rateRange.low MS
* dosageInstruction.doseAndRate.rateRange.low ^patternQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction.doseAndRate.rateRange.low.value 1.. MS
* dosageInstruction.doseAndRate.rateRange.low.unit MS
* dosageInstruction.doseAndRate.rateRange.low.system 1.. MS
* dosageInstruction.doseAndRate.rateRange.low.code 1.. MS
* dosageInstruction.doseAndRate.rateRange.high MS
* dosageInstruction.doseAndRate.rateRange.high ^patternQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction.doseAndRate.rateRange.high.value 1.. MS
* dosageInstruction.doseAndRate.rateRange.high.unit MS
* dosageInstruction.doseAndRate.rateRange.high.system 1.. MS
* dosageInstruction.doseAndRate.rateRange.high.code 1.. MS
* dosageInstruction.doseAndRate.rateQuantity MS
* dosageInstruction.doseAndRate.rateQuantity ^patternQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction.doseAndRate.rateQuantity.value 1.. MS
* dosageInstruction.doseAndRate.rateQuantity.unit MS
* dosageInstruction.doseAndRate.rateQuantity.system 1.. MS
* dosageInstruction.doseAndRate.rateQuantity.code 1.. MS
* dosageInstruction.maxDosePerPeriod MS
* dosageInstruction.maxDosePerPeriod.numerator MS
* dosageInstruction.maxDosePerPeriod.numerator ^patternQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction.maxDosePerPeriod.numerator.value 1.. MS
* dosageInstruction.maxDosePerPeriod.numerator.unit MS
* dosageInstruction.maxDosePerPeriod.numerator.system 1.. MS
* dosageInstruction.maxDosePerPeriod.numerator.code 1.. MS
* dosageInstruction.maxDosePerPeriod.denominator MS
* dosageInstruction.maxDosePerPeriod.denominator ^patternQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction.maxDosePerPeriod.denominator.value 1.. MS
* dosageInstruction.maxDosePerPeriod.denominator.unit MS
* dosageInstruction.maxDosePerPeriod.denominator.system 1.. MS
* dosageInstruction.maxDosePerPeriod.denominator.code 1.. MS
* dosageInstruction.maxDosePerAdministration MS
* dosageInstruction.maxDosePerAdministration ^patternQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction.maxDosePerAdministration.value 1.. MS
* dosageInstruction.maxDosePerAdministration.unit MS
* dosageInstruction.maxDosePerAdministration.system 1.. MS
* dosageInstruction.maxDosePerAdministration.code 1.. MS
* substitution MS
* substitution.allowed[x] MS
* substitution.allowedBoolean MS
* substitution.allowedCodeableConcept MS
* priorPrescription MS
* detectedIssue MS
