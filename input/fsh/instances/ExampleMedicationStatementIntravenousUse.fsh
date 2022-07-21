Instance: ExampleMedicationStatementIntravenousUse
InstanceOf: ProfileMedicationStatementMedikation
Title: "MedicationStatement Example"
Description: "An Example of a MedicationStatement"
Usage: #example
* dosage.doseAndRate.doseRange.high = 2600 'mg' "milligram"
* dosage.doseAndRate.doseRange.low = 2400 'mg' "milligram"
* dosage.route = $standardterms#20045000 "Intravenous use"
* dosage.text = "Parenterale Applikation von 2.400 mg bis unter 2.600 mg Thiotepa"
* effectiveDateTime = "2018-05-26"
* medicationReference = Reference(Medication/8b455da3-931e-481f-abfe-da291cbba54e)
* partOf = Reference(Procedure/ce33960c-02c9-4888-9448-9a8b7906e369)
* status = #completed
* subject = Reference(Patient/fe1f7a9a-f33e-4dbe-9ee5-246e2d3baada)