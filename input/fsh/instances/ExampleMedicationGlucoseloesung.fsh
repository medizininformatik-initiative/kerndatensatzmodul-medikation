Instance: ExampleMedicationGlucoseloesung
InstanceOf: ProfileMedicationMedikation
Usage: #example
* code.coding[0] = $pzn#03705422 "Glucose 5% B.braun Ecoflac Plus"
* code.coding[+] = $atc#V06DC01 "Glucose"
* code.coding[+] = $atc_1#V06DC01 "glucose"
* form = $standardterms#11210000 "Solution for infusion"
* ingredient[0].isActive = true
* ingredient[=].itemCodeableConcept.coding[0] = $ask#12829 "Glucose"
* ingredient[=].itemCodeableConcept.coding[+] = urn:oid:2.16.840.1.113883.6.61#50-99-7 "Glucose"
* ingredient[=].itemCodeableConcept.coding[+] = $fdasis#5SL0G7R0OK "ANHYDROUS DEXTROSE"
* ingredient[=].itemCodeableConcept.coding[+] = $sct#67079006 "Glucose (substance)"
* ingredient[=].strength.denominator = 1000 'ml' "ml"
* ingredient[=].strength.numerator = 50 'g' "g"
* ingredient[+].isActive = false
* ingredient[=].itemCodeableConcept.coding[0] = $ask#00343 "Wasser für Injektionszwecke"
* ingredient[=].itemCodeableConcept.coding[+] = urn:oid:2.16.840.1.113883.6.61#7732-18-5 "WATER"
* ingredient[=].itemCodeableConcept.coding[+] = $fdasis#059QF0KO0R "WATER"
* ingredient[=].itemCodeableConcept.coding[+] = $sct#11713004 "Water (substance)"
* status = #active