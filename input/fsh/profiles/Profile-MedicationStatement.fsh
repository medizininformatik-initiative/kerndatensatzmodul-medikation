Profile: MII_PR_Medikation_MedicationStatement
Parent: MedicationStatement
Id: mii-pr-medikation-medication-statement
Title: "MII PR Medikation MedicationStatement"
Description: "Das MedicationStatement kann anzeigen, dass der Patient ein Medikament zur Zeit einnimmt, in der Vergangenheit genommen hat oder in Zukunft einnehmen wird. Dabei kann es sich sowohl um verschreibungspflichtige Medikamente handeln, wie auch um OTC-Präparate, welche ein Patient in Eigenverantwortung einnimmt."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"
* insert Translation(^name, en-US, MII_PR_Medikation_MedicationStatement)
* insert Translation(^title, de-DE, Medikationseintrag)
* insert Translation(^title, en-US, Medication statement)
* insert Translation(^description, de-DE, Ein Bericht oder Dokumentation über den Konsum einer Medikation.)
* insert Translation(^description, en-US, A record of a medication that is being consumed by a patient.)
* insert PR_CS_VS_Version
* ^status = #active
* ^date = "2024-10-16"
* insert Publisher
* insert KDS_Copyright
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* identifier MS
* insert Translation(identifier ^short, de-DE, Identifikator)
* insert Translation(identifier ^short, en-US, Identifier)
* insert Translation(identifier ^definition, de-DE, Ein Identifikator für den Medikationseintrag)
* insert Translation(identifier ^definition, en-US, An identifier for this medication statement)
* basedOn MS
* insert Translation(basedOn ^short, de-DE, Basiert auf)
* insert Translation(basedOn ^short, en-US, Based on)
* insert Translation(basedOn ^definition, de-DE, Ein Plan oder eine Anforderung\, die durch den Medikationseintrag erfüllt wird.)
* insert Translation(basedOn ^definition, en-US, A plan\, proposal or order that is fulfilled in whole or in part by this event.)
* partOf MS
* insert Translation(partOf ^short, de-DE, Teil von)
* insert Translation(partOf ^short, en-US, Part of)
* insert Translation(partOf ^definition, de-DE, Ein größeres Ereignis\, von dem dieses spezielle Ereignis ein Bestandteil oder Schritt ist.)
* insert Translation(partOf ^definition, en-US, A larger event of which this particular event is a component or step.)
* status MS
* insert Translation(status ^short, de-DE, Status)
* insert Translation(status ^short, en-US, Status)
* insert Translation(status ^definition, de-DE, aktiv | abgeschlossen | Eingabe fehlerhaft | intendiert | gestoppt | pausiert | unbekannt| nicht eingenommen)
* insert Translation(status ^definition, en-US, active | completed | entered-in-error | intended | stopped | on-hold | unknown | not-taken)
* category MS
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains
    usageCategory 0..* and
    contextCode 0..1
* category.coding[usageCategory] ^patternCoding.system = "http://terminology.hl7.org/CodeSystem/medication-statement-category"
* category.coding[usageCategory] from http://hl7.org/fhir/ValueSet/medication-statement-category (required)
* category.coding[contextCode] ^patternCoding.system = "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung"
* category.coding[contextCode] from https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/fallkontext (required)
* insert Translation(category ^short, de-DE, Kategorie)
* insert Translation(category ^short, en-US, Category)
* insert Translation(category ^definition, de-DE, Eine Kategorie\, die dem Medikationseintrag zugeordnet ist.)
* insert Translation(category ^definition, en-US, A category assigned to the medication statement.)
* medication[x] MS
* medication[x] only CodeableConcept or Reference
* medication[x] ^slicing.discriminator.type = #type
* medication[x] ^slicing.discriminator.path = "$this"
* medication[x] ^slicing.rules = #open
* medicationReference MS
* medicationReference only Reference(mii-pr-medikation-medication)
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
* medicationCodeableConcept.coding[Pharmazentralnummer] from $pzn-vs (required)
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
* insert Translation(medication[x] ^short, de-DE, Medikation)
* insert Translation(medication[x] ^short, en-US, Medication)
* insert Translation(medication[x] ^definition, de-DE, Medikation\, die eingenommen oder verarbreicht wurde. Code oder Referenz auf Medication-Objekt.)
* insert Translation(medication[x] ^definition, en-US, The medication that was taken. Code or a reference to a Medication resource.)
//* subject only https://www.medizininformatik-initiative.de/fhir/core/StructureDefinition/MII-Reference
* subject MS
* context MS
* insert Translation(context ^short, de-DE, Kontext)
* insert Translation(context ^short, en-US, Context)
* insert Translation(context ^definition, de-DE, Fall oder Kontakt in Verbindung mit dem Medikationseintrag)
* insert Translation(context ^definition, en-US, Encounter / Episode associated with MedicationStatement)
* effective[x] 1.. MS
* insert Translation(effective[x] ^short, de-DE, Zeitpunkt oder Zeitraum)
* insert Translation(effective[x] ^short, en-US, Date or period)
* insert Translation(effective[x] ^definition, de-DE, Die Zeitspanne\, in der angegeben wird\, dass der Patient das Medikament eingenommen hat oder einnehmen wird.)
* insert Translation(effective[x] ^definition, en-US, The interval of time during which it is being asserted that the patient is/was/will be taking the medication.)
* effectiveDateTime MS
* effectivePeriod MS
* dateAsserted MS
* insert Translation(dateAsserted ^short, de-DE, Datum Bestätigung)
* insert Translation(dateAsserted ^short, en-US, Date asserted)
* insert Translation(dateAsserted ^definition, de-DE, Das Datum\, an dem der Medikationseintrag von der Informationsquelle bestätigt wurde.)
* insert Translation(dateAsserted ^definition, en-US, The date when the medication statement was asserted by the information source.)
* informationSource MS
* insert Translation(informationSource ^short, de-DE, Informationsquelle)
* insert Translation(informationSource ^short, en-US, Information source)
* insert Translation(informationSource ^definition, de-DE, Die Person oder Organisation\, die die Information über die Einnahme dieses Medikaments bereitgestellt hat.)
* insert Translation(informationSource ^definition, en-US, The person or organization that provided the information about the taking of this medication.)
* reasonCode MS
* insert Translation(reasonCode ^short, de-DE, Grund Code)
* insert Translation(reasonCode ^short, en-US, Reason code)
* insert Translation(reasonCode ^definition, de-DE, Grund für den Medikationseintrag als Code.)
* insert Translation(reasonCode ^definition, en-US, Reason for the medication statement as a code.)
* reasonReference MS
* insert Translation(reasonReference ^short, de-DE, Grund Referenz)
* insert Translation(reasonReference ^short, en-US, Reason reference)
* insert Translation(reasonReference ^definition, de-DE, Grund für den Medikationseintrag als Referenz auf Condition- oder Observation-Objekt.)
* insert Translation(reasonReference ^definition, en-US, Condition or observation that supports why the medication is being/was taken)
* note MS
* insert Translation(note ^short, de-DE, Hinweis)
* insert Translation(note ^short, en-US, Note)
* insert Translation(note ^definition, de-DE, Zusätzliche Informationen zum Medikationseintrag als Freitext.)
* insert Translation(note ^definition, en-US, Additional information about the medication statement as free text.)
* dosage obeys dsg-1
* dosage MS
* dosage.sequence MS
* dosage.text MS
* dosage.timing MS
* dosage.timing.event MS
* dosage.timing.repeat MS
* dosage.timing.repeat.boundsDuration MS
* dosage.timing.repeat.boundsDuration ^patternDuration.system = "http://unitsofmeasure.org"
* dosage.timing.repeat.boundsDuration.value 1.. MS
* dosage.timing.repeat.boundsDuration.unit MS
* dosage.timing.repeat.boundsDuration.system 1.. MS
* dosage.timing.repeat.boundsDuration.code 1.. MS
* dosage.timing.repeat.boundsRange MS
* dosage.timing.repeat.boundsRange.low MS
* dosage.timing.repeat.boundsRange.low ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.timing.repeat.boundsRange.low.value 1.. MS
* dosage.timing.repeat.boundsRange.low.unit MS
* dosage.timing.repeat.boundsRange.low.system 1.. MS
* dosage.timing.repeat.boundsRange.low.code 1.. MS
* dosage.timing.repeat.boundsRange.high MS
* dosage.timing.repeat.boundsRange.high ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.timing.repeat.boundsRange.high.value 1.. MS
* dosage.timing.repeat.boundsRange.high.unit MS
* dosage.timing.repeat.boundsRange.high.system 1.. MS
* dosage.timing.repeat.boundsRange.high.code 1.. MS
* dosage.timing.repeat.boundsPeriod MS
* dosage.timing.repeat.boundsPeriod.start MS
* dosage.timing.repeat.boundsPeriod.end MS
* dosage.timing.repeat.count MS
* dosage.timing.repeat.countMax MS
* dosage.timing.repeat.duration MS
* dosage.timing.repeat.durationMax MS
* dosage.timing.repeat.durationUnit MS
* dosage.timing.repeat.frequency MS
* dosage.timing.repeat.frequencyMax MS
* dosage.timing.repeat.period MS
* dosage.timing.repeat.periodMax MS
* dosage.timing.repeat.periodUnit MS
* dosage.timing.repeat.dayOfWeek MS
* dosage.timing.repeat.timeOfDay MS
* dosage.timing.repeat.when MS
* dosage.timing.repeat.offset MS
* dosage.asNeeded[x] MS
* dosage.asNeededBoolean MS
* dosage.asNeededCodeableConcept MS
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
* dosage.doseAndRate.doseRange MS
* dosage.doseAndRate.doseRange.low MS
* dosage.doseAndRate.doseRange.low ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.doseRange.low.value 1.. MS
* dosage.doseAndRate.doseRange.low.unit MS
* dosage.doseAndRate.doseRange.low.system 1.. MS
* dosage.doseAndRate.doseRange.low.code 1.. MS
* dosage.doseAndRate.doseRange.high ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.doseRange.high.value 1.. MS
* dosage.doseAndRate.doseRange.high.unit MS
* dosage.doseAndRate.doseRange.high.system 1.. MS
* dosage.doseAndRate.doseRange.high.code 1.. MS
* dosage.doseAndRate.doseQuantity MS
* dosage.doseAndRate.doseQuantity ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.doseQuantity.value 1.. MS
* dosage.doseAndRate.doseQuantity.unit MS
* dosage.doseAndRate.doseQuantity.system 1.. MS
* dosage.doseAndRate.doseQuantity.code 1.. MS
* dosage.doseAndRate.rate[x] MS
* dosage.doseAndRate.rateRatio MS
* dosage.doseAndRate.rateRatio.numerator MS
* dosage.doseAndRate.rateRatio.numerator ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.rateRatio.numerator.value 1.. MS
* dosage.doseAndRate.rateRatio.numerator.unit MS
* dosage.doseAndRate.rateRatio.numerator.system 1.. MS
* dosage.doseAndRate.rateRatio.numerator.code 1.. MS
* dosage.doseAndRate.rateRatio.denominator MS
* dosage.doseAndRate.rateRatio.denominator ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.rateRatio.denominator.value 1.. MS
* dosage.doseAndRate.rateRatio.denominator.unit MS
* dosage.doseAndRate.rateRatio.denominator.system 1.. MS
* dosage.doseAndRate.rateRatio.denominator.code 1.. MS
* dosage.doseAndRate.rateRange MS
* dosage.doseAndRate.rateRange.low MS
* dosage.doseAndRate.rateRange.low ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.rateRange.low.value 1.. MS
* dosage.doseAndRate.rateRange.low.unit MS
* dosage.doseAndRate.rateRange.low.system 1.. MS
* dosage.doseAndRate.rateRange.low.code 1.. MS
* dosage.doseAndRate.rateRange.high MS
* dosage.doseAndRate.rateRange.high ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.rateRange.high.value 1.. MS
* dosage.doseAndRate.rateRange.high.unit MS
* dosage.doseAndRate.rateRange.high.system 1.. MS
* dosage.doseAndRate.rateRange.high.code 1.. MS
* dosage.doseAndRate.rateQuantity MS
* dosage.doseAndRate.rateQuantity ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.rateQuantity.value 1.. MS
* dosage.doseAndRate.rateQuantity.unit MS
* dosage.doseAndRate.rateQuantity.system 1.. MS
* dosage.doseAndRate.rateQuantity.code 1.. MS
* dosage.maxDosePerPeriod MS
* dosage.maxDosePerPeriod.numerator MS
* dosage.maxDosePerPeriod.numerator ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.maxDosePerPeriod.numerator.value 1.. MS
* dosage.maxDosePerPeriod.numerator.unit MS
* dosage.maxDosePerPeriod.numerator.system 1.. MS
* dosage.maxDosePerPeriod.numerator.code 1.. MS
* dosage.maxDosePerPeriod.denominator MS
* dosage.maxDosePerPeriod.denominator ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.maxDosePerPeriod.denominator.value 1.. MS
* dosage.maxDosePerPeriod.denominator.unit MS
* dosage.maxDosePerPeriod.denominator.system 1.. MS
* dosage.maxDosePerPeriod.denominator.code 1.. MS
* dosage.maxDosePerAdministration MS
* dosage.maxDosePerAdministration ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.maxDosePerAdministration.value 1.. MS
* dosage.maxDosePerAdministration.unit MS
* dosage.maxDosePerAdministration.system 1.. MS
* dosage.maxDosePerAdministration.code 1.. MS
* insert Translation(dosage ^short, de-DE, Dosierung)
* insert Translation(dosage ^short, en-US, Dosage)
* insert Translation(dosage ^definition, de-DE, Gibt an\, wie das Medikament vom Patienten eingenommen wird/wurde oder werden sollte.)
* insert Translation(dosage ^definition, en-US, Indicates how the medication is/was or should be taken by the patient.)