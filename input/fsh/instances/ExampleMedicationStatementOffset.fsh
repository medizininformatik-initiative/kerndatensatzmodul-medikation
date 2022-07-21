Instance: ExampleMedicationStatementOffset
InstanceOf: ProfileMedicationStatementMedikation
Usage: #example
* dosage.route = $standardterms#20053000 "Oral use"
* dosage.text = "L-Thyroxin 125 Mikrogramm täglich eine Tablette oral eine halbe Stunde vor dem Früchstück"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.offset = 30
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.timing.repeat.when = #ACM
* effectiveDateTime = "2020-05-27T17:57:00+01:00"
* medicationCodeableConcept = $pzn#02532793 "L-THYROXIN 125 Henning Tabletten"
* status = #active
* subject = Reference(Patient/example)