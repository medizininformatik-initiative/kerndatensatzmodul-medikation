Alias: $exp = http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation

RuleSet: SupportResource (resource, expectation)
* rest.resource[+].type = #{resource}
* rest.resource[=].extension[0].url = $exp
* rest.resource[=].extension[0].valueCode = {expectation}

RuleSet: Profile (profile, expectation)
* rest.resource[=].profile[+] = "{profile}"
* rest.resource[=].profile[=].extension[0].url = $exp
* rest.resource[=].profile[=].extension[0].valueCode = {expectation}

RuleSet: SupportProfile (profile, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].supportedProfile[+] = "{profile}"
* rest.resource[=].supportedProfile[=].extension[0].url = $exp
* rest.resource[=].supportedProfile[=].extension[0].valueCode = {expectation}

RuleSet: SupportInteraction (interaction, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].interaction[+].code = {interaction}
* rest.resource[=].interaction[=].extension[0].url = $exp
* rest.resource[=].interaction[=].extension[0].valueCode = {expectation}

RuleSet: SupportSearchParam (name, canonical, type, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].searchParam[+].name = "{name}"
* rest.resource[=].searchParam[=].definition = "{canonical}"
* rest.resource[=].searchParam[=].type = {type}
* rest.resource[=].searchParam[=].extension[0].url = $exp
* rest.resource[=].searchParam[=].extension[0].valueCode = {expectation}

Instance: mii-cps-medikation-capabilitystatement-2x
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CapabilityStatement/metadata"
* insert Version
* name = "MII_CPS_Medikation_CapabilityStatement_2x"
* title = "MII CPS Medikation CapabilityStatement"
* status = #active
* experimental = false
* date = "2024-05-29"
* insert SP_Publisher
* description = "Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss, um das Modul Medikation der Medizininformatik Initiative zu implementieren."
* jurisdiction = urn:iso:std:iso:3166#DE "Germany"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[+] = #json
* rest.mode = #server

// List requirements
* insert SupportResource(List, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/List, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste|2025.0.0, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert SupportSearchParam(date, http://hl7.org/fhir/SearchParameter/clinical-date, #date, #SHALL)
* insert SupportSearchParam(empty-reason, http://hl7.org/fhir/SearchParameter/List-empty-reason, #token, #SHALL)
* insert SupportSearchParam(encounter, http://hl7.org/fhir/SearchParameter/clinical-encounter, #reference, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
* insert SupportSearchParam(item, http://hl7.org/fhir/SearchParameter/List-item, #reference, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert SupportSearchParam(source, http://hl7.org/fhir/SearchParameter/List-source, #reference, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/List-status, #token, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/List-subject, #reference, #SHALL)
* insert SupportSearchParam(mode, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/List-Mode, #token, #SHALL)

// Medication requirements
* insert SupportResource(Medication, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Medication, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication|2025.0.0, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert SupportSearchParam(expiration-date, http://hl7.org/fhir/SearchParameter/Medication-expiration-date, #date, #SHALL)
* insert SupportSearchParam(form, http://hl7.org/fhir/SearchParameter/Medication-form, #token, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Medication-identifier, #token, #SHALL)
* insert SupportSearchParam(ingredient, http://hl7.org/fhir/SearchParameter/Medication-ingredient, #reference, #SHALL)
* insert SupportSearchParam(ingredient-code, http://hl7.org/fhir/SearchParameter/Medication-ingredient-code, #token, #SHALL)
* insert SupportSearchParam(lot-number, http://hl7.org/fhir/SearchParameter/Medication-lot-number, #token, #SHALL)
* insert SupportSearchParam(manufacturer, http://hl7.org/fhir/SearchParameter/Medication-manufacturer, #reference, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/Medication-status, #token, #SHALL)
* insert SupportSearchParam(ingredient-strength-numerator, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Medication-IngredientStrengthNumerator, #quantity, #SHALL)
* insert SupportSearchParam(ingredient-strength-denominator, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Medication-IngredientStrengthDenominator, #quantity, #SHALL)

// MedicationAdministration requirements
* insert SupportResource(MedicationAdministration, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/MedicationAdministration, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration|2025.0.0, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert SupportSearchParam(context, http://hl7.org/fhir/SearchParameter/MedicationAdministration-context, #reference, #SHALL)
* insert SupportSearchParam(effective-time, http://hl7.org/fhir/SearchParameter/MedicationAdministration-effective-time, #date, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
* insert SupportSearchParam(medication, http://hl7.org/fhir/SearchParameter/medications-medication, #reference, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert SupportSearchParam(performer, http://hl7.org/fhir/SearchParameter/MedicationAdministration-performer, #reference, #SHALL)
* insert SupportSearchParam(reason-given, http://hl7.org/fhir/SearchParameter/MedicationAdministration-reason-given, #token, #SHALL)
* insert SupportSearchParam(reason-not-given, http://hl7.org/fhir/SearchParameter/MedicationAdministration-reason-not-given, #token, #SHALL)
* insert SupportSearchParam(request, http://hl7.org/fhir/SearchParameter/MedicationAdministration-request, #reference, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/medications-status, #token, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/MedicationAdministration-subject, #reference, #SHALL)
* insert SupportSearchParam(dosage-site, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-Site, #token, #SHALL)
* insert SupportSearchParam(dosage-route, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-Route, #token, #SHALL)
* insert SupportSearchParam(dose-quantity, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-DoseQuantity, #quantity, #SHALL)
* insert SupportSearchParam(ratequantity, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-RateQuantity, #quantity, #SHALL)
* insert SupportSearchParam(rateratio-numerator, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-RateRatioNumerator, #quantity, #SHALL)
* insert SupportSearchParam(rateratio-denominator, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-RateRatioDenominator, #quantity, #SHALL)
* insert SupportSearchParam(rateratio, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-RateRatio, #composite, #SHALL)

// MedicationRequest requirements
* insert SupportResource(MedicationRequest, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/MedicationRequest, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest|2025.0.0, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(authoredon, http://hl7.org/fhir/SearchParameter/MedicationRequest-authoredon, #date, #SHALL)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/MedicationRequest-category, #token, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert SupportSearchParam(date, http://hl7.org/fhir/SearchParameter/medications-date, #date, #SHALL)
* insert SupportSearchParam(encounter, http://hl7.org/fhir/SearchParameter/medications-encounter, #reference, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
* insert SupportSearchParam(intended-dispenser, http://hl7.org/fhir/SearchParameter/MedicationRequest-intended-dispenser, #reference, #SHALL)
* insert SupportSearchParam(intended-performer, http://hl7.org/fhir/SearchParameter/MedicationRequest-intended-performer, #reference, #SHALL)
* insert SupportSearchParam(intended-performertype, http://hl7.org/fhir/SearchParameter/MedicationRequest-intended-performertype, #token, #SHALL)
* insert SupportSearchParam(intent, http://hl7.org/fhir/SearchParameter/MedicationRequest-intent, #token, #SHALL)
* insert SupportSearchParam(medication, http://hl7.org/fhir/SearchParameter/medications-medication, #reference, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert SupportSearchParam(priority, http://hl7.org/fhir/SearchParameter/MedicationRequest-priority, #token, #SHALL)
* insert SupportSearchParam(requester, http://hl7.org/fhir/SearchParameter/MedicationRequest-requester, #reference, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/medications-status, #token, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/MedicationRequest-subject, #reference, #SHALL)
* insert SupportSearchParam(dosage-site, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-Site, #token, #SHALL)
* insert SupportSearchParam(dosage-route, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-Route, #token, #SHALL)
* insert SupportSearchParam(doserange-low, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-DoseRangeLow, #quantity, #SHALL)
* insert SupportSearchParam(doserange-high, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-DoseRangeHigh, #quantity, #SHALL)
* insert SupportSearchParam(doserange, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-DoseRange, #composite, #SHALL)
* insert SupportSearchParam(dose-quantity, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-DoseQuantity, #quantity, #SHALL)
* insert SupportSearchParam(raterange-low, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-RateRangeLow, #quantity, #SHALL)
* insert SupportSearchParam(raterange-high, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-RateRangeHigh, #quantity, #SHALL)
* insert SupportSearchParam(raterange, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationStatement-RateRange, #composite, #SHALL)
* insert SupportSearchParam(ratequantity, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-RateQuantity, #quantity, #SHALL)
* insert SupportSearchParam(rateratio-numerator, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-RateRatioNumerator, #quantity, #SHALL)
* insert SupportSearchParam(rateratio-denominator, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-RateRatioDenominator, #quantity, #SHALL)
* insert SupportSearchParam(rateratio, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-RateRatio, #composite, #SHALL)

// MedicationStatement requirements
* insert SupportResource(MedicationStatement, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/MedicationStatement, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement|2025.0.0, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/MedicationStatement-category, #token, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert SupportSearchParam(context, http://hl7.org/fhir/SearchParameter/MedicationStatement-context, #reference, #SHALL)
* insert SupportSearchParam(effective, http://hl7.org/fhir/SearchParameter/MedicationStatement-effective, #date, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
* insert SupportSearchParam(medication, http://hl7.org/fhir/SearchParameter/medications-medication, #reference, #SHALL)
* insert SupportSearchParam(part-of, http://hl7.org/fhir/SearchParameter/MedicationStatement-part-of, #reference, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert SupportSearchParam(source, http://hl7.org/fhir/SearchParameter/MedicationStatement-source, #reference, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/medications-status, #token, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/MedicationStatement-subject, #reference, #SHALL)
* insert SupportSearchParam(dosage-site, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-Site, #token, #SHALL)
* insert SupportSearchParam(dosage-route, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-Route, #token, #SHALL)
* insert SupportSearchParam(doserange-low, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-DoseRangeLow, #quantity, #SHALL)
* insert SupportSearchParam(doserange-high, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-DoseRangeHigh, #quantity, #SHALL)
* insert SupportSearchParam(doserange, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-DoseRange, #composite, #SHALL)
* insert SupportSearchParam(dose-quantity, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-DoseQuantity, #quantity, #SHALL)
* insert SupportSearchParam(raterange-low, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-RateRangeLow, #quantity, #SHALL)
* insert SupportSearchParam(raterange-high, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-RateRangeHigh, #quantity, #SHALL)
* insert SupportSearchParam(raterange, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/MedicationStatement-RateRange, #composite, #SHALL)
* insert SupportSearchParam(ratequantity, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-RateQuantity, #quantity, #SHALL)
* insert SupportSearchParam(rateratio-numerator, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-RateRatioNumerator, #quantity, #SHALL)
* insert SupportSearchParam(rateratio-denominator, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-RateRatioDenominator, #quantity, #SHALL)
* insert SupportSearchParam(rateratio, https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-RateRatio, #composite, #SHALL)