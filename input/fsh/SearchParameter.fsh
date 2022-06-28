Instance: sp-mii-medikation-medication-ingredient-strength-numerator
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Medication-IngredientStrengthNumerator"
* version = "0.1.0"
* name = "SP_MII_Medikation_Medication_Ingredient_Strength_Numerator"
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

Instance: sp-mii-medikation-medication-ingredient-strength-denominator
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Medication-IngredientStrengthDenominator"
* version = "0.1.0"
* name = "SP_MII_Medikation_Medication_Ingredient_Strength_Denominator"
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

Instance: sp-mii-medikation-medication-reasonreference
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Medication-ReasonReference"
* version = "0.1.0"
* name = "SP_MII_Medikation_Medication_ReasonReference"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für (MedicationAdministration|MedicationStatement).reasonReference"
* code = #reason-reference
* base[+] = #MedicationStatement
* base[+] = #MedicationAdministration 
* type = #reference
* expression = "%resource.reasonReference"
* target[+] = #Condition
* target[+] = #Observation
* target[+] = #DiagnosticReport

Instance: sp-mii-medikation-medication-dosage-site
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Medication-DosageSite"
* version = "0.1.0"
* name = "SP_MII_Medikation_Medication_DosageSite"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für (MedicationAdministration|MedicationStatement).dosage.site"
* code = #dosage-site
* base[+] = #MedicationStatement
* base[+] = #MedicationAdministration 
* type = #token
* expression = "%resource.dosage.site"
* modifier[+] = #text
* modifier[+] = #in
* modifier[+] = #not-in
* modifier[+] = #below
* modifier[+] = #above

Instance: sp-mii-medikation-medication-dosage-route
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Medication-DosageRoute"
* version = "0.1.0"
* name = "SP_MII_Medikation_Medication_DosageRoute"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für (MedicationAdministration|MedicationStatement).dosage.route"
* code = #dosage-route
* base[+] = #MedicationStatement
* base[+] = #MedicationAdministration
* type = #token
* expression = "%resource.dosage.route"
* modifier[+] = #text
* modifier[+] = #in
* modifier[+] = #not-in
* modifier[+] = #below
* modifier[+] = #above

Instance: sp-mii-medikation-medicationstatement-doserange-low
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationStatement-DoseRangeLow"
* version = "0.1.0"
* name = "SP_MII_Medikation_MedicationStatement_DoseRangeLow"
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

Instance: sp-mii-medikation-medicationstatement-doserange-high
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationStatement-DoseRangeHigh"
* version = "0.1.0"
* name = "SP_MII_Medikation_MedicationStatement_DoseRangeHigh"
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

Instance: sp-mii-medikation-medicationstatement-dosequantity
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationStatement-DoseQuantity"
* version = "0.1.0"
* name = "SP_MII_Medikation_MedicationStatement_DoseQuantity"
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

Instance: sp-mii-medikation-medicationstatement-rateratio-numerator
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationStatement-RateRatioNumerator"
* version = "0.1.0"
* name = "SP_MII_Medikation_MedicationStatement_RateRatioNumerator"
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

Instance: sp-mii-medikation-medicationstatement-rateratio-denominator
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationStatement-RateRatioDenominator"
* version = "0.1.0"
* name = "SP_MII_Medikation_MedicationStatement_RateRatioDenominator"
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

Instance: sp-mii-medikation-medicationstatement-raterange-low
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationStatement-RateRangeLow"
* version = "0.1.0"
* name = "SP_MII_Medikation_MedicationStatement_RateRangeLow"
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

Instance: sp-mii-medikation-medicationstatement-raterange-high
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationStatement-RateRangeHigh"
* version = "0.1.0"
* name = "SP_MII_Medikation_MedicationStatement_RateRangeHigh"
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

Instance: sp-mii-medikation-medicationstatement-ratequantity
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationStatement-RateQuantity"
* version = "0.1.0"
* name = "SP_MII_Medikation_MedicationStatement_RateQuantity"
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

Instance: sp-mii-medikation-medicationadministration-dose
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationAdministration-Dose"
* version = "0.1.0"
* name = "SP_MII_Medikation_MedicationAdministration_Dose"
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

Instance: sp-mii-medikation-medicationadministration-rateratio-numerator
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationAdministration-RateRatioNumerator"
* version = "0.1.0"
* name = "SP_MII_Medikation_MedicationAdministration_RateRatioNumerator"
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

Instance: sp-mii-medikation-medicationadministration-rateratio-denominator
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationAdministration-RateRatioDenominator"
* version = "0.1.0"
* name = "SP_MII_Medikation_MedicationAdministration_RateRatioDenominator"
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

Instance: sp-mii-medikation-medicationadministration-ratequantity
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationAdministration-RateQuantity"
* version = "0.1.0"
* name = "SP_MII_Medikation_MedicationAdministration_RateQuantity"
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

Instance: sp-mii-medikation-medicationrequest-doserange-low
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationRequest-DoseRangeLow"
* version = "0.1.0"
* name = "SP_MII_Medikation_MedicationRequest_DoseRangeLow"
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

Instance: sp-mii-medikation-medicationrequest-doserange-high
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationRequest-DoseRangeHigh"
* version = "0.1.0"
* name = "SP_MII_Medikation_MedicationRequest_DoseRangeHigh"
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

Instance: sp-mii-medikation-medicationrequest-dosequantity
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationRequest-DoseQuantity"
* version = "0.1.0"
* name = "SP_MII_Medikation_MedicationRequest_DoseQuantity"
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

Instance: sp-mii-medikation-medicationrequest-rateratio-numerator
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationRequest-RateRatioNumerator"
* version = "0.1.0"
* name = "SP_MII_Medikation_MedicationRequest_RateRatioNumerator"
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

Instance: sp-mii-medikation-medicationrequest-rateratio-denominator
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationRequest-RateRatioDenominator"
* version = "0.1.0"
* name = "SP_MII_Medikation_MedicationRequest_RateRatioDenominator"
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

Instance: sp-mii-medikation-medicationrequest-raterange-low
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationRequest-RateRangeLow"
* version = "0.1.0"
* name = "SP_MII_Medikation_MedicationRequest_RateRangeLow"
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

Instance: sp-mii-medikation-medicationrequest-raterange-high
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationRequest-RateRangeHigh"
* version = "0.1.0"
* name = "SP_MII_Medikation_MedicationRequest_RateRangeHigh"
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

Instance: sp-mii-medikation-medicationrequest-ratequantity
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationRequest-RateQuantity"
* version = "0.1.0"
* name = "SP_MII_Medikation_MedicationRequest_RateQuantity"
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

Instance: sp-mii-medikation-list-mode
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/List-Mode"
* version = "0.1.0"
* name = "SP_MII_Medikation_List_Mode"
* status = #draft
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für List.mode"
* code = #mode
* base = #List 
* type = #token
* expression = "List.mode"