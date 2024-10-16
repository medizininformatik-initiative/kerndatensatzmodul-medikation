//Instance: RouteOfAdministrationConceptMap
//InstanceOf: ConceptMap
//Title: "Mapping between EDQM Route of Administration and SNOMED CT"
//Description: "A mapping of route of administration codes between EDQM and SNOMED CT"
//* url = "http://example.org/fhir/ConceptMap/RouteOfAdministrationConceptMap"
//* status = #draft
//* sourceUri = "http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration"
//* targetUri = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/route-of-administration-snomed"
//* group[0].source = "http://standardterms.edqm.eu"
//* group[0].target = "http://snomed.info/sct"
//
//* group[0].element[+].code = "20001000"
//  * group[0].element[=].target[+].code = "448598008" // Auricular use -> Cutaneous route
//
//* group[0].element[+].code = "20002500"
//  * group[0].element[=].target[+].code = "54471007" // Buccal use -> Buccal route
//
//* group[0].element[+].code = "20003000"
//  * group[0].element[=].target[+].code = "448598008" // Cutaneous use -> Cutaneous route
//
//* group[0].element[+].code = "20004000"
//  * group[0].element[=].target[+].code = "372449004" // Dental use -> Dental route
//
//* group[0].element[+].code = "20006000"
//  * group[0].element[=].target[+].code = "372450004" // Endocervical use -> Endocervical route
//
//* group[0].element[+].code = "20007000"
//  * group[0].element[=].target[+].code = "372451000" // Endosinusial use -> Endosinusial route
//
//* group[0].element[+].code = "20008000"
//  * group[0].element[=].target[+].code = "372452007" // Endotracheopulmonary use -> Endotracheopulmonary route
//
//* group[0].element[+].code = "20009000"
//  * group[0].element[=].target[+].code = "404820008" // Epidural use -> Epidural route
//
//* group[0].element[+].code = "20010000"
//  * group[0].element[=].target[+].code = "764723001" // Epilesional use -> Epilesional route
//
//* group[0].element[+].code = "20011000"
//  * group[0].element[=].target[+].code = "372453002" // Extraamniotic use -> Extra-amniotic route
//
//* group[0].element[+].code = "20011500"
//  * group[0].element[=].target[+].code = "766790006" // Extracorporeal use -> Extracorporeal hemodialysis route
//
//* group[0].element[+].code = "20013500"
//  * group[0].element[=].target[+].code = "714743009" // Gastric use -> Gastric route
//
//* group[0].element[+].code = "20013000"
//  * group[0].element[=].target[+].code = "417985001" // Gastroenteral use -> Enteral route
//
//* group[0].element[+].code = "20014000"
//  * group[0].element[=].target[+].code = "419601003" // Gingival use -> Gingival route
//
//* group[0].element[+].code = "20015000"
//  * group[0].element[=].target[+].code = "284466007" // Haemodialysis -> Hemodialysis route
//
//* group[0].element[+].code = "20015500"
//  * group[0].element[=].target[+].code = "446406008" // Implantation -> Implantation route
//
//* group[0].element[+].code = "20019500"
//  * group[0].element[=].target[+].code = "419231008" // Infiltration -> Infiltration route
//
//* group[0].element[+].code = "20020000"
//  * group[0].element[=].target[+].code = "26643006" // Inhalation use -> Inhalation route
//
//* group[0].element[+].code = "20021000"
//  * group[0].element[=].target[+].code = "417060006" // Intestinal use -> Intestinal route
//
//* group[0].element[+].code = "20022000"
//  * group[0].element[=].target[+].code = "372454008" // Intraamniotic use -> Intra-amniotic route
//
//* group[0].element[+].code = "20023000"
//  * group[0].element[=].target[+].code = "372455009" // Intraarterial use -> Intra-arterial route
//
//* group[0].element[+].code = "20024000"
//  * group[0].element[=].target[+].code = "372450004" // Intraarticular use -> Intra-articular route
//
//* group[0].element[+].code = "20067000"
//  * group[0].element[=].target[+].code = "37839007" // Sublingual use -> Sublingual route
//
//* group[0].element[+].code = "20067500"
//  * group[0].element[=].target[+].code = "419874009" // Submucosal use -> Submucosal route
//
//* group[0].element[+].code = "20081000"
//  * group[0].element[=].target[+].code = "58831000052108" // Subretinal use -> Subretinal route
//
//* group[0].element[+].code = "20070000"
//  * group[0].element[=].target[+].code = "45890007" // Transdermal use -> Transdermal route
//
//* group[0].element[+].code = "20071000"
//  * group[0].element[=].target[+].code = "90028008" // Urethral use -> Urethral route
//
//* group[0].element[+].code = "20072000"
//  * group[0].element[=].target[+].code = "16857009" // Vaginal use -> Vaginal route