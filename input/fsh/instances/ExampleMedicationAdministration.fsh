Instance: ExampleMedicationAdministration
InstanceOf: ProfileMedicationAdministrationMedikation
Title: "MedicationAdministration Example"
Description: "An Example of a MedicationAdministration"
Usage: #example
* dosage.dose = 85 'mg' "mg"
* dosage.rateRatio.denominator = 1 'h' "hour"
* dosage.rateRatio.numerator = 250 'mL' "milliliter"
* dosage.route = $standardterms#20045000 "Intravenous use"
* effectivePeriod.end = "2020-01-06T11:20:00.000+00:00"
* effectivePeriod.start = "2020-01-06T10:20:00.000+00:00"
* medicationReference = Reference(Medication/8b67be5c-d83a-417c-864e-85fb5e9f4d52)
* status = #completed
* subject = Reference(Patient/688f4605-71c0-48ef-a2d8-cd03a6d3dee1)