Instance: ExampleMedicationRezeptur
InstanceOf: ProfileMedicationMedikation
Usage: #example
* code.text = "Infusion bestehend aus 85mg Doxorubicin aufgeloest zur Verabreichung in 250ml 5-%iger (50 mg/ml) Glucose-Infusionsloesung"
* form = $standardterms#11210000 "Solution for infusion"
* ingredient[0].isActive = true
* ingredient[=].itemCodeableConcept = $atc#L01DB01 "Doxorubicin"
* ingredient[=].strength.denominator = 250 'mL' "milliliter"
* ingredient[=].strength.numerator = 85 'mg' "mg"
* ingredient[+].isActive = true
* ingredient[=].itemReference = Reference(Medication/7f27cb8d-940b-43fd-ab8b-fee5b7a9b060)
* status = #active