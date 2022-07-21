Instance: ExampleMedicationThiotepa
InstanceOf: ProfileMedicationMedikation
Usage: #example
* ingredient.extension.url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstofftyp"
* ingredient.extension.valueCoding = $wirkstofftyp#IN "ingredient"
* ingredient.itemCodeableConcept.coding[0] = $fdasis#905Z5W3GKH "thiotepa"
* ingredient.itemCodeableConcept.coding[+] = $ask#7962 "thiotepa"
* ingredient.itemCodeableConcept.coding[+] = urn:oid:2.16.840.1.113883.6.61#52-24-4 "thiotepa"