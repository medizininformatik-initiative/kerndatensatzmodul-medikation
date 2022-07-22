Instance: ExampleMedicationCalcium
InstanceOf: ProfileMedicationMedikation
Usage: #example
* code.coding[0] = $pzn#00169644 "CALCIUM SANDOZ forte Brausetabletten"
* code.coding[+] = $atc#A12AA20 "Calcium (verschiedene Salze in Kombination)"
* code.coding[+] = $atc_1#A12AA20 "calcium (different salts in combination)"
* form = $standardterms#10222000 "Effervescent tablet"
* ingredient[0].id = "ing_1"
* ingredient[=].extension.url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstofftyp"
* ingredient[=].extension.valueCoding = $wirkstofftyp#PIN
* ingredient[=].itemCodeableConcept.coding[0] = $fdasis#472LWJ3Y9N "CALCIUM LACTATE GLUCONATE"
* ingredient[=].itemCodeableConcept.coding[+] = urn:oid:2.16.840.1.113883.6.61#11116-97-5 "Calcium lactate gluconate"
* ingredient[=].itemCodeableConcept.coding[+] = $sct#422232005 "Calcium lactate gluconate (substance)"
* ingredient[=].strength.numerator = 2945.15 'mg' "milligram"
* ingredient[=].strength.denominator = 1 http://standardterms.edqm.eu#10222000 "Effervescent tablet"
* ingredient[+].id = "ing_2"
* ingredient[=].extension.url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstofftyp"
* ingredient[=].extension.valueCoding = $wirkstofftyp#PIN
* ingredient[=].itemCodeableConcept.coding[0] = $fdasis#H0G9379FGK "CALCIUM CARBONATE"
* ingredient[=].itemCodeableConcept.coding[+] = urn:oid:2.16.840.1.113883.6.61#471-34-1 "Calcium carbonate"
* ingredient[=].itemCodeableConcept.coding[+] = $sct#387307005 "Calcium carbonate (substance)"
* ingredient[=].strength.numerator = 300 'mg' "milligram"
* ingredient[=].strength.denominator = 1 http://standardterms.edqm.eu#10222000 "Effervescent tablet"
* ingredient[+].id = "ing_3"
* ingredient[=].extension[0].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstofftyp"
* ingredient[=].extension[=].valueCoding = $wirkstofftyp#IN
* ingredient[=].extension[+].extension.url = "ingredientUri"
* ingredient[=].extension[=].extension.valueUri = "#ing_1"
* ingredient[=].extension[=].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation"
* ingredient[=].extension[+].extension.url = "ingredientUri"
* ingredient[=].extension[=].extension.valueUri = "#ing_2"
* ingredient[=].extension[=].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation"
* ingredient[=].itemCodeableConcept.coding[0] = $fdasis#2M83C4R6ZB "CALCIUM CATION"
* ingredient[=].itemCodeableConcept.coding[+] = urn:oid:2.16.840.1.113883.6.61#14127-61-8 "Calcium cation"
* ingredient[=].itemCodeableConcept.coding[+] = $sct#5540006 "Calcium (substance)"
* ingredient[=].strength.numerator = 500.54 'mg' "milligram"
* ingredient[=].strength.denominator = 1 http://standardterms.edqm.eu#10222000 "Effervescent tablet"