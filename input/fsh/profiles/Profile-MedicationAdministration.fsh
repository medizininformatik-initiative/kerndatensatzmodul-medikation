Profile: MII_PR_Medikation_MedicationAdministration
Parent: MedicationAdministration
Id: mii-pr-medikation-medication-administration
Title: "MII PR Medikation MedicationAdministration"
Description: "Dieses Profil beschreibt Medikamentenverabreichungen, einschließlich der Selbstverabreichung von oralen Medikamenten, Injektionen, intravenösen Gaben etc."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration"
* insert Translation(^name, en-US, MII_PR_Medikation_MedicationAdministration)
* insert Translation(^title, de-DE, Medikationsverabreichung)
* insert Translation(^title, en-US, Medication administration)
* insert Translation(^description, de-DE, Beschreibt den Sachverhalt\, dass ein Patient ein Medikament einnimmt oder auf andere Weise verabreicht bekommt.)
* insert Translation(^description, en-US, Describes the event of a patient consuming or otherwise being administered a medication.)
* insert PR_CS_VS_Version
* ^status = #active
* ^date = "2024-11-13"
* insert Publisher
* insert KDS_Copyright
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* identifier MS
* identifier ^short = "Identifikator"
* insert Translation(identifier ^short, de-DE, Identifikator)
* insert Translation(identifier ^short, en-US, Identifier)
* identifier ^definition = "Ein Identifikator für die Medikationsverabreichung"
* insert Translation(identifier ^definition, de-DE, Ein Identifikator für die Medikationsverabreichung)
* insert Translation(identifier ^definition, en-US, An identifier for this medication administration)
* partOf MS
* partOf ^short = "Teil von"
* insert Translation(partOf ^short, de-DE, Teil von)
* insert Translation(partOf ^short, en-US, Part of)
* partOf ^definition = "Teil einer weiteren Medikationsverabreichung"
* insert Translation(partOf ^definition, de-DE, Teil einer weiteren Medikationsverabreichung)
* insert Translation(partOf ^definition, en-US, Part of another medication administration)
* status MS
* status ^short = "Status"
* insert Translation(status ^short, de-DE, Status)
* insert Translation(status ^short, en-US, Status)
* status ^definition = "in Durchführung | nicht durchgeführt | in Wartestellung | abgeschlossen | Eingabe fehlerhaft | abgebrochen | unbekannt"
* insert Translation(status ^definition, de-DE, in Durchführung | nicht durchgeführt | in Wartestellung | abgeschlossen | Eingabe fehlerhaft | abgebrochen | unbekannt)
* insert Translation(status ^definition, en-US, in-progress | not-done | on-hold | completed | entered-in-error | stopped | unknown)
* category MS
* category ^short = "Kategorie"
* insert Translation(category ^short, de-DE, Kategorie)
* insert Translation(category ^short, en-US, Category)
* category ^definition = "Eine Kategorie, die der Medikationsverabreichung zugeordnet ist."
* insert Translation(category ^definition, de-DE, Eine Kategorie\, die der Medikationsverabreichung zugeordnet ist.)
* insert Translation(category ^definition, en-US, A category assigned to the medication administration.)
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
* medicationCodeableConcept.coding[atcClassDe] from $vs-atc (required)
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
* medication[x] ^definition = "Die Medikation, die verarbreicht wurde. Code oder Referenz auf Medication-Objekt."
* insert Translation(medication[x] ^definition, de-DE, Medikation\, die verarbreicht wurde. Code oder Referenz auf Medication-Objekt.)
* insert Translation(medication[x] ^definition, en-US, The medication that was administered. Code or a reference to a Medication resource.)
//* subject only https://www.medizininformatik-initiative.de/fhir/core/StructureDefinition/MII-Reference
* subject MS
* context MS
* context ^short = "Kontext"
* insert Translation(context ^short, de-DE, Kontext)
* insert Translation(context ^short, en-US, Context)
* context ^definition = "Fall oder Kontakt, bei dem die Medikation verabreicht wurde."
* insert Translation(context ^definition, de-DE, Fall oder Kontakt\, bei dem die Medikation verabreicht wurde.)
* insert Translation(context ^definition, en-US, Encounter or episode of care during which the medication was administered.)
* effective[x] MS
* effective[x] ^short = "Zeitpunkt oder Zeitraum"
* insert Translation(effective[x] ^short, de-DE, Zeitpunkt oder Zeitraum)
* insert Translation(effective[x] ^short, en-US, Date or period)
* effective[x] ^definition = "Datum oder Zeitraum, in dem die Medikation verabreicht wurde."
* insert Translation(effective[x] ^definition, de-DE, Zeitpunkt oder Zeitraum in dem die Medikation verabreicht wurde.)
* insert Translation(effective[x] ^definition, en-US, The date or time period over which the medication was administered.)
* effectiveDateTime MS
* effectiveDateTime ^short = "Zeitpunkt"
* insert Translation(effectiveDateTime ^short, de-DE, Zeitpunkt)
* insert Translation(effectiveDateTime ^short, en-US, Date)
* effectiveDateTime ^definition = "Zeitpunkt, zu der die Medikation verabreicht wurde."
* insert Translation(effectiveDateTime ^definition, de-DE, Zeitpunkt\, zu der die Medikation verabreicht wurde.)
* insert Translation(effectiveDateTime ^definition, en-US, The date or time the medication was administered.)
* effectivePeriod MS
* effectivePeriod ^short = "Zeitraum"
* insert Translation(effectivePeriod ^short, de-DE, Zeitraum)
* insert Translation(effectivePeriod ^short, en-US, Period)
* effectivePeriod ^definition = "Zeitraum, in dem die Medikation verabreicht wurde."
* insert Translation(effectivePeriod ^definition, de-DE, Zeitraum\, in dem die Medikation verabreicht wurde.)  
* insert Translation(effectivePeriod ^definition, en-US, The time period over which the medication was administered.)
* performer MS
* performer ^short = "Ausführende*r"
* insert Translation(performer ^short, de-DE, Ausführende*r)
* insert Translation(performer ^short, en-US, Performer)
* performer ^definition = "Die Person oder das Gerät, das die Medikation verabreicht hat."
* insert Translation(performer ^definition, de-DE, Wer die Medikation verabreicht hat und was sie getan haben.)
* insert Translation(performer ^definition, en-US, Who performed the medication administration and what they did.)
* reasonCode MS
* reasonCode ^short = "Grund Code"
* insert Translation(reasonCode ^short, de-DE, Grund Code)
* insert Translation(reasonCode ^short, en-US, Reason code)
* reasonCode ^definition = "Grund für die Medikationsverabreichung als Code."
* insert Translation(reasonCode ^definition, de-DE, Grund für die Medikationverabreichung als Code.)
* insert Translation(reasonCode ^definition, en-US, Reason for the medication administration as a code.)
* reasonReference MS
* reasonReference ^short = "Grund Referenz"
* insert Translation(reasonReference ^short, de-DE, Grund Referenz)
* insert Translation(reasonReference ^short, en-US, Reason reference)
* reasonReference ^definition = "Grund für die Medikationsverabreichung als Referenz auf Condition- oder Observation-Objekt."
* insert Translation(reasonReference ^definition, de-DE, Grund für die Medikationsverabreichung als Referenz auf Condition- oder Observation-Objekt.)
* insert Translation(reasonReference ^definition, en-US, Condition or observation that supports why the medication was administered.)
* request MS
* request ^short = "Verordnung"
* insert Translation(request ^short, de-DE, Verordnung)
* insert Translation(request ^short, en-US, Request)
* request ^definition = "Die Verordnung zur Medikationsverabreichung."
* insert Translation(request ^definition, de-DE, Verordnung zur Medikationsverabreichung.)
* insert Translation(request ^definition, en-US, Request administration performed against.)
* note MS
* note ^short = "Hinweis"
* insert Translation(note ^short, de-DE, Hinweis)
* insert Translation(note ^short, en-US, Note)
* note ^definition = "Zusätzliche Informationen zur Medikationsverabreichung als Freitext."
* insert Translation(note ^definition, de-DE, Zusätzliche Informationen zur Medikationsverabreichung als Freitext.)
* insert Translation(note ^definition, en-US, Additional information about the medication administration as free text.)
* dosage MS
* dosage ^short = "Dosierung"
* insert Translation(dosage ^short, de-DE, Dosierung)
* insert Translation(dosage ^short, en-US, Dosage)
* dosage ^definition = "Details der Medikamentendosierung, wie Dosis, Menge, Applikationsort, Verabreichungsweg, etc."
* insert Translation(dosage ^definition, de-DE, Details der Medikamentendosierung\, wie Dosis\, Menge\, Applikationsort\, Verabreichungsweg\, etc.)
* insert Translation(dosage ^definition, en-US, Describes the medication dosage information details e.g. dose\, rate\, site\, route\, etc.)
* dosage.text MS
* dosage.site MS
* dosage.site ^short = "Applikationsort"
* insert Translation(dosage.site ^short, de-DE, Applikationsort)
* insert Translation(dosage.site ^short, en-US, Site)
* dosage.site ^definition = "Körperstelle der Verabreichung"
* insert Translation(dosage.site ^definition, de-DE, Körperstelle der Verabreichung)
* insert Translation(dosage.site ^definition, en-US, Body site of the administration)
* dosage.site.coding MS
* dosage.site.coding ^slicing.discriminator.type = #pattern
* dosage.site.coding ^slicing.discriminator.path = "$this"
* dosage.site.coding ^slicing.rules = #open
* dosage.site.coding contains
    SNOMED 0..* MS
* insert AddSnomedCodingTranslation(dosage.site.coding[SNOMED])
* dosage.site.coding[SNOMED] from http://hl7.org/fhir/uv/ips/ValueSet/target-site-uv-ips (example)
* dosage.site.coding[SNOMED] ^sliceName = "SNOMED"
* dosage.site.coding[SNOMED] ^patternCoding.system = "http://snomed.info/sct"
* dosage.site.coding[SNOMED] ^mustSupport = true
* dosage.site.coding[SNOMED] ^binding.description = "target site IPS"
* dosage.site.coding[SNOMED].system 1.. MS
* dosage.site.coding[SNOMED].code 1.. MS
* dosage.route MS
* dosage.route ^short = "Verabreichungsweg"
* insert Translation(dosage.route ^short, de-DE, Verabreichungsweg)
* insert Translation(dosage.route ^short, en-US, Route of administration)
* dosage.route ^definition = "Weg des Medikaments in den Körper"
* insert Translation(dosage.route ^definition, de-DE, Weg des Medikaments in den Körper)
* insert Translation(dosage.route ^definition, en-US, Path of substance into the body)
* dosage.route.coding MS
* dosage.route.coding from http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration (preferred)
* dosage.route.coding ^slicing.discriminator.type = #pattern
* dosage.route.coding ^slicing.discriminator.path = "$this"
* dosage.route.coding ^slicing.rules = #open
* dosage.route.coding ^binding.description = "EDQM Standards Terms"
* dosage.route.coding contains
    EDQM 0..1 MS and
    SNOMED 0..1 MS
* insert AddEdqmCodingTranslation(dosage.route.coding[EDQM])
* dosage.route.coding[EDQM] from http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration (preferred)
* dosage.route.coding[EDQM] ^patternCoding.system = "http://standardterms.edqm.eu"
* dosage.route.coding[EDQM] ^binding.description = "EDQM Standard Terms"
* dosage.route.coding[EDQM].system 1.. MS
* dosage.route.coding[EDQM].code 1.. MS
* insert AddSnomedCodingTranslation(dosage.route.coding[SNOMED])
* dosage.route.coding[SNOMED] ^patternCoding.system = "http://snomed.info/sct"
* dosage.route.coding[SNOMED].system 1.. MS
* dosage.route.coding[SNOMED].code 1.. MS
* dosage.dose MS
* dosage.dose ^short = "Dosis"
* insert Translation(dosage.dose ^short, de-DE, Dosis)
* insert Translation(dosage.dose ^short, en-US, Dose)
* dosage.dose ^definition = "Menge des Medikaments pro Dosis"
* insert Translation(dosage.dose ^definition, de-DE, Menge des Medikaments pro Dosis)
* insert Translation(dosage.dose ^definition, en-US, The amount of medication per dose)
* dosage.dose ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.dose.value 1.. MS
* dosage.dose.unit MS
* dosage.dose.system 1.. MS
* dosage.dose.code 1.. MS
* dosage.rate[x] MS
* dosage.rateRatio MS
* dosage.rateRatio.numerator MS
* dosage.rateRatio.numerator ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.rateRatio.numerator.value 1.. MS
* dosage.rateRatio.numerator.unit MS
* dosage.rateRatio.numerator.system 1.. MS
* dosage.rateRatio.numerator.code 1.. MS
* dosage.rateRatio.denominator MS
* dosage.rateRatio.denominator ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.rateRatio.denominator.value 1.. MS
* dosage.rateRatio.denominator.unit MS
* dosage.rateRatio.denominator.system 1.. MS
* dosage.rateRatio.denominator.code 1.. MS
* dosage.rateQuantity MS
* dosage.rateQuantity ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.rateQuantity.value 1.. MS
* dosage.rateQuantity.unit MS
* dosage.rateQuantity.system 1.. MS
* dosage.rateQuantity.code 1.. MS