Instance: mii-exa-medikation-medication-rezeptur
InstanceOf: mii-pr-medikation-medication
Usage: #example
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"
* code.text = "Infusion bestehend aus 85mg Doxorubicin aufgeloest zur Verabreichung in 250ml 5-%iger (50 mg/ml) Glucose-Infusionsloesung"
* form = $standardterms#11210000 "Solution for infusion"
* ingredient[0].isActive = true
* ingredient[=].itemCodeableConcept = $cs-atc|2023#L01DB01 "Doxorubicin"
* ingredient[=].strength.denominator = 250 'mL' "milliliter"
* ingredient[=].strength.numerator = 85 'mg' "mg"
* ingredient[+].isActive = true
* ingredient[=].itemReference = Reference(mii-exa-medikation-medication-glucoseloesung)
* status = #active

Instance: mii-exa-medikation-medication-glucoseloesung
InstanceOf: mii-pr-medikation-medication
Usage: #example
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"
* code.coding[0] = $cs-pzn#03705422 "Glucose 5% B.braun Ecoflac Plus"
* code.coding[+] = $cs-atc|2023#V06DC01 "Glucose"
* code.coding[+] = $cs-atc-who|2023#V06DC01 "glucose"
* form = $standardterms#11210000 "Solution for infusion"
* ingredient[0].isActive = true
* ingredient[=].itemCodeableConcept.coding[0] = $cs-ask#12829 "Glucose"
* ingredient[=].itemCodeableConcept.coding[+] = $cas#50-99-7 "Glucose"
* ingredient[=].itemCodeableConcept.coding[+] = $fdasis#5SL0G7R0OK "ANHYDROUS DEXTROSE"
* ingredient[=].itemCodeableConcept.coding[+] = $sct#67079006 "Glucose (substance)"
* ingredient[=].strength.denominator = 1000 'ml' "ml"
* ingredient[=].strength.numerator = 50 'g' "g"
* ingredient[+].isActive = false
* ingredient[=].itemCodeableConcept.coding[0] = $cs-ask#00343 "Wasser für Injektionszwecke"
* ingredient[=].itemCodeableConcept.coding[+] = $cas#7732-18-5 "WATER"
* ingredient[=].itemCodeableConcept.coding[+] = $fdasis#059QF0KO0R "WATER"
* ingredient[=].itemCodeableConcept.coding[+] = $sct#11713004 "Water (substance)"
* status = #active

Instance: mii-exa-medikation-medication-calcium
InstanceOf: mii-pr-medikation-medication
Usage: #example
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"
* code.coding[0] = $cs-pzn#00169644 "CALCIUM SANDOZ forte Brausetabletten"
* code.coding[+] = $cs-atc|2023#A12AA20 "Calcium (verschiedene Salze in Kombination)"
* code.coding[+] = $cs-atc-who|2023#A12AA20 "calcium (different salts in combination)"
* form = $standardterms#10222000 "Effervescent tablet"
* ingredient[0].id = "ing_1"
* ingredient[=].extension.url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstofftyp"
* ingredient[=].extension.valueCoding = $cs-wirkstofftyp#PIN
* ingredient[=].itemCodeableConcept.coding[0] = $fdasis#472LWJ3Y9N "CALCIUM LACTATE GLUCONATE"
* ingredient[=].itemCodeableConcept.coding[+] = $cas#11116-97-5 "Calcium lactate gluconate"
* ingredient[=].itemCodeableConcept.coding[+] = $sct#422232005 "Calcium lactate gluconate (substance)"
* ingredient[=].strength.numerator = 2945.15 'mg' "milligram"
* ingredient[=].strength.denominator = 1 http://standardterms.edqm.eu#10222000 "Effervescent tablet"
* ingredient[+].id = "ing_2"
* ingredient[=].extension.url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstofftyp"
* ingredient[=].extension.valueCoding = $cs-wirkstofftyp#PIN
* ingredient[=].itemCodeableConcept.coding[0] = $fdasis#H0G9379FGK "CALCIUM CARBONATE"
* ingredient[=].itemCodeableConcept.coding[+] = $cas#471-34-1 "Calcium carbonate"
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
* ingredient[=].itemCodeableConcept.coding[+] = $cas#14127-61-8 "Calcium cation"
* ingredient[=].itemCodeableConcept.coding[+] = $sct#5540006 "Calcium (substance)"
* ingredient[=].strength.numerator = 500.54 'mg' "milligram"
* ingredient[=].strength.denominator = 1 http://standardterms.edqm.eu#10222000 "Effervescent tablet"

Instance: mii-exa-medikation-medication-caelyx
InstanceOf: mii-pr-medikation-medication
Usage: #example
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"
* code.coding[0] = $cs-pzn#887150 "Caelyx 50 Mg/25 ml Konz.z.Herst.e.Infusi"
* code.coding[+] = $cs-atc|2023#L01DB01 "Doxorubicin"
* status = #active
* form = $standardterms#11213000 "Concentrate for solution for infusion"
* ingredient.itemCodeableConcept.coding[0] = $fdasis#82F2G7BL4E "Doxorubicin hydrochloride"
* ingredient.itemCodeableConcept.coding[+] = $cas#25316-40-9 "Doxorubicin hydrochloride"
* ingredient.isActive = true
* ingredient.strength.numerator = 50 'mg' "mg"
* ingredient.strength.denominator = 25 'ml' "ml"

Instance: mii-exa-medikation-medication-ass-100
InstanceOf: mii-pr-medikation-medication
Usage: #example
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"
* code.coding[0] = $cs-pzn#06312077 "ASS 100 - 1a Pharma TAH Tabletten"
* code.coding[+] = $cs-atc|2023#B01AC06 "acetylsalicylic acid"
* form = $standardterms#10219000 "Tablet"
* ingredient.itemCodeableConcept = $cs-ask#00002 "Acetylsalicylsäure"
* ingredient.strength.numerator = 100 'mg' "milligram"
* ingredient.strength.denominator = 1 http://standardterms.edqm.eu#10219000 "Tablet"

Instance: mii-exa-medikation-medication-propofol
InstanceOf: mii-pr-medikation-medication
Usage: #example
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"
* code = $cs-pzn#194346 "PROPOFOL 2% 20MG/1ML MCT"
* form = $standardterms#50021000 "Emulsion for injection/infusion"
* ingredient.isActive = true
* ingredient.itemCodeableConcept = $cs-ask#22898 "Propofol"
* ingredient.strength.denominator = 1 'ml' "ml"
* ingredient.strength.numerator = 20 'mg' "mg"
* status = #active

Instance: mii-exa-medikation-medication-thiotepa
InstanceOf: mii-pr-medikation-medication
Usage: #example
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"
* ingredient.extension.url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstofftyp"
* ingredient.extension.valueCoding = $cs-wirkstofftyp#IN "ingredient"
* ingredient.itemCodeableConcept.coding[0] = $fdasis#905Z5W3GKH "thiotepa"
* ingredient.itemCodeableConcept.coding[+] = $cs-ask#07962 "thiotepa"
* ingredient.itemCodeableConcept.coding[+] = $cas#52-24-4 "thiotepa"

Instance: mii-exa-medikation-medication-dolomo
InstanceOf: mii-pr-medikation-medication
Usage: #example
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"
//* meta.source = "https://www.mmi.de/mmi-pharmindex|1.0"
* code.coding[Pharmazentralnummer] = $cs-pzn|02.08.2024#02758994 "dolomo® TN"
* code.coding[atcClassDe] = $cs-atc|2023#N02BE51 "Paracetamol, Kombinationen exkl. Psycholeptika"
* form.coding[EDQM] = $standardterms#10219000 "Tablet"
* amount.numerator.value = 27
* amount.numerator.unit = "Tablet"
* amount.numerator.system = $standardterms
* amount.numerator.code = #10219000
* amount.denominator.value = 1
* amount.denominator.unit = "Package"
* amount.denominator.system = "http://unitsofmeasure.org"
* amount.denominator.code = #1
* ingredient[0].itemReference = Reference(mii-exa-medikation-medication-dolomo-tag)
* ingredient[1].itemReference = Reference(mii-exa-medikation-medication-dolomo-nacht)

Instance: mii-exa-medikation-medication-dolomo-tag
InstanceOf: mii-pr-medikation-medication
Usage: #example
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"
* code.coding[atcClassDe] = $cs-atc|2023#N02BE51 "Paracetamol, Kombinationen exkl. Psycholeptika"
* form.coding[EDQM] = $standardterms#10219000 "Tablet"
* amount.numerator.value = 18
* amount.numerator.unit = "Tablet"
* amount.numerator.system = $standardterms
* amount.numerator.code = #10219000
* amount.denominator.value = 1
* amount.denominator.system = "http://unitsofmeasure.org"
* amount.denominator.code = #1
* ingredient[0].isActive = true
* ingredient[0].itemCodeableConcept = $cs-ask#00002 "Acetylsalicylsäure"
* ingredient[0].strength.denominator = 1 http://standardterms.edqm.eu#10219000 "Tablet"
* ingredient[0].strength.numerator = 250 'mg' "mg"
* ingredient[1].isActive = true
* ingredient[1].itemCodeableConcept = $cs-ask#01212 "Paracetamol"
* ingredient[1].strength.denominator = 1 http://standardterms.edqm.eu#10219000 "Tablet"
* ingredient[1].strength.numerator = 250 'mg' "mg"
* ingredient[2].isActive = true
* ingredient[2].itemCodeableConcept = $cs-ask#00088 "Coffein"
* ingredient[2].strength.denominator = 1 http://standardterms.edqm.eu#10219000 "Tablet"
* ingredient[2].strength.numerator = 50 'mg' "mg"

Instance: mii-exa-medikation-medication-dolomo-nacht
InstanceOf: mii-pr-medikation-medication
Usage: #example
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"
* code.coding[atcClassDe] = $cs-atc|2023#N02BE51 "Paracetamol, Kombinationen exkl. Psycholeptika"
* form.coding[EDQM] = $standardterms#10219000 "Tablet"
* amount.numerator.value = 9
* amount.numerator.unit = "Tablet"
* amount.numerator.system = $standardterms
* amount.numerator.code = #10219000
* amount.denominator.value = 1
* amount.denominator.system = "http://unitsofmeasure.org"
* amount.denominator.code = #1
* ingredient[0].isActive = true
* ingredient[0].itemCodeableConcept = $cs-ask#00002 "Acetylsalicylsäure"
* ingredient[0].strength.denominator = 1 http://standardterms.edqm.eu#10219000 "Tablet"
* ingredient[0].strength.numerator = 250 'mg' "mg"
* ingredient[1].isActive = true
* ingredient[1].itemCodeableConcept = $cs-ask#01212 "Paracetamol"
* ingredient[1].strength.denominator = 1 http://standardterms.edqm.eu#10219000 "Tablet"
* ingredient[1].strength.numerator = 250 'mg' "mg"
* ingredient[2].isActive = true
* ingredient[2].itemCodeableConcept = $cs-ask#00087 "Codeinphosphat-Hemihydrat"
* ingredient[2].strength.denominator = 1 http://standardterms.edqm.eu#10219000 "Tablet"
* ingredient[2].strength.numerator = 30 'mg' "mg"

Instance: mii-exa-medikation-medication-administration
InstanceOf: mii-pr-medikation-medication-administration
Usage: #example
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration"
* dosage.dose = 85 'mg' "mg"
* dosage.rateRatio.denominator = 1 'h' "hour"
* dosage.rateRatio.numerator = 250 'mL' "milliliter"
* dosage.route = $standardterms#20045000 "Intravenous use"
* effectivePeriod.end = "2020-01-06T11:20:00.000+00:00"
* effectivePeriod.start = "2020-01-06T10:20:00.000+00:00"
* medicationReference = Reference(mii-exa-medikation-medication-rezeptur)
* status = #completed
* subject = Reference(Patient/example)

Instance: mii-exa-medikation-medication-statement
InstanceOf: mii-pr-medikation-medication-statement
Usage: #example
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"
* dosage.doseAndRate.doseQuantity = 50 'mg/kg' "mg/kilogram"
* dosage.route = $standardterms#20045000 "Intravenous use"
* dosage.text = "Doxorubicin (Caelyx) 50 mg je Quadratmeter Koerperoberflaeche alle vier Wochen per intravenoeser Tropfinfusion"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 4
* dosage.timing.repeat.periodUnit = #wk
* effectiveDateTime = "2020-01-14T11:37:00+01:00"
* medicationReference = Reference(mii-exa-medikation-medication-rezeptur)
* status = #active
* subject = Reference(Patient/example)

Instance: mii-exa-medikation-medication-statement-periodisches-intervall
InstanceOf: mii-pr-medikation-medication-statement
Usage: #example
* insert TestDataLabel
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

Instance: mii-exa-medikation-medication-statement-offset
InstanceOf: mii-pr-medikation-medication-statement
Usage: #example
* insert TestDataLabel
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

Instance: mii-exa-medikation-medication-statement-caelyx
InstanceOf: mii-pr-medikation-medication-statement
Usage: #example
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"
* status = #active
* medicationReference = Reference(mii-exa-medikation-medication-caelyx)
* subject = Reference(Patient/example)
* effectiveDateTime = "2020-01-02T09:30:00+01:00"
* dosage.text = "Doxorubicin (Caelyx) 50 mg je Quadratmeter Koerperoberflaeche alle vier Wochen per intravenoeser Tropfinfusion"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 4
* dosage.timing.repeat.periodUnit = #wk
* dosage.route = $standardterms#20045000 "Intravenous use"

Instance: mii-exa-medikation-medication-statement-intravenous-use
InstanceOf: mii-pr-medikation-medication-statement
Usage: #example
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"
* dosage.doseAndRate.doseRange.high = 2600 'mg' "milligram"
* dosage.doseAndRate.doseRange.low = 2400 'mg' "milligram"
* dosage.route = $standardterms#20045000 "Intravenous use"
* dosage.text = "Parenterale Applikation von 2.400 mg bis unter 2.600 mg Thiotepa"
* effectiveDateTime = "2018-05-26"
* medicationReference = Reference(mii-exa-medikation-medication-thiotepa)
* partOf = Reference(Procedure/ExampleProcedure)
* status = #completed
* subject = Reference(Patient/example)

Instance: mii-exa-medikation-procedure-thiotepa
InstanceOf: Procedure
Usage: #example
* insert TestDataLabel
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure"
* category = $sct#182832007 "Procedure related to management of drug administration (procedure)"
* code.coding = $cs-ops#6-007.nm "Parenterale Applikation von 2.400 mg bis unter 2.600 mg Thiotepa"
* code.coding.version = "2020"
* performedDateTime = "2018-05-26"
* status = #completed
* subject = Reference(Patient/example)

Instance: mii-exa-medikation-medication-request-caelyx
InstanceOf: mii-pr-medikation-medication-request
Usage: #example
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-medikation-medication-caelyx)
* subject = Reference(Patient/example)
* authoredOn = "2021-12-21T11:41:00+01:00"
* dosageInstruction.text = "Doxorubicin (Caelyx) 50 mg je Quadratmeter Koerperoberflaeche alle vier Wochen per intravenoeser Tropfinfusion"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 4
* dosageInstruction.timing.repeat.periodUnit = #wk
* dosageInstruction.route = $standardterms#20045000 "Intravenous use"

Instance: mii-exa-medikation-medikationsliste-aufnahmemedikation
InstanceOf: mii-pr-medikation-medikationsliste
Usage: #example
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste"
* status = #current
* mode = #snapshot
* title = "Aufnahmemedikation"
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $ihe-xds-fallkontext#E210
* subject = Reference(Patient/example)
* entry[+].item = Reference(MedicationStatement/example)

Instance: mii-exa-medikation-medikationsliste-aktuelle-therapie
InstanceOf: mii-pr-medikation-medikationsliste
Usage: #example
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste"
* status = #current
* mode = #working
* title = "Aktuelle medikamentöse Therapie"
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $ihe-xds-fallkontext#E200
* subject = Reference(Patient/example)
* entry[+].item = Reference(MedicationStatement/example)

Instance: mii-exa-medikation-medication-statement-concor
InstanceOf: mii-pr-medikation-medication-statement
Usage: #example
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"
* status = #intended
* medicationCodeableConcept = $cs-atc|2022#C07AB07
* medicationCodeableConcept.text = "Concor 2,5mg"
* subject = Reference(Patient/example)
* effectivePeriod.start = "2022-02-02T12:22:00+00:00"
* dosage[0].text = "Concor 2,5mg Tabl. 1-0-0-0"
* dosage[=].timing.repeat.frequency = 1
* dosage[=].timing.repeat.period = 1
* dosage[=].timing.repeat.periodUnit = #d
* dosage[=].timing.repeat.timeOfDay = "08:00:00"
* dosage[=].doseAndRate.doseQuantity = 1 '1' "Tablette"
* dosage[+].text = "Concor 2,5mg Tabl. 1-0-0-0"
* dosage[=].timing.repeat.frequency = 1
* dosage[=].timing.repeat.period = 1
* dosage[=].timing.repeat.periodUnit = #d
* dosage[=].timing.repeat.timeOfDay = "12:00:00"
* dosage[=].doseAndRate.doseQuantity = 0 '1' "Tablette"
* dosage[+].text = "Concor 2,5mg Tabl. 1-0-0-0"
* dosage[=].timing.repeat.frequency = 1
* dosage[=].timing.repeat.period = 1
* dosage[=].timing.repeat.periodUnit = #d
* dosage[=].timing.repeat.timeOfDay = "18:00:00"
* dosage[=].doseAndRate.doseQuantity = 0 '1' "Tablette"
* dosage[+].text = "Concor 2,5mg Tabl. 1-0-0-0"
* dosage[=].timing.repeat.frequency = 1
* dosage[=].timing.repeat.period = 1
* dosage[=].timing.repeat.periodUnit = #d
* dosage[=].timing.repeat.timeOfDay = "22:00:00"
* dosage[=].doseAndRate.doseQuantity = 0 '1' "Tablette"

Instance: mii-exa-medikation-medication-statement-hct
InstanceOf: mii-pr-medikation-medication-statement
Usage: #example
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"
* status = #intended
* medicationCodeableConcept = $cs-atc|2022#C03AA03
* medicationCodeableConcept.text = "HCT 12,5mg"
* subject = Reference(Patient/example)
* effectivePeriod.start = "2022-02-02T12:22:00+00:00"
* dosage[0].text = "HCT 12,5 mg Tabl. 1-0-0-0"
* dosage[=].timing.repeat.frequency = 1
* dosage[=].timing.repeat.period = 1
* dosage[=].timing.repeat.periodUnit = #d
* dosage[=].timing.repeat.timeOfDay = "08:00:00"
* dosage[=].doseAndRate.doseQuantity = 1 '1' "Tablette"
* dosage[+].text = "HCT 12,5 mg Tabl. 1-0-0-0"
* dosage[=].timing.repeat.frequency = 1
* dosage[=].timing.repeat.period = 1
* dosage[=].timing.repeat.periodUnit = #d
* dosage[=].timing.repeat.timeOfDay = "12:00:00"
* dosage[=].doseAndRate.doseQuantity = 1 '1' "Tablette"
* dosage[+].text = "HCT 12,5 mg Tabl. 1-0-0-0"
* dosage[=].timing.repeat.frequency = 1
* dosage[=].timing.repeat.period = 1
* dosage[=].timing.repeat.periodUnit = #d
* dosage[=].timing.repeat.timeOfDay = "18:00:00"
* dosage[=].doseAndRate.doseQuantity = 1 '1' "Tablette"
* dosage[+].text = "HCT 12,5 mg Tabl. 1-0-0-0"
* dosage[=].timing.repeat.frequency = 1
* dosage[=].timing.repeat.period = 1
* dosage[=].timing.repeat.periodUnit = #d
* dosage[=].timing.repeat.timeOfDay = "22:00:00"
* dosage[=].doseAndRate.doseQuantity = 1 '1' "Tablette"

Instance: mii-exa-medikation-medication-statement-ibuprofen
InstanceOf: mii-pr-medikation-medication-statement
Usage: #example
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"
* status = #intended
* medicationCodeableConcept = $cs-atc|2022#M01AE01
* medicationCodeableConcept.text = "Ibuprofen 400mg"
* subject = Reference(Patient/example)
* effectivePeriod.start = "2022-02-02T12:22:00+00:00"
* dosage.text = "Ibuprofen 400mg Tabl. 3x1 bei Bedarf (Kopfschmerzen)"
* dosage.timing.repeat.boundsPeriod.start = "2022-02-02T12:22:00+00:00"
* dosage.timing.repeat.frequency = 3
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.asNeededBoolean = true
* dosage.doseAndRate.doseQuantity = 1 '1' "Tablette"

Instance: mii-exa-medikation-medication-statement-zopiclon
InstanceOf: mii-pr-medikation-medication-statement
Usage: #example
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"
* status = #intended
* medicationCodeableConcept = $cs-atc|2022#N05CF01
* medicationCodeableConcept.text = "Zopiclon 3,75mg"
* subject = Reference(Patient/example)
* effectivePeriod.start = "2022-02-02T12:22:00+00:00"
* dosage[0].text = "Zopiclon 3,75mg Tabl. 0-0-0-1"
* dosage[=].timing.repeat.frequency = 1
* dosage[=].timing.repeat.period = 1
* dosage[=].timing.repeat.periodUnit = #d
* dosage[=].timing.repeat.timeOfDay = "08:00:00"
* dosage[=].doseAndRate.doseQuantity = 0 '1' "Tablette"
* dosage[+].text = "Zopiclon 3,75mg Tabl. 0-0-0-1"
* dosage[=].timing.repeat.frequency = 1
* dosage[=].timing.repeat.period = 1
* dosage[=].timing.repeat.periodUnit = #d
* dosage[=].timing.repeat.timeOfDay = "12:00:00"
* dosage[=].doseAndRate.doseQuantity = 0 '1' "Tablette"
* dosage[+].text = "Zopiclon 3,75mg Tabl. 0-0-0-1"
* dosage[=].timing.repeat.frequency = 1
* dosage[=].timing.repeat.period = 1
* dosage[=].timing.repeat.periodUnit = #d
* dosage[=].timing.repeat.timeOfDay = "18:00:00"
* dosage[=].doseAndRate.doseQuantity = 0 '1' "Tablette"
* dosage[+].text = "Zopiclon 3,75mg Tabl. 0-0-0-1"
* dosage[=].timing.repeat.frequency = 1
* dosage[=].timing.repeat.period = 1
* dosage[=].timing.repeat.periodUnit = #d
* dosage[=].timing.repeat.timeOfDay = "22:00:00"
* dosage[=].doseAndRate.doseQuantity = 1 '1' "Tablette"

Instance: mii-exa-medikation-list-admission
InstanceOf: mii-pr-medikation-medikationsliste
Usage: #example
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste"
* status = #current
* mode = #snapshot
* title = "Aufnahmemedikation"
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $ihe-xds-fallkontext#E210
* subject = Reference(Patient/example)
* encounter = Reference(Encounter/ExampleEinrichtungskontakt)
* entry[0].item = Reference(mii-exa-medikation-medication-statement-hct)
* entry[+].item = Reference(mii-exa-medikation-medication-statement-concor)
* entry[+].item = Reference(mii-exa-medikation-medication-statement-ibuprofen)
* entry[+].item = Reference(mii-exa-medikation-medication-statement-zopiclon)