Logical: LogicalModelMedikation
Parent: Element
Id: LogicalModelMedikation
Title: "LogicalModel - Medikation"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/LogicalModel/BasismodulMedikation"
* . ^short = "Das Basismodul Medikation enthält Datenelemente zur Dokumentation von Arzneimittelverordnungen und -gaben"
* Medikationsliste 0..* BackboneElement "Medikationsliste" "Die Medikationsliste ist eine flache Sammlung von Medikationseinträgen, die ein Patient zu einem bestimmten Zeitpunkt einnimmt, beispielsweise bei Aufnahme oder Entlassung."
  * ^comment = "FHIR-Mapping: List"
  * Identifikation 0..* http://hl7.org/fhir/StructureDefinition/Identifier "Identifikator der Medikationsliste" "Business Identifier der Medikationsliste"
    * ^comment = "FHIR-Mapping: List.identifier"
  * Status 1..1 http://hl7.org/fhir/StructureDefinition/code "Status" "Zeigt den Status der Medikationsliste an"
    * ^comment = "FHIR-Mapping: List.status"
  * Modus 1..1 http://hl7.org/fhir/StructureDefinition/code "Modus" "Zeigt den Modus der Mediaktionsliste an - ob es sich um eine Arbeitsliste handelt, die laufend aktualisiert wird, oder um eine Momentaufnahme, beispielsweise die Liste der Medikationseinträge bei Aufnahme oder Entlassung."
    * ^comment = "FHIR-Mapping: List.mode"
  * Typ 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Typ" "Definiert den Typ der Liste - warum diese erstellt wurde."
    * ^comment = "FHIR-Mapping: List.code"
  * Medikationseintrag 0..* http://hl7.org/fhir/StructureDefinition/Reference "Medikationseintrag" "Referenz auf Medikationseintrag"
    * ^comment = "FHIR-Mapping: List.entry"
* Medikationsverordnung 0..* BackboneElement "Medikationsverordnung" "Dokumentation einer Medikationsanordnung durch medizinisches Personal."
  * ^comment = "FHIR-Mapping: MedicationRequest"
    * Identifikation 0..* http://hl7.org/fhir/StructureDefinition/Identifier "Identifikator der Medikationsverordnung" "Business Identifier der Medikationsverordnung"
      * ^comment = "FHIR-Mapping: MedicationRequest.identifier"
    * Status 1..1 http://hl7.org/fhir/StructureDefinition/code "Status" "Status der Medikationsverordnung"
      * ^comment = "FHIR-Mapping: MedicationRequest.status"
    * Arzneimittel-Wirkstoff-Rezeptur 0..* BackboneElement "Die Medikation, die verordnet wird." "Es kann sich um ein Fertigarzneimittel oder eine Rezeptur handeln. Auch die Angabe nur des Wirkstoffes ist möglich."
      * ^comment = "FHIR-Mapping: MedicationRequest.medication[x]"
      * Arzneimittelprodukt 0..1 BackboneElement "Arzneimittelprodukt: hiermit ist sowohl eine zusammengesetzte Produkt-ID (PhPID) gemeint wie die Pharmazentralnummer (PZN), als auch Produktidentifikatoren (GTIN)." "Arzneimittelprodukt: hiermit ist sowohl eine zusammengesetzte Produkt-ID (PhPID) gemeint wie die Pharmazentralnummer (PZN), als auch Produktidentifikatoren (GTIN)."
        * ^comment = "FHIR-Mapping: Medication.code"
        * Arzneimittel-Name 0..1 http://hl7.org/fhir/StructureDefinition/string "Arzneimittelname oder auch Handelsname genannt. Bezeichnung eines Fertigarzneimittels gemäß Informationsstelle für Arzneispezialitäten (IFA) oder Hauskatalog." "Arzneimittelname oder auch Handelsname genannt. Bezeichnung eines Fertigarzneimittels gemäß Informationsstelle für Arzneispezialitäten (IFA) oder Hauskatalog."
          * ^comment = "FHIR-Mapping: Medication.code.text"
        * Arzneimittel-Code 0..* http://hl7.org/fhir/StructureDefinition/CodeableConcept "Identifikation eines Fertigarzneimittels durch seinen Code, z. B. Pharmazentralnummer (PZN), IDMP Pharmaceutical Product Identifiers (PhPID), IDMP Medicinal Product Identifier (MPID), Pharmacy Product Number (PPN)" "Identifikation eines Fertigarzneimittels durch seinen Code, z. B. Pharmazentralnummer (PZN), IDMP Pharmaceutical Product Identifiers (PhPID), IDMP Medicinal Product Identifier (MPID), Pharmacy Product Number (PPN)"
          * ^comment = "FHIR-Mapping: Medication.code.coding"
        * Arzneimittelwirkstaerke 0..1 http://hl7.org/fhir/StructureDefinition/Ratio "Wirkstärke gemäß Handelsname" "Wirkstärke gemäß Handelsname"
          * ^comment = "FHIR-Mapping: Medication.amount"
      * Rezeptur 0..1 BackboneElement "Rezeptur-Eintrag" "AkdÄ MP 2.0: D17 Datenfeld, um freitextlich eine Rezeptur als Medikationseintrag zu gestalten."
        * ^comment = "FHIR-Mapping: Medication.code.coding als fixed code für Rezeptur in Kombination mit Medication.code.text für die Beschreibung der Rezeptur"
        * Freitextzeile 0..1 http://hl7.org/fhir/StructureDefinition/string "Beschreibung der Rezeptur" "Beschreibung der Rezeptur"
          * ^comment = "FHIR-Mapping: Medication.code.text"
      * Wirkstoff 1..* BackboneElement "Wirkstoff" "Wirkstoff"
        * ^comment = "FHIR-Mapping: Medication.ingredient"
        * Wirkstoff-Name-Allgemein 0..1 http://hl7.org/fhir/StructureDefinition/string "Bezeichnung eines Wirkstoffes, der aus einer Wirkstoffklassifikation entnommen wird. In den meisten Fällen WHO-INN (international non-proprietary name der World Health Organisation) in der englischen Version. Hinweis: in Deutschland gibt es z.T. Schreibvarianten oder weitere Bezeichnungen. Für Substanzen ohne WHO INN die registrierte Substanzbezeichnung." "Bezeichnung eines Wirkstoffes, der aus einer Wirkstoffklassifikation entnommen wird. In den meisten Fällen WHO-INN (international non-proprietary name der World Health Organisation) in der englischen Version. Hinweis: in Deutschland gibt es z.T. Schreibvarianten oder weitere Bezeichnungen. Für Substanzen ohne WHO INN die registrierte Substanzbezeichnung."
          * ^comment = "Abgrenzung zu Wirkstoff-Name (aktiv): Bei Wirkstoff-Name (allgemein) kein „Derivat“ der Substanz (Salz, Ester etc.), wie es im Arzneimittel als \"active ingredient\" registriert sein kann. \r\n\r\nFHIR-Mapping: Medication.ingredient.itemCodeableConcept.text\r\n\r\ni.V.m. Medication.ingredient.isActive kann festgestellt werden, ob diese Substanz aktive Substanz des Medikamentes ist."
        * Wirkstoff-Code-Allgemein 0..* http://hl7.org/fhir/StructureDefinition/CodeableConcept "Code eines Wirkstoffes, der aus einer Wirkstoffklassifikation entnommen wird z.B. ASK, UNII." "Code eines Wirkstoffes, der aus einer Wirkstoffklassifikation entnommen wird z.B. ASK, UNII."
          * ^comment = "Die Problematik mit ATC-Codes ist bekannt.\r\nAbgrenzung zu Wirkstoff-Code (aktiv): Bei Wirkstoff-Code (allgemein) kein „Derivat“ der Substanz (Salz, Ester etc.), wie es im Arzneimittel als \"active ingredient\" registriert sein kann.\r\n\r\nFHIR-Mapping: Medication.ingredient.itemCodeableConcept.coding\r\n\r\ni.V.m. Medication.ingredient.isActive kann festgestellt werden, ob diese Substanz aktive Substanz des Medikamentes ist."
        * Wirkstoff-Name-Aktiv 0..1 http://hl7.org/fhir/StructureDefinition/string "„Active ingredient“ des Arzneimittelprodukts gemäss Zulassung (vgl. z.B. AMIS-Datenbank), kann Wirkstoff-Name (allgemein) sein oder auch ein „Derivat“ der Substanz sein (z.B. Salz, Ester etc. Bezeichnung dann z.B. wie  Modified INNs (INNMs)" "„Active ingredient“ des Arzneimittelprodukts gemäss Zulassung (vgl. z.B. AMIS-Datenbank), kann Wirkstoff-Name (allgemein) sein oder auch ein „Derivat“ der Substanz sein (z.B. Salz, Ester etc. Bezeichnung dann z.B. wie  Modified INNs (INNMs)"
          * ^comment = "FHIR-Mapping: Medication.ingredient.itemCodeableConcept.text\r\n\r\ni.V.m. Medication.ingredient.isActive kann festgestellt werden, ob diese Substanz aktive Substanz des Medikamentes ist."
        * Wirkstoff-Code-Aktiv 0..* http://hl7.org/fhir/StructureDefinition/CodeableConcept "Code eines Wirkstoffes, der aus einer Wirkstoffklassifikation entnommen wird z.B. ASK, UNII.  Hierbei handelt es sich um das „Active ingredient“ des Arzneimittelprodukts gemäss Zulassung (vgl. z.B. AMIS-Datenbank), kann Wirkstoff-Code (allgemein) sein oder der Code für ein „Derivat“ der Substanz sein (z. B. Salz, Ester etc.)" "Code eines Wirkstoffes, der aus einer Wirkstoffklassifikation entnommen wird z.B. ASK, UNII.  Hierbei handelt es sich um das „Active ingredient“ des Arzneimittelprodukts gemäss Zulassung (vgl. z.B. AMIS-Datenbank), kann Wirkstoff-Code (allgemein) sein oder der Code für ein „Derivat“ der Substanz sein (z. B. Salz, Ester etc.)"
          * ^comment = "FHIR-Mapping: Medication.ingredient.itemCodeableConcept.coding\r\n\r\ni.V.m. Medication.ingredient.isActive kann festgestellt werden, ob diese Substanz aktive Substanz des Medikamentes ist."
        * Menge-Staerke 0..1 http://hl7.org/fhir/StructureDefinition/Ratio "Wirkstärke, Menge der aktiven Substanz pro Dosiseinheit entsprechend Darreichungsform (1 Tablette, 1 Ampulle, 1 mL etc.)" "Wirkstärke, Menge der aktiven Substanz pro Dosiseinheit entsprechend Darreichungsform (1 Tablette, 1 Ampulle, 1 mL etc.)"
          * ^comment = "FHIR-Mapping: Medication.ingredient.strength"
      * Darreichungsform 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Darreichungsform nach EDQM" "Darreichungsform nach EDQM"
        * ^comment = "FHIR-Mapping: Medication.form"
    * Dosierung-Freitext 0..1 http://hl7.org/fhir/StructureDefinition/string "Dosierung (Freitext)" "Textueller Eintrag der Dosierung"
      * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.text"
    * Dosierung-strukturiert 0..* BackboneElement "Dauer (Intervall in Tagen, Wochen Monaten etc.) der Einnahme." "Dauer (Intervall in Tagen, Wochen Monaten etc.) der Einnahme."
      * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction"
    * Reihenfolge 0..1 http://hl7.org/fhir/StructureDefinition/integer "Sequenznummer des Dosierungseintrags. Bei mehreren Einträgen zur Dosierung wird damit die Reihenfolge (Priorität) der Einträge festgelegt." "Sequenznummer des Dosierungseintrags. Bei mehreren Einträgen zur Dosierung wird damit die Reihenfolge (Priorität) der Einträge festgelegt."
      * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.sequence"
    * Zeitangabe 0..1 BackboneElement "Zeitangabe zur Einnahme als Teil des Dosierschemas" "Ausführliche Beispiele finden sich unter http://wiki.hl7.de/index.php?title=cdamedp:Dosierbeispiele\r\n\r\nNicht vorhanden bei Vergabe, weil bei Vergabe kein zukünftiges Dosierungs-Schema angegeben werden muss."
      * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.timing"
      * Einnahmedauer 0..1 BackboneElement "Einnahmedauer für eine angeordnete, geplante oder durchgeführte Medikamentengabe. Bei Einzel-Vergabe kann die Dauer auch punktweise (Null) sein." "Einnahmedauer für eine angeordnete, geplante oder durchgeführte Medikamentengabe. Bei Einzel-Vergabe kann die Dauer auch punktweise (Null) sein."
        * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.timing.bounds[x]"
        * Startzeitpunkt-Einnahme 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Startzeitpunkt der Einnahme" "Startzeitpunkt der Einnahme"
          * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.timing.boundsPeriod.start"
        * Endzeitpunkt-Einnahme 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Endzeitpunkt der Einnahme" "Endzeitpunkt der Einnahme"
          * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.timing.boundsPeriod.end"
        * Dauer-der-Einnahme 0..1 http://hl7.org/fhir/StructureDefinition/Period "Dauer der Einnahme" "Dauer der Einnahme"
          * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.timing.boundsDuration"
      * Zeitpunkt 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Exakter Zeitpunkt, zu dem eine Medikation gegeben werden soll." "Exakter Zeitpunkt, zu dem eine Medikation gegeben werden soll."
        * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.timing.event"
      * Ereignisbezogene-Wiederholung 0..1 BackboneElement "Gibt ein periodisches Zeitintervall an, in dem die Wiederholung auf Aktivitäten des täglichen Lebens oder anderen wichtigen Ereignissen basiert, die zeitabhängig sind, jedoch nicht vollständig von der Zeit bestimmt werden" "Gibt ein periodisches Zeitintervall an, in dem die Wiederholung auf Aktivitäten des täglichen Lebens oder anderen wichtigen Ereignissen basiert, die zeitabhängig sind, jedoch nicht vollständig von der Zeit bestimmt werden"
        * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.timing.repeat.when in Kombination mit MedicationRequest.dosageInstruction.timing.repeat.offset und/oder anderen Angaben in MedicationRequest.dosageInstruction.timing.repeat"
        * Ereignis 0..1 http://hl7.org/fhir/StructureDefinition/code "Ereignis, z. B. morgens, mittags, abends, zur Nacht" "Ereignis, z. B. morgens, mittags, abends, zur Nacht"
          * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.timing.repeat.when .dayOfWeek .timeOfDay etc."
        * Offset 0..1 http://hl7.org/fhir/StructureDefinition/unsignedInt "Offset zum Ereignis, z. B. 30 Minuten vorher" "Offset zum Ereignis, z. B. 30 Minuten vorher"
          * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.timing.repeat.offset"
      * Periodisches-Intervall 0..1 BackboneElement "Ein Zeitintervall, das sich periodisch wiederholt. Periodische Intervalle haben zwei Eigenschaften, Phase und Periode. Die Phase gibt den \"Typ\" Intervall\" an, der sich jede Periode wiederholt.\r\n\r\nWiederholungsintervall (periodische Intervallsequenz), gibt an\r\ndie Dauer jedes Vorkommens bzw. der Zeit zwischen den Vorkommnissen (period) \r\nder Ankerzeitpunkt (Startzeitpunkt), an dem die periodische Intervallsequenz beginnt (phase)."
        * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.timing.repeat.bounds.(count|duration|frequency|period)"
        * Phase 0..* http://hl7.org/fhir/StructureDefinition/dateTime "Ankerzeitpunkt (Startzeitpunkt), an dem die periodische Intervallsequenz beginnt" "Ankerzeitpunkt (Startzeitpunkt), an dem die periodische Intervallsequenz beginnt"
          * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.timing.event"
        * Periode 0..1 http://hl7.org/fhir/StructureDefinition/decimal "Dauer jedes Vorkommens bzw. der Zeit zwischen den Vorkommnissen" "Dauer jedes Vorkommens bzw. der Zeit zwischen den Vorkommnissen"
          * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.timing.repeat.bounds.(count|duration|frequency|period)"
    * Einnahme-bei-Bedarf 0..1 http://hl7.org/fhir/StructureDefinition/boolean "Einnahme des Medikaments bei Bedarf" "Einnahme des Medikaments bei Bedarf"
      * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.asNeeded[x] entweder als Boolean .asNeededBoolean  oder kodiert .asNeededCodeableConcept"
    * Art-der-Anwendung 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Art der Anwendung des Arzneimittels EDQM passende Value Sets. Pharmazeutische Anwendung dekomponiert in drei Eigenschaften: Art der Anwendung, Weg der Anwendung und Ort der Anwendung."
      * ^comment = "FHIR-Mappings: MedicationRequest.(dosageInstruction.site|dosageInstruction.route|dosageInstruction.method) jeweils mit einem .coding und .text für kodierte Angabe mit EDQM binding und im Freitext"
    * Dosis 0..1 http://hl7.org/fhir/StructureDefinition/Quantity "Kann angegeben sein als Mengenangabe (SimpleQuantity, Range) oder als Menge pro Zeiteinheit (Ratio).\r\nMöglicherweise wichtig sind Maximaldosierungen innerhalb einer Zeiteinheit oder max. Lebenszeitdosis."
      * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.doseAndRate mit den Teilangaben je nach Anforderung .type .dose .rate .type gibt die Art des Eintrages an .dose kann als SimpleQuantity (.doseQuantity) oder als Range (.doseRange) angegeben werden .rate kann als Ratio (.rateRatio), Range (.rateRange) oder  SimpleQuantity (.rateQuantity) angegeben werden"
  * Hinweis 0..* http://hl7.org/fhir/StructureDefinition/Annotation "Hinweistext zu diesem Medikament" "Hinweistext zu diesem Medikament"
    * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.note"
  * Behandlungsgrund 0..* http://hl7.org/fhir/StructureDefinition/CodeableConcept "Behandlungsgrund kann ein Problem, Symptom oder eine Diagnose (Condition) sein." "Behandlungsgrund kann ein Problem, Symptom oder eine Diagnose (Condition) sein."
    * ^comment = "FHIR-Mapping: MedicationRequest.reasonCode und .reasonReference .reasonReference ist eine Referenz auf ( Condition | Observation )"
  * Datum-der-Verordnung 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Datum des Dokumentationseintrages" "Datum des Dokumentationseintrages"
    * ^comment = "FHIR Mapping: MedicationRequest.authoredOn"
  * Ersatzmedikation 0..1 http://hl7.org/fhir/StructureDefinition/boolean "Ersatzmedikation" "Zeigt an, ob die Substitution Teil der Abgabe sein kann oder soll oder nicht. In einigen Fällen muss eine Substitution stattfinden, in anderen Fällen darf sie nicht stattfinden."
    * ^comment = "FHIR Mapping: MedicationRequest.substitution"
  * Verordnungsdetails 0..1 http://hl7.org/fhir/StructureDefinition/code "Verordnungsdetails" "Ob es sich bei der Anfrage um einen Vorschlag, einen Plan oder einen Auftrag handelt."
    * ^comment = "FHIR Mapping: MedicationRequest.intent"
  * Bezug-zum-Patient 1..1 Reference "Bezug zum Patient" "Ein Link zu einer Ressource, die die Person repräsentiert, an die das Medikament verabreicht werden soll."
    * ^comment = "FHIR Mapping: MedicationRequest.subject"
  * Bezug-zum-Fall 0..1 Reference "Bezug zum Fall" "Die Fall, bei der diese Verordnung erstellt wurde oder mit der die Erstellung dieser Verordnung in engem Zusammenhang steht."
    * ^comment = "FHIR Mapping: MedicationRequest.encounter"
  * Vorherige-Medikationsverordnungen 0..1 Reference "Vorherige Medikationsverordnungen" "Ein Link zu einer Ressource, die eine frühere Verschreibung darstellt."
    * ^comment = "FHIR Mapping: MedicationRequest.priorPrescription" 
  * Kontraindikationen 0..* Reference "Kontraindikationen" "Weist auf ein tatsächliches oder potenzielles klinisches Problem mit oder zwischen einer oder mehreren aktiven oder vorgeschlagenen klinischen Maßnahmen für einen Patienten hin, z. B. Wechselwirkung zwischen Arzneimitteln, doppelte Therapie, Dosierungswarnung usw."
    * ^comment = "FHIR Mapping: MedicationRequest.detectedIssue"
  * Autor-Informant-der-Verordnung 0..* BackboneElement "Autor Informant der Verordnung." "Zuständiger Health Professional, der den Vorgang angelegt hat bzw. Informationen zu dem Vorgang bereit gestellt hat."
    * ^comment = "FHIR-Mapping: MedicationRequest.recorder"
    * Organisationsname 0..1 http://hl7.org/fhir/StructureDefinition/string "Name der Organisation" "Name der Organisation"
* Medikationseintrag 0..* BackboneElement "Medikationseintrag: Dokumentiert die Verschreibung, Gabe oder Medikationsplan zu einem oder mehreren Medikamenten." "AkdÄ MP 2.0: D13 Eine konkrete Zeile der Medikationstabelle mit Daten zur Medikation. Alternativ kann dies ein Wirkstoff-, Arzneimittel- oder Rezeptureintrag, ein Sonstiger Hinweis oder auch eine Überschrift sein."
  * ^comment = "FHIR-Mapping: MedicationStatement, MedicationAdministration"
  * Identifikation 0..* http://hl7.org/fhir/StructureDefinition/Identifier "Identifikator des Medikationseintrags" "Identifikator des Medikationseintrags"
    * ^comment = "FHIR-Mapping: (MedicationStatement | MedicationStatement).identifier"
  * Status 0..1 http://hl7.org/fhir/StructureDefinition/code "Prozess-Status des beschriebenen Medikationsstatus" "Prozess-Status des beschriebenen Medikationsstatus"
    * ^comment = "FHIR-Mapping: (MedicationStatement | MedicationAdministration).status und .statusReason"
  * Arzneimittel-Wirkstoff-Rezeptur 0..* BackboneElement "Die Medikation, die angesetzt, geplant oder verabreicht wird. Es kann sich um ein Fertigarzneimittel oder eine Rezeptur handeln. Auch die Angabe nur des Wirkstoffes ist möglich." "Die Medikation, die angesetzt, geplant oder verabreicht wird. Es kann sich um ein Fertigarzneimittel oder eine Rezeptur handeln. Auch die Angabe nur des Wirkstoffes ist möglich."
    * ^comment = "Grund, warum die 3 Unterpunkte auf gleichem Level sind: es kann sein, dass nur eines davon bekannt ist (z.B. nur der Wirkstoff). Der Wirkstoff ist aber immer auch Bestandteil des Fertigarzneimittels bzw. einer Rezeptur.\r\n\r\nFHIR-Mapping: Medication"
    * Arzneimittelprodukt 0..1 BackboneElement "Arzneimittelprodukt: hiermit ist sowohl eine zusammengesetzte Produkt-ID (PhPID) gemeint wie die Pharmazentralnummer (PZN), als auch Produktidentifikatoren (GTIN)." "Arzneimittelprodukt: hiermit ist sowohl eine zusammengesetzte Produkt-ID (PhPID) gemeint wie die Pharmazentralnummer (PZN), als auch Produktidentifikatoren (GTIN)."
      * ^comment = "FHIR-Mapping: Medication.code"
      * Arzneimittel-Name 0..1 http://hl7.org/fhir/StructureDefinition/string "Arzneimittelname oder auch Handelsname genannt. Bezeichnung eines Fertigarzneimittels gemäß Informationsstelle für Arzneispezialitäten (IFA) oder Hauskatalog." "Arzneimittelname oder auch Handelsname genannt. Bezeichnung eines Fertigarzneimittels gemäß Informationsstelle für Arzneispezialitäten (IFA) oder Hauskatalog."
        * ^comment = "FHIR-Mapping: Medication.code.text"
      * Arzneimittel-Code 0..* http://hl7.org/fhir/StructureDefinition/CodeableConcept "Identifikation eines Fertigarzneimittels durch seinen Code, z. B. Pharmazentralnummer (PZN), IDMP Pharmaceutical Product Identifiers (PhPID), IDMP Medicinal Product Identifier (MPID), Pharmacy Product Number (PPN)" "Identifikation eines Fertigarzneimittels durch seinen Code, z. B. Pharmazentralnummer (PZN), IDMP Pharmaceutical Product Identifiers (PhPID), IDMP Medicinal Product Identifier (MPID), Pharmacy Product Number (PPN)"
        * ^comment = "FHIR-Mapping: Medication.code.coding"
      * Arzneimittelwirkstaerke 0..1 http://hl7.org/fhir/StructureDefinition/Ratio "Wirkstärke gemäß Handelsname" "Wirkstärke gemäß Handelsname"
        * ^comment = "FHIR-Mapping: Medication.amount"
    * Rezeptur 0..1 BackboneElement "Rezeptur-Eintrag" "AkdÄ MP 2.0: D17 Datenfeld, um freitextlich eine Rezeptur als Medikationseintrag zu gestalten."
      * ^comment = "FHIR-Mapping: Medication.code.coding als fixed code für Rezeptur in Kombination mit Medication.code.text für die Beschreibung der Rezeptur"
      * Freitextzeile 0..1 http://hl7.org/fhir/StructureDefinition/string "Beschreibung der Rezeptur" "Beschreibung der Rezeptur"
        * ^comment = "FHIR-Mapping: Medication.code.text"
    * Wirkstoff 1..* BackboneElement "Wirkstoff" "Wirkstoff"
      * ^comment = "FHIR-Mapping: Medication.ingredient"
      * Wirkstoff-Name-Allgemein 0..1 http://hl7.org/fhir/StructureDefinition/string "Bezeichnung eines Wirkstoffes, der aus einer Wirkstoffklassifikation entnommen wird. In den meisten Fällen WHO-INN (international non-proprietary name der World Health Organisation) in der englischen Version. Hinweis: in Deutschland gibt es z.T. Schreibvarianten oder weitere Bezeichnungen. Für Substanzen ohne WHO INN die registrierte Substanzbezeichnung." "Bezeichnung eines Wirkstoffes, der aus einer Wirkstoffklassifikation entnommen wird. In den meisten Fällen WHO-INN (international non-proprietary name der World Health Organisation) in der englischen Version. Hinweis: in Deutschland gibt es z.T. Schreibvarianten oder weitere Bezeichnungen. Für Substanzen ohne WHO INN die registrierte Substanzbezeichnung."
        * ^comment = "Abgrenzung zu Wirkstoff-Name (aktiv): Bei Wirkstoff-Name (allgemein) kein „Derivat“ der Substanz (Salz, Ester etc.), wie es im Arzneimittel als \"active ingredient\" registriert sein kann. \r\n\r\nFHIR-Mapping: Medication.ingredient.itemCodeableConcept.text\r\n\r\ni.V.m. Medication.ingredient.isActive kann festgestellt werden, ob diese Substanz aktive Substanz des Medikamentes ist."
      * Wirkstoff-Code-Allgemein 0..* http://hl7.org/fhir/StructureDefinition/CodeableConcept "Code eines Wirkstoffes, der aus einer Wirkstoffklassifikation entnommen wird z.B. ASK, UNII." "Code eines Wirkstoffes, der aus einer Wirkstoffklassifikation entnommen wird z.B. ASK, UNII."
        * ^comment = "Die Problematik mit ATC-Codes ist bekannt.\r\nAbgrenzung zu Wirkstoff-Code (aktiv): Bei Wirkstoff-Code (allgemein) kein „Derivat“ der Substanz (Salz, Ester etc.), wie es im Arzneimittel als \"active ingredient\" registriert sein kann.\r\n\r\nFHIR-Mapping: Medication.ingredient.itemCodeableConcept.coding\r\n\r\ni.V.m. Medication.ingredient.isActive kann festgestellt werden, ob diese Substanz aktive Substanz des Medikamentes ist."
      * Wirkstoff-Name-Aktiv 0..1 http://hl7.org/fhir/StructureDefinition/string "„Active ingredient“ des Arzneimittelprodukts gemäss Zulassung (vgl. z.B. AMIS-Datenbank), kann Wirkstoff-Name (allgemein) sein oder auch ein „Derivat“ der Substanz sein (z.B. Salz, Ester etc. Bezeichnung dann z.B. wie  Modified INNs (INNMs)" "„Active ingredient“ des Arzneimittelprodukts gemäss Zulassung (vgl. z.B. AMIS-Datenbank), kann Wirkstoff-Name (allgemein) sein oder auch ein „Derivat“ der Substanz sein (z.B. Salz, Ester etc. Bezeichnung dann z.B. wie  Modified INNs (INNMs)"
        * ^comment = "FHIR-Mapping: Medication.ingredient.itemCodeableConcept.text\r\n\r\ni.V.m. Medication.ingredient.isActive kann festgestellt werden, ob diese Substanz aktive Substanz des Medikamentes ist."
      * Wirkstoff-Code-Aktiv 0..* http://hl7.org/fhir/StructureDefinition/CodeableConcept "Code eines Wirkstoffes, der aus einer Wirkstoffklassifikation entnommen wird z.B. ASK, UNII.  Hierbei handelt es sich um das „Active ingredient“ des Arzneimittelprodukts gemäss Zulassung (vgl. z.B. AMIS-Datenbank), kann Wirkstoff-Code (allgemein) sein oder der Code für ein „Derivat“ der Substanz sein (z. B. Salz, Ester etc.)" "Code eines Wirkstoffes, der aus einer Wirkstoffklassifikation entnommen wird z.B. ASK, UNII.  Hierbei handelt es sich um das „Active ingredient“ des Arzneimittelprodukts gemäss Zulassung (vgl. z.B. AMIS-Datenbank), kann Wirkstoff-Code (allgemein) sein oder der Code für ein „Derivat“ der Substanz sein (z. B. Salz, Ester etc.)"
        * ^comment = "FHIR-Mapping: Medication.ingredient.itemCodeableConcept.coding\r\n\r\ni.V.m. Medication.ingredient.isActive kann festgestellt werden, ob diese Substanz aktive Substanz des Medikamentes ist."
      * Menge-Staerke 0..1 http://hl7.org/fhir/StructureDefinition/Ratio "Wirkstärke, Menge der aktiven Substanz pro Dosiseinheit entsprechend Darreichungsform (1 Tablette, 1 Ampulle, 1 mL etc.)" "Wirkstärke, Menge der aktiven Substanz pro Dosiseinheit entsprechend Darreichungsform (1 Tablette, 1 Ampulle, 1 mL etc.)"
        * ^comment = "FHIR-Mapping: Medication.ingredient.strength"
    * Darreichungsform 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Darreichungsform nach EDQM" "Darreichungsform nach EDQM"
      * ^comment = "FHIR-Mapping: Medication.form"
  * Einnahmedauer 0..1 BackboneElement "Einnahmedauer für eine angeordnete, geplante oder durchgeführte Medikamentengabe. Bei Einzel-Vergabe kann die Dauer auch punktweise (Null) sein." "Einnahmedauer für eine angeordnete, geplante oder durchgeführte Medikamentengabe. Bei Einzel-Vergabe kann die Dauer auch punktweise (Null) sein."
    * ^comment = "FHIR-Mapping: (MedicationStatement | MedicationAdministration).effective\r\n\r\nhier ist jeweils ein Zeitpunkt für Einzelvergabe (.effectiveDateTime) oder eine Periode (.effectivePeriod) möglich"
    * Startzeitpunkt-Einnahme 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Startzeitpunkt der Einnahme" "Startzeitpunkt der Einnahme"
      * ^comment = "FHIR-Mapping: (MedicationStatement | MedicationAdministration).effective.effectiveDateTime"
    * Endzeitpunkt-Einnahme 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Endzeitpunkt der Einnahme" "Endzeitpunkt der Einnahme"
    * Dauer-der-Einnahme 0..1 http://hl7.org/fhir/StructureDefinition/Period "Dauer der Einnahme" "Dauer der Einnahme"
  * Dosierung-Freitext 0..1 BackboneElement "Enddatum bzw. Endzeitpunkt der Einnahme, bis zu welchem Tag bzw. welcher Zeit einschließlich das Medikament eingenommen werden soll" "Enddatum bzw. Endzeitpunkt der Einnahme, bis zu welchem Tag bzw. welcher Zeit einschließlich das Medikament eingenommen werden soll"
    * ^comment = "FHIR-Mapping: (MedicationStatement | MedicationAdministration).effective.effectivePeriod.data\r\n\r\nKann nicht gleichzeitig mit \"Dauer der Einnahme\" angegeben werden"
    * Freitext 0..1 http://hl7.org/fhir/StructureDefinition/string "Enddatum bzw. Endzeitpunkt der Einnahme, bis zu welchem Tag bzw. welcher Zeit einschließlich das Medikament eingenommen werden soll" "Enddatum bzw. Endzeitpunkt der Einnahme, bis zu welchem Tag bzw. welcher Zeit einschließlich das Medikament eingenommen werden soll"
      * ^comment = "FHIR-Mapping: (MedicationStatement | MedicationAdministration).effective.effectivePeriod.data\r\n\r\nKann nicht gleichzeitig mit \"Dauer der Einnahme\" angegeben werden"
  * Dosierung-strukturiert 0..* BackboneElement "Dauer (Intervall in Tagen, Wochen Monaten etc.) der Einnahme." "Dauer (Intervall in Tagen, Wochen Monaten etc.) der Einnahme."
    * Reihenfolge 0..1 http://hl7.org/fhir/StructureDefinition/integer "Sequenznummer des Dosierungseintrags. Bei mehreren Einträgen zur Dosierung wird damit die Reihenfolge (Priorität) der Einträge festgelegt." "Sequenznummer des Dosierungseintrags. Bei mehreren Einträgen zur Dosierung wird damit die Reihenfolge (Priorität) der Einträge festgelegt."
      * ^comment = "FHIR-Mapping: MedicationStatement.dosage.sequence\r\n\r\nIm Gegensatz zu MedicationStatement hat MedicationAdministration nur höchstens einen Eintrag zur Dosierung (deshalb gibt es keine Angaben zur Reihenfolge)"
    * Zeitangabe 0..1 BackboneElement "Zeitangabe zur Einnahme als Teil des Dosierschemas" "Ausführliche Beispiele finden sich unter http://wiki.hl7.de/index.php?title=cdamedp:Dosierbeispiele\r\n\r\nNicht vorhanden bei Vergabe, weil bei Vergabe kein zukünftiges Dosierungs-Schema angegeben werden muss."
      * ^comment = "FHIR-Mapping: MedicationStatement.dosage.timing"
      * Zeitpunkt 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Exakter Zeitpunkt, zu dem eine Medikation gegeben werden soll." "Exakter Zeitpunkt, zu dem eine Medikation gegeben werden soll."
        * ^comment = "FHIR-Mapping: MedicationStatement.dosage.timing.event"
      * Ereignisbezogene-Wiederholung 0..1 BackboneElement "Gibt ein periodisches Zeitintervall an, in dem die Wiederholung auf Aktivitäten des täglichen Lebens oder anderen wichtigen Ereignissen basiert, die zeitabhängig sind, jedoch nicht vollständig von der Zeit bestimmt werden" "Gibt ein periodisches Zeitintervall an, in dem die Wiederholung auf Aktivitäten des täglichen Lebens oder anderen wichtigen Ereignissen basiert, die zeitabhängig sind, jedoch nicht vollständig von der Zeit bestimmt werden"
        * ^comment = "FHIR-Mapping: MedicationStatement.dosage.timing.repeat.when in Kombination mit MedicationStatement.dosage.timing.repeat.offset und/oder anderen Angaben in MedicationStatement.dosage.timing.repeat"
        * Ereignis 0..1 http://hl7.org/fhir/StructureDefinition/code "Ereignis, z. B. morgens, mittags, abends, zur Nacht" "Ereignis, z. B. morgens, mittags, abends, zur Nacht"
          * ^comment = "FHIR-Mapping: MedicationStatement.dosage.timing.repeat.when .dayOfWeek .timeOfDay etc."
        * Offset 0..1 http://hl7.org/fhir/StructureDefinition/unsignedInt "Offset zum Ereignis, z. B. 30 Minuten vorher" "Offset zum Ereignis, z. B. 30 Minuten vorher"
          * ^comment = "FHIR-Mapping: MedicationStatement.dosage.timing.repeat.offset"
      * Periodisches-Intervall 0..1 BackboneElement "Ein Zeitintervall, das sich periodisch wiederholt. Periodische Intervalle haben zwei Eigenschaften, Phase und Periode. Die Phase gibt den \"Typ\" Intervall\" an, der sich jede Periode wiederholt.\r\n\r\nWiederholungsintervall (periodische Intervallsequenz), gibt an\r\ndie Dauer jedes Vorkommens bzw. der Zeit zwischen den Vorkommnissen (period) \r\nder Ankerzeitpunkt (Startzeitpunkt), an dem die periodische Intervallsequenz beginnt (phase)."
        * ^comment = "FHIR-Mapping: MedicationStatement.dosage.timing.repeat.bounds .count .duration .frequency .period"
        * Phase 0..* http://hl7.org/fhir/StructureDefinition/dateTime "Ankerzeitpunkt (Startzeitpunkt), an dem die periodische Intervallsequenz beginnt" "Ankerzeitpunkt (Startzeitpunkt), an dem die periodische Intervallsequenz beginnt"
          * ^comment = "FHIR-Mapping: MedicationStatement.dosage.timing.event"
        * Periode 0..1 http://hl7.org/fhir/StructureDefinition/decimal "Dauer jedes Vorkommens bzw. der Zeit zwischen den Vorkommnissen" "Dauer jedes Vorkommens bzw. der Zeit zwischen den Vorkommnissen"
          * ^comment = "FHIR-Mapping: MedicationStatement.dosage.timing.repeat.bounds .count .duration .frequency .period"
    * Einnahme-bei-Bedarf 0..1 http://hl7.org/fhir/StructureDefinition/boolean "Einnahme des Medikaments bei Bedarf" "Einnahme des Medikaments bei Bedarf"
      * ^comment = "FHIR-Mapping: MedicationStatement.asNeeded entweder als Boolean .asNeededBoolean  oder kodiert .asNeededCodeableConcept"
    * Art-der-Anwendung 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Art der Anwendung des Arzneimittels EDQM passende Value Sets. Pharmazeutische Anwendung dekomponiert in drei Eigenschaften: Art der Anwendung, Weg der Anwendung und Ort der Anwendung."
      * ^comment = "FHIR-Mappings:\r\n\r\n(MedicationStatement | MedicationAdministration).dosage.site\r\n(MedicationStatement | MedicationAdministration).dosage.route\r\n(MedicationStatement | MedicationAdministration).dosage.method\r\n\r\njeweils mit einem .coding und .text für kodierte Angabe mit EDQM binding und im Freitext"
    * Dosis 0..1 http://hl7.org/fhir/StructureDefinition/Quantity "Kann angegeben sein als Mengenangabe (SimpleQuantity, Range) oder als Menge pro Zeiteinheit (Ratio).\r\nMöglicherweise wichtig sind Maximaldosierungen innerhalb einer Zeiteinheit oder max. Lebenszeitdosis."
      * ^comment = "FHIR-Mapping: MedicationStatement.dosage.doseAndRate mit den Teilangaben je nach Anforderung .type .dose .rate\r\n\r\n.type gibt die Art des Eintrages an\r\n.dose kann als SimpleQuantity (.doseQuantity) oder als Range (.doseRange) angegeben werden\r\n.rate kann als Ratio (.rateRatio), Range (.rateRange) oder  SimpleQuantity (.rateQuantity) angegeben werden\r\n\r\nMedicationAdministration.dosage.rate nur mit rateRatio und rateQuantity\r\nMedicationAdministration.dosage.dose nur SimpleQuantity"
  * Hinweis 0..* http://hl7.org/fhir/StructureDefinition/Annotation "Hinweistext zu diesem Medikament" "Hinweistext zu diesem Medikament"
    * ^comment = "FHIR-Mapping: (MedicationStatement | MedicationAdministration).dosage.note"
  * Behandlungsgrund 0..* http://hl7.org/fhir/StructureDefinition/CodeableConcept "Behandlungsgrund kann ein Problem, Symptom oder eine Diagnose (Condition) sein." "Behandlungsgrund kann ein Problem, Symptom oder eine Diagnose (Condition) sein."
    * ^comment = "FHIR-Mapping: (MedicationStatement | MedicationAdministration).reasonCode und .reasonReference\r\n\r\n.reasonReference ist eine Referenz auf ( Condition | Observation | DiagnosticReport )"
  * Bezug-zu-Verordnung 0..* Reference "Bezug zu Verordnung. Hier können je nach Anforderung unterschiedliche Bezüge zum Fall, Behandlungsplan etc. hergestellt werden." "Bezug zu Verordnung. Hier können je nach Anforderung unterschiedliche Bezüge zum Fall, Behandlungsplan etc. hergestellt werden."
    * ^comment = "FHIR-Mappings:\r\n\r\nMedicationStatement.basedOn Referenz auf (MedicationAdministration | MedicationDispense | MedicationStatement | Observation)\r\nMedicationAdministration.request Referenz auf (MedicationRequest)\r\n(MedicationStatement | MedicationAdministration).partOf Referenz auf (MedicationAdministration | Procedure) und zusätzlich für Statement ( MedicationDispense | MedicationStatement | Observation )"
  * Bezug-zu-Abgabe 0..* Reference "Bezug zu Abgabe" "Bezug zu Abgabe"
    * ^comment = "FHIR-Mappings:\r\n\r\nMedicationStatement.basedOn Referenz auf (MedicationAdministration | MedicationDispense | MedicationStatement | Observation)\r\nMedicationAdministration.request Referenz auf (MedicationRequest)\r\n(MedicationStatement | MedicationAdministration).partOf Referenz auf (MedicationAdministration | Procedure) und zusätzlich für Statement ( MedicationDispense | MedicationStatement | Observation )"
  * Bezug-zum-Patient 1..1 Reference "Bezug zum Patient" "Die Person, die das Medikament einnimmt/eingesetzt hat."
    * ^comment = "FHIR Mapping: (MedicationStatement|MedicationAdministration).subject"
  * Bezug-zum-Fall 0..1 Reference "Bezug zum Fall" "Der Besuch, die Aufnahme oder ein anderer Kontakt zwischen Patient und Leistungserbringer, bei dem die Verabreichung des Medikaments erfolgt ist."
    * ^comment = "FHIR Mapping: (MedicationStatement|MedicationAdministration).context"
  * Datum-des-Eintrags 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Datum des Dokumentationseintrages" "Datum des Dokumentationseintrages"
    * ^comment = "FHIR-Mappings: MedicationStatement.dateAsserted"
  * Autor-Informant-des-Eintrags 0..* BackboneElement "Zuständiger Health Professional, der den Vorgang angelegt hat bzw. Informationen zu dem Vorgang bereit gestellt hat." "Zuständiger Health Professional, der den Vorgang angelegt hat bzw. Informationen zu dem Vorgang bereit gestellt hat."
    * Organisationsname 0..1 http://hl7.org/fhir/StructureDefinition/string "Name der Organisation" "Name der Organisation"