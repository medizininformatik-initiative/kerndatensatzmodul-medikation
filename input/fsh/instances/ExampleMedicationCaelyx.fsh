Instance: ExampleMedicationCaelyx
InstanceOf: ProfileMedicationMedikation
Usage: #example
* code.coding[0] = $pzn#887150 "Caelyx 50 Mg/25 ml Konz.z.Herst.e.Infusi"
* code.coding[+] = $atc#L01DB01 "Doxorubicin"
* status = #active
* form = $standardterms#11213000 "Concentrate for solution for infusion"
* ingredient.itemCodeableConcept.coding[0] = $fdasis#82F2G7BL4E "Doxorubicin hydrochloride"
* ingredient.itemCodeableConcept.coding[+] = urn:oid:2.16.840.1.113883.6.61#25316-40-9 "Doxorubicin hydrochloride"
* ingredient.isActive = true
* ingredient.strength.numerator = 50 'mg' "mg"
* ingredient.strength.denominator = 25 'ml' "ml"