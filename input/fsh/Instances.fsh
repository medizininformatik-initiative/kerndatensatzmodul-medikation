Instance: ExampleMedicationRezeptur
InstanceOf: ProfileMedicationMedikation
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"
* code.text = "Infusion bestehend aus 85mg Doxorubicin aufgeloest zur Verabreichung in 250ml 5-%iger (50 mg/ml) Glucose-Infusionsloesung"
* form = $standardterms#11210000 "Solution for infusion"
* ingredient[0].isActive = true
* ingredient[=].itemCodeableConcept = $cs-atc#L01DB01 "Doxorubicin"
* ingredient[=].strength.denominator = 250 'mL' "milliliter"
* ingredient[=].strength.numerator = 85 'mg' "mg"
* ingredient[+].isActive = true
* ingredient[=].itemReference = Reference(Medication/7f27cb8d-940b-43fd-ab8b-fee5b7a9b060)
* status = #active

Instance: ExampleMedicationGlucoseloesung
InstanceOf: ProfileMedicationMedikation
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"
* code.coding[0] = $cs-pzn#03705422 "Glucose 5% B.braun Ecoflac Plus"
* code.coding[+] = $cs-atc#V06DC01 "Glucose"
* code.coding[+] = $cs-atc-who#V06DC01 "glucose"
* form = $standardterms#11210000 "Solution for infusion"
* ingredient[0].isActive = true
* ingredient[=].itemCodeableConcept.coding[0] = $cs-ask#12829 "Glucose"
* ingredient[=].itemCodeableConcept.coding[+] = urn:oid:2.16.840.1.113883.6.61#50-99-7 "Glucose"
* ingredient[=].itemCodeableConcept.coding[+] = $fdasis#5SL0G7R0OK "ANHYDROUS DEXTROSE"
* ingredient[=].itemCodeableConcept.coding[+] = $sct#67079006 "Glucose (substance)"
* ingredient[=].strength.denominator = 1000 'ml' "ml"
* ingredient[=].strength.numerator = 50 'g' "g"
* ingredient[+].isActive = false
* ingredient[=].itemCodeableConcept.coding[0] = $cs-ask#00343 "Wasser für Injektionszwecke"
* ingredient[=].itemCodeableConcept.coding[+] = urn:oid:2.16.840.1.113883.6.61#7732-18-5 "WATER"
* ingredient[=].itemCodeableConcept.coding[+] = $fdasis#059QF0KO0R "WATER"
* ingredient[=].itemCodeableConcept.coding[+] = $sct#11713004 "Water (substance)"
* status = #active

Instance: ExampleMedicationCalcium
InstanceOf: ProfileMedicationMedikation
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"
* code.coding[0] = $cs-pzn#00169644 "CALCIUM SANDOZ forte Brausetabletten"
* code.coding[+] = $cs-atc#A12AA20 "Calcium (verschiedene Salze in Kombination)"
* code.coding[+] = $cs-atc-who#A12AA20 "calcium (different salts in combination)"
* form = $standardterms#10222000 "Effervescent tablet"
* ingredient[0].id = "ing_1"
* ingredient[=].extension.url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstofftyp"
* ingredient[=].extension.valueCoding = $cs-wirkstofftyp#PIN
* ingredient[=].itemCodeableConcept.coding[0] = $fdasis#472LWJ3Y9N "CALCIUM LACTATE GLUCONATE"
* ingredient[=].itemCodeableConcept.coding[+] = urn:oid:2.16.840.1.113883.6.61#11116-97-5 "Calcium lactate gluconate"
* ingredient[=].itemCodeableConcept.coding[+] = $sct#422232005 "Calcium lactate gluconate (substance)"
* ingredient[=].strength.numerator = 2945.15 'mg' "milligram"
* ingredient[=].strength.denominator = 1 http://standardterms.edqm.eu#10222000 "Effervescent tablet"
* ingredient[+].id = "ing_2"
* ingredient[=].extension.url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstofftyp"
* ingredient[=].extension.valueCoding = $cs-wirkstofftyp#PIN
* ingredient[=].itemCodeableConcept.coding[0] = $fdasis#H0G9379FGK "CALCIUM CARBONATE"
* ingredient[=].itemCodeableConcept.coding[+] = urn:oid:2.16.840.1.113883.6.61#471-34-1 "Calcium carbonate"
* ingredient[=].itemCodeableConcept.coding[+] = $sct#387307005 "Calcium carbonate (substance)"
* ingredient[=].strength.numerator = 300 'mg' "milligram"
* ingredient[=].strength.denominator = 1 http://standardterms.edqm.eu#10222000 "Effervescent tablet"
* ingredient[+].id = "ing_3"
* ingredient[=].extension[0].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstofftyp"
* ingredient[=].extension[=].valueCoding = $cs-wirkstofftyp#IN
* ingredient[=].extension[+].extension.url = "ingredientUri"
* ingredient[=].extension[=].extension.valueUri = "#ing_1"
* ingredient[=].extension[=].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation"
* ingredient[=].extension[+].extension.url = "ingredientUri"
* ingredient[=].extension[=].extension.valueUri = "#ing_2"
* ingredient[=].extension[=].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation"
* ingredient[=].itemCodeableConcept.coding[0] = $fdasis#2M83C4R6ZB "CALCIUM CATION"
* ingredient[=].itemCodeableConcept.coding[+] = urn:oid:2.16.840.1.113883.6.61#14127-61-8 "Calcium cation"
* ingredient[=].itemCodeableConcept.coding[+] = $sct#5540006 "Calcium (substance)"
* ingredient[=].strength.numerator = 500.54 'mg' "milligram"
* ingredient[=].strength.denominator = 1 http://standardterms.edqm.eu#10222000 "Effervescent tablet"

Instance: ExampleMedicationCaelyx
InstanceOf: ProfileMedicationMedikation
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"
* code.coding[0] = $cs-pzn#887150 "Caelyx 50 Mg/25 ml Konz.z.Herst.e.Infusi"
* code.coding[+] = $cs-atc#L01DB01 "Doxorubicin"
* status = #active
* form = $standardterms#11213000 "Concentrate for solution for infusion"
* ingredient.itemCodeableConcept.coding[0] = $fdasis#82F2G7BL4E "Doxorubicin hydrochloride"
* ingredient.itemCodeableConcept.coding[+] = urn:oid:2.16.840.1.113883.6.61#25316-40-9 "Doxorubicin hydrochloride"
* ingredient.isActive = true
* ingredient.strength.numerator = 50 'mg' "mg"
* ingredient.strength.denominator = 25 'ml' "ml"

Instance: ExampleMedicationASS100
InstanceOf: ProfileMedicationMedikation
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"
* code.coding[0] = $cs-pzn#06312077 "ASS 100 - 1a Pharma TAH Tabletten"
* code.coding[+] = $cs-atc#B01AC06 "acetylsalicylic acid"
* form = $standardterms#10219000 "Tablet"
* ingredient.itemCodeableConcept = $cs-ask#00002 "Acetylsalicylsäure"
* ingredient.strength.numerator = 100 'mg' "milligram"
* ingredient.strength.denominator = 1 http://standardterms.edqm.eu#10219000 "Tablet"

Instance: ExampleMedicationPropofol
InstanceOf: ProfileMedicationMedikation
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"
* code = $cs-pzn#194346 "PROPOFOL 2% 20MG/1ML MCT"
* form = $standardterms#50021000 "Emulsion for injection/infusion"
* ingredient.isActive = true
* ingredient.itemCodeableConcept = $cs-ask#22898 "Propofol"
* ingredient.strength.denominator = 1 'ml' "ml"
* ingredient.strength.numerator = 20 'mg' "mg"
* status = #active

Instance: ExampleMedicationThiotepa
InstanceOf: Medication
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"
* ingredient.extension.url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstofftyp"
* ingredient.extension.valueCoding = $cs-wirkstofftyp#IN "ingredient"
* ingredient.itemCodeableConcept.coding[0] = $fdasis#905Z5W3GKH "thiotepa"
* ingredient.itemCodeableConcept.coding[+] = $cs-ask#7962 "thiotepa"
* ingredient.itemCodeableConcept.coding[+] = urn:oid:2.16.840.1.113883.6.61#52-24-4 "thiotepa"

Instance: ExampleMedicationAdministration
InstanceOf: ProfileMedicationAdministrationMedikation
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration"
* dosage.dose = 85 'mg' "mg"
* dosage.rateRatio.denominator = 1 'h' "hour"
* dosage.rateRatio.numerator = 250 'mL' "milliliter"
* dosage.route = $standardterms#20045000 "Intravenous use"
* effectivePeriod.end = "2020-01-06T11:20:00.000+00:00"
* effectivePeriod.start = "2020-01-06T10:20:00.000+00:00"
* medicationReference = Reference(Medication/8b67be5c-d83a-417c-864e-85fb5e9f4d52)
* status = #completed
* subject = Reference(Patient/688f4605-71c0-48ef-a2d8-cd03a6d3dee1)

Instance: ExampleMedicationStatement
InstanceOf: ProfileMedicationStatementMedikation
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"
* dosage.doseAndRate.doseQuantity = 50 'mg/kg' "mg/kilogram"
* dosage.route = $standardterms#20045000 "Intravenous use"
* dosage.text = "Doxorubicin (Caelyx) 50 mg je Quadratmeter Koerperoberflaeche alle vier Wochen per intravenoeser Tropfinfusion"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 4
* dosage.timing.repeat.periodUnit = #wk
* effectiveDateTime = "2020-01-14T11:37:00+01:00"
* medicationReference = Reference(Medication/8b67be5c-d83a-417c-864e-85fb5e9f4d52)
* status = #active
* subject = Reference(Patient/688f4605-71c0-48ef-a2d8-cd03a6d3dee1)

Instance: ExampleMedicationStatementPeriodischesIntervall
InstanceOf: ProfileMedicationStatementMedikation
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"
* dosage.route = $standardterms#20053000 "Oral use"
* dosage.text = "Marcumar jeden Montag-, Mittwoch- und Freitagabend"
* dosage.timing.repeat.dayOfWeek[0] = #mon
* dosage.timing.repeat.dayOfWeek[+] = #wed
* dosage.timing.repeat.dayOfWeek[+] = #fri
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.timing.repeat.when = #CV
* effectiveDateTime = "2020-05-27T17:57:00+01:00"
* medicationCodeableConcept = $cs-pzn#05541338 "Marcumar"
* status = #active
* subject = Reference(Patient/example)

Instance: ExampleMedicationStatementOffset
InstanceOf: ProfileMedicationStatementMedikation
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"
* dosage.route = $standardterms#20053000 "Oral use"
* dosage.text = "L-Thyroxin 125 Mikrogramm täglich eine Tablette oral eine halbe Stunde vor dem Früchstück"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.offset = 30
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.timing.repeat.when = #ACM
* effectiveDateTime = "2020-05-27T17:57:00+01:00"
* medicationCodeableConcept = $cs-pzn#02532793 "L-THYROXIN 125 Henning Tabletten"
* status = #active
* subject = Reference(Patient/example)

Instance: ExampleMedicationStatementCaelyx
InstanceOf: ProfileMedicationStatementMedikation
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"
* status = #active
* medicationReference = Reference(Medication/bbc6c5a1-62df-44fa-a907-d066476ac7f9)
* subject = Reference(Patient/688f4605-71c0-48ef-a2d8-cd03a6d3dee1)
* effectiveDateTime = "2020-01-02T09:30:00+01:00"
* dosage.text = "Doxorubicin (Caelyx) 50 mg je Quadratmeter Koerperoberflaeche alle vier Wochen per intravenoeser Tropfinfusion"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 4
* dosage.timing.repeat.periodUnit = #wk
* dosage.route = $standardterms#20045000 "Intravenous use"

Instance: ExampleMedicationStatementIntravenousUse
InstanceOf: ProfileMedicationStatementMedikation
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"
* dosage.doseAndRate.doseRange.high = 2600 'mg' "milligram"
* dosage.doseAndRate.doseRange.low = 2400 'mg' "milligram"
* dosage.route = $standardterms#20045000 "Intravenous use"
* dosage.text = "Parenterale Applikation von 2.400 mg bis unter 2.600 mg Thiotepa"
* effectiveDateTime = "2018-05-26"
* medicationReference = Reference(Medication/8b455da3-931e-481f-abfe-da291cbba54e)
* partOf = Reference(Procedure/ce33960c-02c9-4888-9448-9a8b7906e369)
* status = #completed
* subject = Reference(Patient/fe1f7a9a-f33e-4dbe-9ee5-246e2d3baada)

Instance: ExampleProcedure
InstanceOf: Procedure
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure"
* category = $sct#182832007 "Procedure related to management of drug administration (procedure)"
* code.coding = $cs-ops#6-007.nm "Parenterale Applikation von 2.400 mg bis unter 2.600 mg Thiotepa"
* code.coding.version = "2020"
* performedDateTime = "2018-05-26"
* status = #completed
* subject = Reference(Patient/fe1f7a9a-f33e-4dbe-9ee5-246e2d3baada)