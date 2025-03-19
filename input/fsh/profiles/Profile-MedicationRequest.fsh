Profile: MII_PR_Medikation_MedicationRequest
Parent: MedicationRequest
Id: mii-pr-medikation-medication-request
Title: "MII PR Medikation MedicationRequest"
Description: "Dieses Profil beschreibt die Verordnung einer Medikation."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest"
* insert Translation(^name, en-US, MII_PR_Medikation_MedicationRequest)
* insert Translation(^title, de-DE, Medikationsverordnung)
* insert Translation(^title, en-US, Medication request)
* insert Translation(^description, de-DE, Eine Anweisung oder Anforderung für die Bereitstellung des Medikaments und die Anweisungen zur Verabreichung des Medikaments.)
* insert Translation(^description, en-US, An order or request for both supply of the medication and the instructions for administration of the medication to a patient.)
* insert PR_CS_VS_Version
* ^date = "2024-11-13"
* insert Publisher
* insert LicenseCodeableCCBY40
* . ^comment = "MI-I Medikamentenverordnung"
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* identifier MS
* identifier ^short = "Identifikator"
* insert Translation(identifier ^short, de-DE, Identifikator)
* insert Translation(identifier ^short, en-US, Identifier)
* identifier ^definition = "Ein Identifikator für die Medikationsverordnung"
* insert Translation(identifier ^definition, de-DE, Ein Identifikator für die Medikationsverordnung)
* insert Translation(identifier ^definition, en-US, An identifier for this medication request)
* doNotPerform 0..0
* status MS
* status ^short = "Status"
* insert Translation(status ^short, de-DE, Status)
* insert Translation(status ^short, en-US, Status)
* status ^definition = "aktiv | pausiert | abgebrochen | abgeschlossen | Eingabe fehlerhaft | abgebrochen | Entwurf | unbekannt"
* insert Translation(status ^definition, de-DE, aktiv | pausiert | abgebrochen | abgeschlossen | Eingabe fehlerhaft | abgebrochen | Entwurf | unbekannt)
* insert Translation(status ^definition, en-US, active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown)
* intent MS
* intent ^short = "Intention"
* insert Translation(intent ^short, de-DE, Intention)
* insert Translation(intent ^short, en-US, Intent)
* intent ^definition = "Vorschlag | Plan | Auftrag | Original-Auftrag | ergänzender Auftrag | Erfüllungsauftrag | Vorgangsauftrag | Option"
* insert Translation(intent ^definition, de-DE, Vorschlag | Plan | Auftrag | Original-Auftrag | ergänzender Auftrag | Erfüllungsauftrag | Vorgangsauftrag | Option)
* insert Translation(intent ^definition, en-US, proposal | plan | order | original-order | reflex-order | filler-order | instance-order | option)
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
* insert AddPznCodingTranslation(medicationCodeableConcept.coding[Pharmazentralnummer])
* medicationCodeableConcept.coding[Pharmazentralnummer] ^sliceName = "Pharmazentralnummer"
* medicationCodeableConcept.coding[Pharmazentralnummer] from $pzn-vs (required)
* medicationCodeableConcept.coding[Pharmazentralnummer] ^patternCoding.system = "http://fhir.de/CodeSystem/ifa/pzn"
* medicationCodeableConcept.coding[Pharmazentralnummer] ^mustSupport = true
* medicationCodeableConcept.coding[Pharmazentralnummer].system 1.. MS
* medicationCodeableConcept.coding[Pharmazentralnummer].code 1.. MS
* insert AddPznCodingTranslation(medicationCodeableConcept.coding[atcClassDe])
* medicationCodeableConcept.coding[atcClassDe] from mii-vs-medikation-atc (required)
* medicationCodeableConcept.coding[atcClassDe] ^sliceName = "atcClassDe"
* medicationCodeableConcept.coding[atcClassDe] ^short = "ATC Klassifikation deutsche Version"
* medicationCodeableConcept.coding[atcClassDe] ^definition = "ATC-Codes für Fertigarzneimittel bspw. von Kombiprodukten"
* medicationCodeableConcept.coding[atcClassDe] ^patternCoding.system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe] ^mustSupport = true
* medicationCodeableConcept.coding[atcClassDe].system 1.. MS
* medicationCodeableConcept.coding[atcClassDe].code 1.. MS
* insert AddPznCodingTranslation(medicationCodeableConcept.coding[atcClassEn])
* medicationCodeableConcept.coding[atcClassEn] ^sliceName = "atcClassEn"
* medicationCodeableConcept.coding[atcClassEn] ^short = "Anatomical Therapeutic Chemical Classification System"
* medicationCodeableConcept.coding[atcClassEn] ^definition = "ATC Classification International WHO Version"
* medicationCodeableConcept.coding[atcClassEn] ^patternCoding.system = "http://www.whocc.no/atc"
* medicationCodeableConcept.coding[atcClassEn] ^mustSupport = true
* medicationCodeableConcept.coding[atcClassEn].system 1.. MS
* medicationCodeableConcept.coding[atcClassEn].code 1.. MS
* medicationCodeableConcept.text MS
* medication[x] ^short = "Medikation"
* insert Translation(medication[x] ^short, de-DE, Medikation)
* insert Translation(medication[x] ^short, en-US, Medication)
* medication[x] ^definition = "Das Medikament, das verordnet wurde. Code oder Referenz auf Medication-Objekt."
* insert Translation(medication[x] ^definition, de-DE, Medikation\, die verordnet wurde. Code oder Referenz auf Medication-Objekt.)
* insert Translation(medication[x] ^definition, en-US, The medication that was requested. Code or a reference to a Medication resource.)
* subject MS
//* subject only https://www.medizininformatik-initiative.de/fhir/core/StructureDefinition/MII-Reference
* encounter MS
* encounter ^short = "Fall oder Kontakt"
* insert Translation(encounter ^short, de-DE, Fall / Kontakt)
* insert Translation(encounter ^short, en-US, Encounter)
* encounter ^definition = "Fall oder Kontakt, bei dem die Medikation verordnet wurde."
* insert Translation(encounter ^definition, de-DE, Fall oder Kontakt\, bei dem die Medikation verordnet wurde.)
* insert Translation(encounter ^definition, en-US, Encounter or episode of care during which the medication was requested.)
* authoredOn MS
* authoredOn ^short = "Datum der Verordnung"
* insert Translation(authoredOn ^short, de-DE, Datum der Verordnung)
* insert Translation(authoredOn ^short, en-US, Authored on)
* authoredOn ^definition = "Das Datum und vielleicht die Uhrzeit, an dem die Verordnung ursprünglich verfasst wurde."
* insert Translation(authoredOn ^definition, de-DE, Das Datum\, an dem die Verordnung ursprünglich verfasst wurde.)
* insert Translation(authoredOn ^definition, en-US, The date and perhaps time when the prescription was initially written or authored on.)
* requester MS
* requester ^short = "Anforderer"
* insert Translation(requester ^short, de-DE, Anforderer)
* insert Translation(requester ^short, en-US, Requester)
* requester ^definition = "Die Person, Organisation oder das Gerät, die die Verordnung initiiert hat und für deren Aktivierung verantwortlich ist."
* insert Translation(requester ^definition, de-DE, Die Person\, Organisation oder das Gerät\, die die Verordnung initiiert hat und für deren Aktivierung verantwortlich ist.)
* insert Translation(requester ^definition, en-US, The individual\, organization\, or device that initiated the request and has responsibility for its activation.)
* recorder //MS
* recorder ^short = "Auftragserfasser"
* insert Translation(recorder ^short, de-DE, Auftragserfasser)
* insert Translation(recorder ^short, en-US, Recorder)
* recorder ^definition = "Die Person, die den Auftrag im Namen einer anderen Person eingegeben hat, zum Beispiel im Fall eines mündlichen oder telefonischen Auftrags."
* insert Translation(recorder ^definition, de-DE, Die Person\, die den Auftrag im Namen einer anderen Person eingegeben hat\, zum Beispiel im Fall eines mündlichen oder telefonischen Auftrags.)
* insert Translation(recorder ^definition, en-US, The person who entered the order on behalf of another individual for example in the case of a verbal or a telephone order.)
* reasonCode MS
* reasonCode ^short = "Grund Code"
* insert Translation(reasonCode ^short, de-DE, Grund Code)
* insert Translation(reasonCode ^short, en-US, Reason code)
* reasonCode ^definition = "Grund für die Medikationsverordnung als Code."
* insert Translation(reasonCode ^definition, de-DE, Grund für die Medikationverordnung als Code.)
* insert Translation(reasonCode ^definition, en-US, Reason for the medication request as a code.)
* reasonReference MS
* reasonReference ^short = "Grund Referenz"
* insert Translation(reasonReference ^short, de-DE, Grund Referenz)
* insert Translation(reasonReference ^short, en-US, Reason reference)
* reasonReference ^definition = "Grund für die Medikationsverordnung als Referenz auf Condition- oder Observation-Objekt."
* insert Translation(reasonReference ^definition, de-DE, Grund für die Medikationsverordnung als Referenz auf Condition- oder Observation-Objekt.)
* insert Translation(reasonReference ^definition, en-US, Condition or observation that supports why the medication was administered.)
* basedOn MS
* basedOn ^short = "Basiert auf"
* insert Translation(basedOn ^short, de-DE, Basiert auf)
* insert Translation(basedOn ^short, en-US, Based on)
* basedOn ^definition = "Ein Plan oder eine Anforderung, die ganz oder teilweise durch diese Medikationsverordnung erfüllt wird."
* insert Translation(basedOn ^definition, de-DE, Ein Plan oder eine Anforderung\, die ganz oder teilweise durch diese Medikationsverordnung erfüllt wird.)
* insert Translation(basedOn ^definition, en-US, A plan or request that is fulfilled in whole or in part by this medication request.)
* note MS
* note ^short = "Hinweis"
* insert Translation(note ^short, de-DE, Hinweis)
* insert Translation(note ^short, en-US, Note)
* note ^definition = "Zusätzliche Informationen zur Medikationsverordnung als Freitext."
* insert Translation(note ^definition, de-DE, Zusätzliche Informationen zur Medikationsverordnung als Freitext.)
* insert Translation(note ^definition, en-US, Additional information about the medication request as free text.)
* dosageInstruction obeys dsg-1
* dosageInstruction MS
* dosageInstruction ^short = "Dosierungsanweisung"
* insert Translation(dosageInstruction ^short, de-DE, Dosierungsanweisung)
* insert Translation(dosageInstruction ^short, en-US, Dosage instruction)
* dosageInstruction ^definition = "Gibt an, wie das Medikament vom Patienten zu verwenden ist."
* insert Translation(dosageInstruction ^definition, de-DE, Gibt an\, wie das Medikament vom Patienten zu verwenden ist.)
* insert Translation(dosageInstruction ^definition, en-US, Indicates how the medication is to be used by the patient.)
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
* dosageInstruction.site ^short = "Verabreichungsort"
* insert Translation(dosageInstruction.site ^short, de-DE, Verabreichungsort)
* insert Translation(dosageInstruction.site ^short, en-US, Site of administration)
* dosageInstruction.site ^definition = "Der Ort, an dem das Medikament verabreicht werden soll."
* insert Translation(dosageInstruction.site ^definition, de-DE, Der Ort\, an dem das Medikament verabreicht werden soll.)
* insert Translation(dosageInstruction.site ^definition, en-US, Anatomic site where the medication is to be administered.)
* dosageInstruction.site.coding MS
* dosageInstruction.site.coding ^slicing.discriminator.type = #pattern
* dosageInstruction.site.coding ^slicing.discriminator.path = "$this"
* dosageInstruction.site.coding ^slicing.rules = #open
* dosageInstruction.site.coding contains
    SNOMED 0..* MS
* insert AddSnomedCodingTranslation(dosageInstruction.site.coding[SNOMED])
* dosageInstruction.site.coding[SNOMED] from http://hl7.org/fhir/uv/ips/ValueSet/target-site-uv-ips (example)
* dosageInstruction.site.coding[SNOMED] ^sliceName = "SNOMED"
* dosageInstruction.site.coding[SNOMED] ^patternCoding.system = "http://snomed.info/sct"
* dosageInstruction.site.coding[SNOMED] ^binding.description = "target site IPS"
* dosageInstruction.site.coding[SNOMED].system 1.. MS
* dosageInstruction.site.coding[SNOMED].code 1.. MS
* dosageInstruction.route MS
* dosageInstruction.route ^short = "Verabreichungsweg"
* insert Translation(dosageInstruction.route ^short, de-DE, Verabreichungsweg)
* insert Translation(dosageInstruction.route ^short, en-US, Route of administration)
* dosageInstruction.route ^definition = "Der Weg, auf dem das Medikament verabreicht werden soll."
* insert Translation(dosageInstruction.route ^definition, de-DE, Der Weg\, auf dem das Medikament verabreicht werden soll.)
* insert Translation(dosageInstruction.route ^definition, en-US, How drug should enter body)
* dosageInstruction.route.coding MS
* dosageInstruction.route.coding ^slicing.discriminator.type = #pattern
* dosageInstruction.route.coding ^slicing.discriminator.path = "$this"
* dosageInstruction.route.coding ^slicing.rules = #open
* dosageInstruction.route.coding contains
    EDQM 0..1 MS and
    SNOMED 0..1 MS
* insert AddEdqmCodingTranslation(dosageInstruction.route.coding[EDQM])
* dosageInstruction.route.coding[EDQM] from http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration (preferred)
* dosageInstruction.route.coding[EDQM] ^sliceName = "EDQM"
* dosageInstruction.route.coding[EDQM] ^patternCoding.system = "http://standardterms.edqm.eu"
* dosageInstruction.route.coding[EDQM] ^mustSupport = true
* dosageInstruction.route.coding[EDQM] ^binding.description = "EDQM Standard Terms"
* dosageInstruction.route.coding[EDQM].system 1.. MS
* dosageInstruction.route.coding[EDQM].code 1.. MS
* insert AddSnomedCodingTranslation(dosageInstruction.route.coding[SNOMED])
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
* substitution ^short = "Substitution"
* insert Translation(substitution ^short, de-DE, Substitution)
* insert Translation(substitution ^short, en-US, Substitution)
* substitution ^definition = "Etwaige Einschränkungen bei der Substitution von Medikamenten"
* insert Translation(substitution ^definition, de-DE, Etwaige Einschränkungen bei der Substitution von Medikamenten)
* insert Translation(substitution ^definition, en-US, Any restrictions on medication substitution)
* substitution.allowed[x] MS
* substitution.allowedBoolean MS
* substitution.allowedCodeableConcept MS
* priorPrescription MS
* priorPrescription ^short = "Vorherige Verschreibung"
* insert Translation(priorPrescription ^short, de-DE, Vorherige Verschreibung)
* insert Translation(priorPrescription ^short, en-US, Prior prescription)
* priorPrescription ^definition = "Eine Verschreibung, die ersetzt wird"
* insert Translation(priorPrescription ^definition, de-DE, Eine Verschreibung\, die ersetzt wird)
* insert Translation(priorPrescription ^definition, en-US, An order/prescription that is being replaced)
* detectedIssue //MS
* detectedIssue ^short = "Erkannte Probleme"
* insert Translation(detectedIssue ^short, de-DE, Erkannte Probleme)
* insert Translation(detectedIssue ^short, en-US, Detected issue)
* detectedIssue ^definition = "Ein tatsächliches oder potenzielles klinisches Problem mit oder zwischen einer oder mehreren aktiven oder vorgeschlagenen klinischen Maßnahmen für einen Patienten; z.B. Arzneimittelwechselwirkung, Doppeltherapie, Dosierungsalarm etc."
* insert Translation(detectedIssue ^definition, de-DE, Ein tatsächliches oder potenzielles klinisches Problem mit oder zwischen einer oder mehreren aktiven oder vorgeschlagenen klinischen Maßnahmen für einen Patienten; z.B. Arzneimittelwechselwirkung\, Doppeltherapie\, Dosierungsalarm etc.)
* insert Translation(detectedIssue ^definition, en-US, Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for a patient; e.g. Drug-drug interaction\, duplicate therapy\, dosage alert etc.)