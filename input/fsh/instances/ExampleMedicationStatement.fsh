Instance: ExampleMedicationStatement
InstanceOf: ProfileMedicationStatementMedikation
Usage: #example
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