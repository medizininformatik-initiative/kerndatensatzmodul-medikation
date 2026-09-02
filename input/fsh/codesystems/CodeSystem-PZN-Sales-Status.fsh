// Verkaufsstatus-Codes (MMI-Pharmindex-Katalog #116) zu Artikeln des
// PZN-CodeSystems http://fhir.de/CodeSystem/ifa/pzn.
//
// Zweck: die Angabe soll als PROPERTY an einer PZN-Codierung hinterlegt werden
// koennen, damit erkennbar bleibt, ob ein Artikel zum Dokumentationszeitpunkt
// im Vertrieb war. Das adressiert unmittelbar das Problem, dass PZN fluechtig
// sind: ein Code, der heute im Katalog fehlt, war moeglicherweise zum
// Behandlungszeitpunkt regulaer im Verkehr.
//
// LIZENZ: Der Inhalt stammt aus den MMI-Pharmindex-R3-Rohdaten und wird unter
// Lizenz zur Integration in Systeme der MII und des NUM verteilt. Deshalb wird
// hier BEWUSST NICHT das modulweite `insert LicenseCodeableCCBY40` verwendet -
// CC-BY-4.0 waere fuer lizenzierte Fremddaten eine falsche Aussage.

CodeSystem: MII_CS_Medikation_PZN_Sales_Status_Codes
Id: mii-cs-medikation-pzn-sales-status-code
Title: "MII CS Medikation PZN Sales Status Codes"
Description: "This code system contains the sales status codes (catalog #116) for medications in the http://fhir.de/CodeSystem/ifa/pzn CodeSystem. This representation was generated from the MMI Pharmindex R3 raw data files. It is distributed under license for the purposes of integration into the software systems of the Medical Informatics Initiative and the Network University Medicine."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CodeSystem/mii-cs-medikation-pzn-sales-status-code"
* ^status = #active
* ^experimental = false
* ^caseSensitive = false
* ^content = #complete
* insert PR_CS_VS_Version
* insert Publisher
* ^copyright = "Diese Repräsentation wurde aus den Rohdatendateien des MMI Pharmindex R3 erzeugt. Sie wird unter Lizenz zum Zweck der Integration in die Softwaresysteme der Medizininformatik-Initiative und des Netzwerks Universitätsmedizin verteilt."
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/mii-vs-medikation-pzn-sales-status-code"
* #D "Wegfall" "Verkehrsfähigkeit ist erloschen"
* #F "Außer Vertrieb" "Lagerware darf abverkauft werden, sofern der 'Verkehrsfähigkeitsstatus' dies zulässt"
* #N "Im Vertrieb" "Ein Artikel mit Status im Vertrieb ist im Markt erhältlich und wird vom Anbieter vertrieben"
* #R "Rückruf" "Ein Artikel, der zurückgerufen wurde darf nicht mehr abgegeben werden"
* #Z "Zurückgezogen" "Ein Artikel, der zurückgezogen wurde darf nicht mehr abgegeben werden"

ValueSet: MII_VS_Medikation_PZN_Sales_Status_Codes
Id: mii-vs-medikation-pzn-sales-status-code
Title: "MII VS Medikation PZN Sales Status Codes"
Description: "Alle Verkaufsstatus-Codes des CodeSystems MII CS Medikation PZN Sales Status Codes."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/mii-vs-medikation-pzn-sales-status-code"
* ^status = #active
* ^experimental = false
* insert PR_CS_VS_Version
* insert Publisher
* include codes from system MII_CS_Medikation_PZN_Sales_Status_Codes
