RuleSet: Translation(path, language, translation)
* {path}.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* {path}.extension[=].extension[0].url = "lang"
* {path}.extension[=].extension[0].valueCode = #{language}
* {path}.extension[=].extension[1].url = "content"
* {path}.extension[=].extension[1].valueString = "{translation}"

RuleSet: AddSnomedCodingTranslation(path)
* {path} ^short = "SNOMED CT Code"
* insert Translation({path} ^short, de-DE, SNOMED CT Code)
* insert Translation({path} ^short, en-US, SNOMED CT code)
* {path} ^definition = "Ein Verweis auf einen von SNOMED CT definierten Code"
* insert Translation({path} ^definition, de-DE, Ein Verweis auf einen von SNOMED CT definierten Code)
* insert Translation({path} ^definition, en-US, A reference to a code defined by SNOMED CT)

RuleSet: AddPznCodingTranslation(path)
* {path} ^short = "PZN Code"
* insert Translation({path} ^short, de-DE, PZN Code)
* insert Translation({path} ^short, en-US, PZN code)
* {path} ^definition = "Ein Verweis auf einen von der Pharmazentralnummer (PZN) definierten Code"
* insert Translation({path} ^definition, de-DE, Ein Verweis auf einen von der Pharmazentralnummer definierten Code)
* insert Translation({path} ^definition, en-US, A reference to a code defined by Pharmazentralnummer)

RuleSet: AddAtcDeCodingTranslation(path)
* {path} ^short = "ATC Code"
* insert Translation({path} ^short, de-DE, ATC Code)
* insert Translation({path} ^short, en-US, ATC code)
* {path} ^definition = "Ein Verweis auf einen von der deutschen Fassung der Anatomisch-Therapeutisch-Chemischen Klassifikation definierten Code"
* insert Translation({path} ^definition, de-DE, Ein Verweis auf einen von der deutschen Fassung der Anatomisch-Therapeutisch-Chemischen Klassifikation definierten Code)
* insert Translation({path} ^definition, en-US, A reference to a code defined by the German edition of the Anatomical Therapeutic Chemical classification system)

RuleSet: AddAtcWhoCodingTranslation(path)
* {path} ^short = "ATC WHO Code"
* insert Translation({path} ^short, de-DE, ATC WHO Code)
* insert Translation({path} ^short, en-US, ATC WHO code)
* {path} ^definition = "Ein Verweis auf einen von der WHO Anatomisch-Therapeutisch-Chemischen Klassifikation definierten Code"
* insert Translation({path} ^definition, de-DE, Ein Verweis auf einen von der WHO Anatomisch-Therapeutisch-Chemischen Klassifikation definierten Code)
* insert Translation({path} ^definition, en-US, A reference to a code defined by the WHO edition of the Anatomical Therapeutic Chemical classification system)

RuleSet: AddUniiCodingTranslation(path)
* {path} ^short = "Unique Ingredient Identifier"
* insert Translation({path} ^short, de-DE, Unique Ingredient Identifier)
* insert Translation({path} ^short, en-US, Unique Ingredient Identifier)
* {path} ^definition = "Ein Unique Ingredient Identifier (UNII) aus dem Global Substance Registration System der amerikanischen Food & Drug Administration"
* insert Translation({path} ^definition, de-DE, Ein Unique Ingredient Identifier (UNII\) aus dem Global Substance Registration System der amerikanischen Food & Drug Administration)
* insert Translation({path} ^definition, en-US, A Unique Ingredient Identifier (UNII\) from the american Food & Drug Administration's Global Substance Registration System)

RuleSet: AddEdqmCodingTranslation(path)
* {path} ^short = "EDQM Code"
* insert Translation({path} ^short, de-DE, EDQM Code)
* insert Translation({path} ^short, en-US, EDQM code)
* {path} ^definition = "Ein Verweis auf einen durch EDQM Standard Terms definierten Code"
* insert Translation({path} ^definition, de-DE, Ein Verweis auf einen durch EDQM Standard Terms definierten Code)
* insert Translation({path} ^definition, en-US, A reference to a code defined by EDQM Standard Terms)