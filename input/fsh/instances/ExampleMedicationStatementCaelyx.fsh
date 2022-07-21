Instance: ExampleMedicationStatementCaelyx
InstanceOf: ProfileMedicationStatementMedikation
Usage: #example
* status = #active
* medicationReference = Reference(Medication/bbc6c5a1-62df-44fa-a907-d066476ac7f9)
* subject = Reference(Patient/688f4605-71c0-48ef-a2d8-cd03a6d3dee1)
* effectiveDateTime = "2020-01-02T09:30:00+01:00"
* dosage.text = "Doxorubicin (Caelyx) 50 mg je Quadratmeter Koerperoberflaeche alle vier Wochen per intravenoeser Tropfinfusion"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 4
* dosage.timing.repeat.periodUnit = #wk
* dosage.route = $standardterms#20045000 "Intravenous use"