RuleSet: PQTranslation(path, value, unit, system, code)
* {path}.extension[+].url = "http://hl7.org/fhir/StructureDefinition/extension-quantity-translation"
* {path}.extension[=].valueQuantity.value = {value}
* {path}.extension[=].valueQuantity.unit = "{unit}"
* {path}.extension[=].valueQuantity.system = "{system}"
* {path}.extension[=].valueQuantity.code = #{code}