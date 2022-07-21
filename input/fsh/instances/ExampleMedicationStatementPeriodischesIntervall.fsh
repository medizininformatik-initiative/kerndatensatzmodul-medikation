Instance: ExampleMedicationStatementPeriodischesIntervall
InstanceOf: ProfileMedicationStatementMedikation
Usage: #example
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
* medicationCodeableConcept = $pzn#05541338 "Marcumar"
* status = #active
* subject = Reference(Patient/example)