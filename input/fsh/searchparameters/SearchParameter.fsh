Instance: mii-sp-medikation-medication-ingredient-strength-numerator
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Medication-IngredientStrengthNumerator"
* insert SP_Publisher
* name = "MII_SP_Medikation_Medication_Ingredient_Strength_Numerator"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für Medication.ingredient.strength.numerator"
* code = #ingredient-strength-numerator
* base = #Medication
* type = #quantity
* expression = "Medication.ingredient.strength.numerator"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-medikation-medication-ingredient-strength-denominator
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Medication-IngredientStrengthDenominator"
* insert SP_Publisher
* name = "MII_SP_Medikation_Medication_Ingredient_Strength_Denominator"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für Medication.ingredient.strength.denominator"
* code = #ingredient-strength-denominator
* base = #Medication
* type = #quantity
* expression = "Medication.ingredient.strength.denominator"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-medikation-medication-ingredient-strength
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Medication-IngredientStrength"
* insert SP_Publisher
* name = "MII_SP_Medikation_Medication_Ingredient_Strength"
* status = #draft
* experimental = false
* date = "2022-09-22"
* description = "Suchparameter für Medication.ingredient.strength"
* code = #ingredient-strength
* base = #Medication
* type = #composite
* expression = "Medication.ingredient.strength"
* component[0].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Medication-IngredientStrengthNumerator"
* component[=].expression = "numerator"
* component[+].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Medication-IngredientStrengthDenominator"
* component[=].expression = "denominator"

Instance: mii-sp-medikation-medication-reasonreference
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Medication-ReasonReference"
* insert SP_Publisher
* name = "MII_SP_Medikation_Medication_ReasonReference"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für (MedicationAdministration|MedicationStatement).reasonReference"
* code = #reason-reference
* base[+] = #MedicationStatement
* base[+] = #MedicationAdministration 
* type = #reference
* expression = "MedicationAdministration.reasonReference | MedicationStatement.reasonReference"
* target[+] = #Condition
* target[+] = #Observation
* target[+] = #DiagnosticReport

Instance: mii-sp-medikation-medication-dosage-site
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Medication-DosageSite"
* insert SP_Publisher
* name = "MII_SP_Medikation_Medication_DosageSite"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für (MedicationAdministration|MedicationStatement).dosage.site"
* code = #dosage-site
* base[+] = #MedicationStatement
* base[+] = #MedicationAdministration 
* type = #token
* expression = "MedicationAdministration.dosage.site | MedicationStatement.dosage.site"
* modifier[+] = #text
* modifier[+] = #in
* modifier[+] = #not-in
* modifier[+] = #below
* modifier[+] = #above

Instance: mii-sp-medikation-medication-dosage-route
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Medication-DosageRoute"
* insert SP_Publisher
* name = "MII_SP_Medikation_Medication_DosageRoute"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für (MedicationAdministration|MedicationStatement).dosage.route"
* code = #dosage-route
* base[+] = #MedicationStatement
* base[+] = #MedicationAdministration
* type = #token
* expression = "MedicationAdministration.dosage.route | MedicationStatement.dosage.route"
* modifier[+] = #text
* modifier[+] = #in
* modifier[+] = #not-in
* modifier[+] = #below
* modifier[+] = #above

Instance: mii-sp-medikation-medicationstatement-doserange-low
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationStatement-DoseRangeLow"
* insert SP_Publisher
* name = "MII_SP_Medikation_MedicationStatement_DoseRangeLow"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für MedicationStatement.dosage.doseAndRate.doseRange.low"
* code = #doserange-low
* base[+] = #MedicationStatement
* type = #quantity
* expression = "MedicationStatement.dosage.doseAndRate.doseRange.low"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-medikation-medicationstatement-doserange-high
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationStatement-DoseRangeHigh"
* insert SP_Publisher
* name = "MII_SP_Medikation_MedicationStatement_DoseRangeHigh"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für MedicationStatement.dosage.doseAndRate.doseRange.high"
* code = #doserange-high
* base[+] = #MedicationStatement
* type = #quantity
* expression = "MedicationStatement.dosage.doseAndRate.doseRange.high"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-medikation-medicationstatement-doserange
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationStatement-DoseRange"
* insert SP_Publisher
* name = "MII_SP_Medikation_MedicationStatement_DoseRange"
* status = #draft
* experimental = false
* date = "2022-09-22"
* description = "Suchparameter für MedicationStatement.dosage.doseAndRate.doseRange"
* code = #doserange
* base = #MedicationStatement
* type = #composite
* expression = "MedicationStatement.dosage.doseAndRate.doseRange"
* component[0].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationStatement-DoseRangeLow"
* component[=].expression = "low"
* component[+].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationStatement-DoseRangeHigh"
* component[=].expression = "high"

Instance: mii-sp-medikation-medicationstatement-dosequantity
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationStatement-DoseQuantity"
* insert SP_Publisher
* name = "MII_SP_Medikation_MedicationStatement_DoseQuantity"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für MedicationStatement.dosage.doseAndRate.doseQuantity"
* code = #dose-quantity
* base[+] = #MedicationStatement
* type = #quantity
* expression = "MedicationStatement.dosage.doseAndRate.doseQuantity"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-medikation-medicationstatement-rateratio-numerator
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationStatement-RateRatioNumerator"
* insert SP_Publisher
* name = "MII_SP_Medikation_MedicationStatement_RateRatioNumerator"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für MedicationStatement.dosage.doseAndRate.rateRatio.numerator"
* code = #rateratio-numerator
* base[+] = #MedicationStatement
* type = #quantity
* expression = "MedicationStatement.dosage.doseAndRate.rateRatio.numerator"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-medikation-medicationstatement-rateratio-denominator
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationStatement-RateRatioDenominator"
* insert SP_Publisher
* name = "MII_SP_Medikation_MedicationStatement_RateRatioDenominator"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für MedicationStatement.dosage.doseAndRate.rateRatio.denominator"
* code = #rateratio-numerator
* base[+] = #MedicationStatement
* type = #quantity
* expression = "MedicationStatement.dosage.doseAndRate.rateRatio.denominator"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-medikation-medicationstatement-rateratio
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationStatement-RateRatio"
* insert SP_Publisher
* name = "MII_SP_Medikation_MedicationStatement_RateRatio"
* status = #draft
* experimental = false
* date = "2022-09-22"
* description = "Suchparameter für MedicationStatement.dosage.doseAndRate.rateRatio"
* code = #rateratio
* base = #MedicationStatement
* type = #composite
* expression = "MedicationStatement.dosage.doseAndRate.rateRatio"
* component[0].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationStatement-RateRatioNumerator"
* component[=].expression = "numerator"
* component[+].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationStatement-RateRatioDenominator"
* component[=].expression = "denominator"

Instance: mii-sp-medikation-medicationstatement-raterange-low
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationStatement-RateRangeLow"
* insert SP_Publisher
* name = "MII_SP_Medikation_MedicationStatement_RateRangeLow"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für MedicationStatement.dosage.doseAndRate.rateRange.low"
* code = #raterange-low
* base[+] = #MedicationStatement
* type = #quantity
* expression = "MedicationStatement.dosage.doseAndRate.rateRange.low"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-medikation-medicationstatement-raterange-high
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationStatement-RateRangeHigh"
* insert SP_Publisher
* name = "MII_SP_Medikation_MedicationStatement_RateRangeHigh"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für MedicationStatement.dosage.doseAndRate.rateRange.high"
* code = #raterange-high
* base[+] = #MedicationStatement
* type = #quantity
* expression = "MedicationStatement.dosage.doseAndRate.rateRange.high"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-medikation-medicationstatement-raterange
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationStatement-RateRange"
* insert SP_Publisher
* name = "MII_SP_Medikation_MedicationStatement_RateRange"
* status = #draft
* experimental = false
* date = "2022-09-22"
* description = "Suchparameter für MedicationStatement.dosage.doseAndRate.rateRange"
* code = #raterange
* base = #MedicationStatement
* type = #composite
* expression = "MedicationStatement.dosage.doseAndRate.rateRange"
* component[0].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationStatement-RateRangeLow"
* component[=].expression = "low"
* component[+].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationStatement-RateRangeHigh"
* component[=].expression = "high"

Instance: mii-sp-medikation-medicationstatement-ratequantity
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationStatement-RateQuantity"
* insert SP_Publisher
* name = "MII_SP_Medikation_MedicationStatement_RateQuantity"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für MedicationStatement.dosage.doseAndRate.rateQuantity"
* code = #ratequantity
* base[+] = #MedicationStatement
* type = #quantity
* expression = "MedicationStatement.dosage.doseAndRate.rateQuantity"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-medikation-medicationadministration-dose
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationAdministration-Dose"
* insert SP_Publisher
* name = "MII_SP_Medikation_MedicationAdministration_Dose"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für MedicationAdministration.dosage.dose"
* code = #ratequantity
* base[+] = #MedicationStatement
* type = #quantity
* expression = "MedicationAdministration.dosage.dose"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-medikation-medicationadministration-rateratio-numerator
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationAdministration-RateRatioNumerator"
* insert SP_Publisher
* name = "MII_SP_Medikation_MedicationAdministration_RateRatioNumerator"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für MedicationAdministration.dosage.rateRatio.numerator"
* code = #rateratio-numerator
* base[+] = #MedicationAdministration
* type = #quantity
* expression = "MedicationAdministration.dosage.rateRatio.numerator"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-medikation-medicationadministration-rateratio-denominator
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationAdministration-RateRatioDenominator"
* insert SP_Publisher
* name = "MII_SP_Medikation_MedicationAdministration_RateRatioDenominator"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für MedicationAdministration.dosage.rateRatio.denominator"
* code = #rateratio-denominator
* base[+] = #MedicationAdministration
* type = #quantity
* expression = "MedicationAdministration.dosage.rateRatio.denominator"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-medikation-medicationadministration-rateratio
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationAdministration-RateRatio"
* insert SP_Publisher
* name = "MII_SP_Medikation_MedicationAdministration_RateRatio"
* status = #draft
* experimental = false
* date = "2022-09-22"
* description = "Suchparameter für MedicationAdministration.dosage.rateRatio"
* code = #rateratio
* base = #MedicationAdministration
* type = #composite
* expression = "MedicationAdministration.dosage.rateRatio"
* component[0].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationAdministration-RateRatioNumerator"
* component[=].expression = "numerator"
* component[+].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationAdministration-RateRatioDenominator"
* component[=].expression = "denominator"

Instance: mii-sp-medikation-medicationadministration-ratequantity
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationAdministration-RateQuantity"
* insert SP_Publisher
* name = "MII_SP_Medikation_MedicationAdministration_RateQuantity"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für MedicationAdministration.dosage.rateQuantity"
* code = #ratequantity
* base[+] = #MedicationAdministration
* type = #quantity
* expression = "MedicationAdministration.dosage.rateQuantity"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-medikation-medicationrequest-doserange-low
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationRequest-DoseRangeLow"
* insert SP_Publisher
* name = "MII_SP_Medikation_MedicationRequest_DoseRangeLow"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für MedicationRequest.dosageInstruction.doseAndRate.doseRange.low"
* code = #doserange-low
* base[+] = #MedicationRequest
* type = #quantity
* expression = "MedicationRequest.dosageInstruction.doseAndRate.doseRange.low"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-medikation-medicationrequest-doserange-high
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationRequest-DoseRangeHigh"
* insert SP_Publisher
* name = "MII_SP_Medikation_MedicationRequest_DoseRangeHigh"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für MedicationRequest.dosageInstruction.doseAndRate.doseRange.high"
* code = #doserange-high
* base[+] = #MedicationRequest
* type = #quantity
* expression = "MedicationRequest.dosageInstruction.doseAndRate.doseRange.high"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-medikation-medicationrequest-dosequantity
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationRequest-DoseQuantity"
* insert SP_Publisher
* name = "MII_SP_Medikation_MedicationRequest_DoseQuantity"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für MedicationRequest.dosageInstruction.doseAndRate.doseQuantity"
* code = #dose-quantity
* base[+] = #MedicationRequest
* type = #quantity
* expression = "MedicationRequest.dosageInstruction.doseAndRate.doseQuantity"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-medikation-medicationrequest-rateratio-numerator
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationRequest-RateRatioNumerator"
* insert SP_Publisher
* name = "MII_SP_Medikation_MedicationRequest_RateRatioNumerator"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für MedicationRequest.dosageInstruction.doseAndRate.rateRatio.numerator"
* code = #rateratio-numerator
* base[+] = #MedicationRequest
* type = #quantity
* expression = "MedicationRequest.dosageInstruction.doseAndRate.rateRatio.numerator"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-medikation-medicationrequest-rateratio-denominator
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationRequest-RateRatioDenominator"
* insert SP_Publisher
* name = "MII_SP_Medikation_MedicationRequest_RateRatioDenominator"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für MedicationRequest.dosageInstruction.doseAndRate.rateRatio.denominator"
* code = #rateratio-numerator
* base[+] = #MedicationRequest
* type = #quantity
* expression = "MedicationRequest.dosageInstruction.doseAndRate.rateRatio.denominator"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-medikation-medicationrequest-raterange-low
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationRequest-RateRangeLow"
* insert SP_Publisher
* name = "MII_SP_Medikation_MedicationRequest_RateRangeLow"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für MedicationRequest.dosageInstruction.doseAndRate.rateRange.low"
* code = #raterange-low
* base[+] = #MedicationRequest
* type = #quantity
* expression = "MedicationRequest.dosageInstruction.doseAndRate.rateRange.low"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-medikation-medicationrequest-raterange-high
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationRequest-RateRangeHigh"
* insert SP_Publisher
* name = "MII_SP_Medikation_MedicationRequest_RateRangeHigh"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für MedicationRequest.dosageInstruction.doseAndRate.rateRange.high"
* code = #raterange-high
* base[+] = #MedicationRequest
* type = #quantity
* expression = "MedicationRequest.dosageInstruction.doseAndRate.rateRange.high"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-medikation-medicationrequest-ratequantity
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationRequest-RateQuantity"
* insert SP_Publisher
* name = "MII_SP_Medikation_MedicationRequest_RateQuantity"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für MedicationRequest.dosageInstruction.doseAndRate.rateQuantity"
* code = #ratequantity
* base[+] = #MedicationRequest
* type = #quantity
* expression = "MedicationRequest.dosageInstruction.doseAndRate.rateQuantity"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-medikation-list-mode
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/List-Mode"
* insert SP_Publisher
* name = "MII_SP_Medikation_List_Mode"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für List.mode"
* code = #mode
* base = #List 
* type = #token
* expression = "List.mode"