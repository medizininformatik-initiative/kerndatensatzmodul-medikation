Instance: ExampleMedicationASS100
InstanceOf: ProfileMedicationMedikation
Title: "ASS100 Medication example"
Description: "ASS 100 - 1a Pharma TAH Tabletten"
Usage: #example
* code.coding[0] = $pzn#06312077 "ASS 100 - 1a Pharma TAH Tabletten"
* code.coding[+] = $atc#B01AC06 "acetylsalicylic acid"
* form = $standardterms#10219000 "Tablet"
* ingredient.itemCodeableConcept = $ask#00002 "Acetylsalicylsäure"
* ingredient.strength.numerator = 100 'mg' "milligram"
* ingredient.strength.denominator = 1 http://standardterms.edqm.eu#10219000 "Tablet"