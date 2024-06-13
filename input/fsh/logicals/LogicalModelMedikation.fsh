Logical: MII_LM_Medikation
Parent: Element
Id: mii-lm-medikation
Title: "MII LM Medikation"
Description: "MII LogicalModel Modul Medikation"
* insert Translation(^name, en-US, MII_LM_Medikation)
* insert Translation(^title, en-US, MII LM Medikation)
* insert Translation(^description, en-US, MII LogicalModel Module Medikation)
* insert Publisher
* insert PR_CS_VS_Version
* insert KDS_Copyright
* ^date = "2024-05-29"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/LogicalModel/BasismodulMedikation"
* . ^short = "Das Basismodul Medikation enthält Datenelemente zur Dokumentation von Arzneimittelverordnungen und -gaben"
* Medikation 0..* BackboneElement "Medikation" "Definition eines Medikamentes zum Zwecke der Verschreibung, Abgabe und Verabreichung. Es kann sich um ein fertiges Arzneimittelprodukt, einen Wirkstoff oder eine Rezeptur handeln."
  * ^comment = "FHIR-Mapping: Medication"
  * Code 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Code" "Ein Code (oder eine Reihe von Codes), die dieses Medikament spezifizieren, oder eine Textbeschreibung, wenn kein Code verfügbar ist."
    * ^comment = "FHIR-Mapping: Medication.code"
  * Darreichungsform 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Darreichungsform" "Darreichungsform nach EDQM"
    * ^comment = "FHIR-Mapping: Medication.form"
  * Bestandteil 1..* BackboneElement "Bestandteil" "Aktiver oder nicht-aktiver Inhaltsstoff. Identifiziert einen bestimmten Bestandteil der Medikation."
    * ^comment = "FHIR-Mapping: Medication.ingredient"
    * Code 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Code" "Ein Code für den Inhaltsstoff oder Wirkstoff, z.B. aus ASK, UNII, CAS oder SNOMED CT."
      * ^comment = "FHIR-Mapping: Medication.ingredient.itemCodeableConcept"
    * Wirkstofftyp 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Wirkstofftyp" "Differenzierung des Wirkstofftyps in allgemeinen, genauen oder Kombinationswirkstoff."
      * ^comment = "FHIR-Mapping: Medication.ingredient.extension:Wirkstofftyp"
    * MengeStaerke 0..1 http://hl7.org/fhir/StructureDefinition/Ratio "Menge/Staerke" "Wirkstärke, Menge der aktiven Substanz pro Dosiseinheit entsprechend Darreichungsform (1 Tablette, 1 Ampulle, 1 mL etc.)"
      * ^comment = "FHIR-Mapping: Medication.ingredient.strength"
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
  * Medikationseintrag 0..* Reference(MedicationStatement) "Medikationseintrag" "Referenz auf Medikationseintrag"
    * ^comment = "FHIR-Mapping: List.entry.item"
  * BezugZumPatient 1..1 Reference(Patient) "Bezug zum Patient" "Die Person, für die die Medikationsliste erstellt oder verwaltet wird."
    * ^comment = "FHIR-Mapping: List.subject"
  * BezugZumFall 0..1 Reference(Encounter) "Bezug zum Fall" "Der Besuch, die Aufnahme oder ein anderer Kontakt zwischen Patient und Leistungserbringer, bei dem die Medikationsliste erstellt oder bearbeitet wird."
    * ^comment = "FHIR-Mapping: List.encounter"
* Medikationsverordnung 0..* BackboneElement "Medikationsverordnung" "Dokumentation einer Medikationsanordnung durch medizinisches Personal."
  * ^comment = "FHIR-Mapping: MedicationRequest"
    * Identifikation 0..* http://hl7.org/fhir/StructureDefinition/Identifier "Identifikator der Medikationsverordnung" "Business Identifier der Medikationsverordnung"
      * ^comment = "FHIR-Mapping: MedicationRequest.identifier"
    * Status 1..1 http://hl7.org/fhir/StructureDefinition/code "Status" "Status der Medikationsverordnung"
      * ^comment = "FHIR-Mapping: MedicationRequest.status"
    * Medikation[x] 1..1 CodeableConcept or Reference(http://hl7.org/fhir/StructureDefinition/Medication) "Medikation" "Medikament, welches angeordnet wird. Es kann sich um ein fertiges Arzneimittelprodukt, einen Wirkstoff oder eine Rezeptur handeln."
      * ^comment = "FHIR-Mapping: MedicationRequest.medication[x]"
    * Dosierungsinstruktionen 0..* BackboneElement "Dosierungsinstruktionen" "Anweisungen, wie das Medikament eingenommen werden soll."
      * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction"
      * Reihenfolge 0..1 http://hl7.org/fhir/StructureDefinition/integer "Sequenznummer des Dosierungseintrags. Bei mehreren Einträgen zur Dosierung wird damit die Reihenfolge (Priorität) der Einträge festgelegt." "Sequenznummer des Dosierungseintrags. Bei mehreren Einträgen zur Dosierung wird damit die Reihenfolge (Priorität) der Einträge festgelegt."
        * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.sequence"
      * Freitext 0..1 http://hl7.org/fhir/StructureDefinition/string "Dosierung (Freitext)" "Textueller Eintrag der Dosierung"
        * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.text"
      * Zeitangabe 0..1 BackboneElement "Zeitangabe zur Einnahme als Teil des Dosierschemas" "Ausführliche Beispiele finden sich unter http://wiki.hl7.de/index.php?title=cdamedp:Dosierbeispiele\r\n\r\nNicht vorhanden bei Vergabe, weil bei Vergabe kein zukünftiges Dosierungs-Schema angegeben werden muss."
        * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.timing"
        * Einnahmedauer 0..1 BackboneElement "Einnahmedauer für eine angeordnete, geplante oder durchgeführte Medikamentengabe. Bei Einzel-Vergabe kann die Dauer auch punktweise (Null) sein." "Einnahmedauer für eine angeordnete, geplante oder durchgeführte Medikamentengabe. Bei Einzel-Vergabe kann die Dauer auch punktweise (Null) sein."
          * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.timing.bounds[x]"
          * StartzeitpunktEinnahme 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Startzeitpunkt der Einnahme" "Startzeitpunkt der Einnahme"
            * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.timing.boundsPeriod.start"
          * EndzeitpunktEinnahme 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Endzeitpunkt der Einnahme" "Endzeitpunkt der Einnahme"
            * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.timing.boundsPeriod.end"
          * DauerDerEinnahme 0..1 http://hl7.org/fhir/StructureDefinition/Period "Dauer der Einnahme" "Dauer der Einnahme"
            * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.timing.boundsDuration"
        * Zeitpunkt 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Zeitpunkt" "Exakter Zeitpunkt, zu dem eine Medikation gegeben werden soll."
          * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.timing.event"
        * EreignisbezogeneWiederholung 0..1 BackboneElement "Ereignisbezogene Wiederholung" "Gibt ein periodisches Zeitintervall an, in dem die Wiederholung auf Aktivitäten des täglichen Lebens oder anderen wichtigen Ereignissen basiert, die zeitabhängig sind, jedoch nicht vollständig von der Zeit bestimmt werden"
          * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.timing.repeat.when in Kombination mit MedicationRequest.dosageInstruction.timing.repeat.offset und/oder anderen Angaben in MedicationRequest.dosageInstruction.timing.repeat"
          * Ereignis 0..* http://hl7.org/fhir/StructureDefinition/code "Ereignis" "Ereignis, z. B. morgens, mittags, abends, zur Nacht"
            * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.timing.repeat.when .dayOfWeek .timeOfDay etc."
          * Offset 0..1 http://hl7.org/fhir/StructureDefinition/unsignedInt "Offset" "Offset zum Ereignis, z. B. 30 Minuten vorher"
            * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.timing.repeat.offset"
        * PeriodischesIntervall 0..1 BackboneElement "Periodisches Intervall" "Ein Zeitintervall, das sich periodisch wiederholt. Periodische Intervalle haben zwei Eigenschaften, Phase und Periode. Die Phase gibt den \"Typ\" Intervall\" an, der sich jede Periode wiederholt.\r\n\r\nWiederholungsintervall (periodische Intervallsequenz), gibt an\r\ndie Dauer jedes Vorkommens bzw. der Zeit zwischen den Vorkommnissen (period) \r\nder Ankerzeitpunkt (Startzeitpunkt), an dem die periodische Intervallsequenz beginnt (phase)."
          * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.timing.repeat"
          * Phase 0..* dateTime "Ankerzeitpunkt (Startzeitpunkt), an dem die periodische Intervallsequenz beginnt" "Ankerzeitpunkt (Startzeitpunkt), an dem die periodische Intervallsequenz beginnt"
            * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.timing.event"
          * Periode[x] 0..1 Period or Duration "Dauer jedes Vorkommens bzw. der Zeit zwischen den Vorkommnissen" "Dauer jedes Vorkommens bzw. der Zeit zwischen den Vorkommnissen"
            * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.timing.repeat.(boundsDuration|boundsPeriod)"
      * EinnahmeBeiBedarf[x] 0..1 boolean or CodeableConcept "Einnahme bei Bedarf" "Einnahme des Medikaments bei Bedarf"
        * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.asNeeded[x] entweder als Boolean .asNeededBoolean  oder kodiert .asNeededCodeableConcept"
      * ArtDerAnwendung 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Art der Anwendung" "Art der Anwendung des Arzneimittels EDQM passende Value Sets. Pharmazeutische Anwendung dekomponiert in drei Eigenschaften: Art der Anwendung, Weg der Anwendung und Ort der Anwendung."
        * ^comment = "FHIR-Mappings: MedicationRequest.dosageInstruction.(site|route|method) jeweils mit einem .coding oder .text für kodierte Angabe mit EDQM binding und im Freitext"
      * Dosis[x] 0..1 Range or SimpleQuantity or Ratio "Dosis" "Kann angegeben sein als Mengenangabe (SimpleQuantity, Range) oder als Menge pro Zeiteinheit (Ratio).\r\nMöglicherweise wichtig sind Maximaldosierungen innerhalb einer Zeiteinheit oder max. Lebenszeitdosis."
        * ^comment = "FHIR-Mapping: MedicationRequest.dosageInstruction.doseAndRate mit den Teilangaben je nach Anforderung .type .dose .rate .type gibt die Art des Eintrages an .dose kann als SimpleQuantity (.doseQuantity) oder als Range (.doseRange) angegeben werden .rate kann als Ratio (.rateRatio), Range (.rateRange) oder  SimpleQuantity (.rateQuantity) angegeben werden"
  * Hinweis 0..* http://hl7.org/fhir/StructureDefinition/Annotation "Hinweistext zu diesem Medikament" "Hinweistext zu diesem Medikament"
    * ^comment = "FHIR-Mapping: MedicationRequest.note"
  * Behandlungsgrund[x] 0..* CodeableConcept or Reference(Condition or Observation) "Behandlungsgrund" "Behandlungsgrund kann ein Problem, Symptom oder eine Diagnose (Condition) sein."
    * ^comment = "FHIR-Mapping: MedicationRequest.(reasonCode|reasonReference)"
  * DatumDerVerordnung 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Datum des Dokumentationseintrages" "Datum des Dokumentationseintrages"
    * ^comment = "FHIR Mapping: MedicationRequest.authoredOn"
  * Ersatzmedikation[x] 0..1 boolean or CodeableConcept "Ersatzmedikation" "Zeigt an, ob die Substitution Teil der Abgabe sein kann oder soll oder nicht. In einigen Fällen muss eine Substitution stattfinden, in anderen Fällen darf sie nicht stattfinden."
    * ^comment = "FHIR Mapping: MedicationRequest.substitution"
  * Verordnungsdetails 0..1 http://hl7.org/fhir/StructureDefinition/code "Verordnungsdetails" "Ob es sich bei der Anfrage um einen Vorschlag, einen Plan oder einen Auftrag handelt."
    * ^comment = "FHIR Mapping: MedicationRequest.intent"
  * BezugZumPatient 1..1 Reference(Patient) "Bezug zum Patient" "Ein Link zu einer Ressource, die die Person repräsentiert, an die das Medikament verabreicht werden soll."
    * ^comment = "FHIR Mapping: MedicationRequest.subject"
  * BezugZumFall 0..1 Reference(Encounter) "Bezug zum Fall" "Die Fall, bei der diese Verordnung erstellt wurde oder mit der die Erstellung dieser Verordnung in engem Zusammenhang steht."
    * ^comment = "FHIR Mapping: MedicationRequest.encounter"
  * VorherigeMedikationsverordnungen 0..1 Reference(MedicationRequest) "Vorherige Medikationsverordnungen" "Ein Link zu einer Ressource, die eine frühere Verschreibung darstellt."
    * ^comment = "FHIR Mapping: MedicationRequest.priorPrescription" 
  * Kontraindikationen 0..* Reference(DetectedIssue) "Kontraindikationen" "Weist auf ein tatsächliches oder potenzielles klinisches Problem mit oder zwischen einer oder mehreren aktiven oder vorgeschlagenen klinischen Maßnahmen für einen Patienten hin, z. B. Wechselwirkung zwischen Arzneimitteln, doppelte Therapie, Dosierungswarnung usw."
    * ^comment = "FHIR Mapping: MedicationRequest.detectedIssue"
  * AutorInformantDerVerordnung 0..* Reference(Organization) "Autor Informant der Verordnung." "Zuständiger Health Professional, der den Vorgang angelegt hat bzw. Informationen zu dem Vorgang bereit gestellt hat."
    * ^comment = "FHIR-Mapping: MedicationRequest.requester"
* Medikationseintrag 0..* BackboneElement "Medikationseintrag" "Medikationseintrag: Dokumentiert die Verschreibung, Gabe oder Einnahme zu einem oder mehreren Medikamenten z.B. in einem Medikationsplan."
  * ^comment = "FHIR-Mapping: MedicationStatement"
  * Identifikation 0..* http://hl7.org/fhir/StructureDefinition/Identifier "Identifikation" "Identifikator des Medikationseintrags"
    * ^comment = "FHIR-Mapping: MedicationStatement.identifier"
  * Status 0..1 http://hl7.org/fhir/StructureDefinition/code "Prozess-Status des beschriebenen Medikationsstatus" "Prozess-Status des beschriebenen Medikationsstatus"
    * ^comment = "FHIR-Mapping: MedicationStatement.status"
  * Medikation[x] 1..1 CodeableConcept or Reference(Medication) "Medikation" "Definition eines Medikamentes zum Zwecke der Verschreibung, Abgabe und Verabreichung. Es kann sich um ein fertiges Arzneimittelprodukt, einen Wirkstoff oder eine Rezeptur handeln."
    * ^comment = "FHIR-Mapping: MedicationStatement.medication[x]"
  * Einnahmedauer 0..1 BackboneElement "Einnahmedauer" "Einnahmedauer für eine angeordnete, geplante oder durchgeführte Medikamentengabe. Bei Einzel-Vergabe kann die Dauer auch punktweise (Null) sein."
    * ^comment = "FHIR-Mapping: MedicationStatement.effective[x]"
    * StartzeitpunktEinnahme 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Startzeitpunkt der Einnahme" "Startzeitpunkt der Einnahme"
      * ^comment = "FHIR-Mapping: MedicationStatement.effectivePeriod.start"
    * EndzeitpunktEinnahme 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Endzeitpunkt der Einnahme" "Endzeitpunkt der Einnahme"
      * ^comment = "FHIR-Mapping: MedicationStatement.effectivePeriod.end"
    * DauerDerEinnahme 0..1 http://hl7.org/fhir/StructureDefinition/Period "Dauer der Einnahme" "Dauer der Einnahme"
      * ^comment = "FHIR-Mapping: MedicationStatement.effectivePeriod"
    * Dosierung 0..* BackboneElement "Dosierung" "Gibt an, wie das Medikament vom Patienten eingenommen wird/wurde oder werden soll."
      * ^comment = "FHIR-Mapping: MedicationStatement.dosage"
      * Reihenfolge 0..1 http://hl7.org/fhir/StructureDefinition/integer "Sequenznummer des Dosierungseintrags. Bei mehreren Einträgen zur Dosierung wird damit die Reihenfolge (Priorität) der Einträge festgelegt." "Sequenznummer des Dosierungseintrags. Bei mehreren Einträgen zur Dosierung wird damit die Reihenfolge (Priorität) der Einträge festgelegt."
        * ^comment = "FHIR-Mapping: MedicationStatement.dosage.sequence"
      * Freitext 0..1 http://hl7.org/fhir/StructureDefinition/string "Dosierung (Freitext)" "Textueller Eintrag der Dosierung"
        * ^comment = "FHIR-Mapping: MedicationStatement.dosage.text"
      * Zeitangabe 0..1 BackboneElement "Zeitangabe zur Einnahme als Teil des Dosierschemas" "Ausführliche Beispiele finden sich unter http://wiki.hl7.de/index.php?title=cdamedp:Dosierbeispiele\r\n\r\nNicht vorhanden bei Vergabe, weil bei Vergabe kein zukünftiges Dosierungs-Schema angegeben werden muss."
        * ^comment = "FHIR-Mapping: MedicationStatement.dosage.timing"
        * Einnahmedauer 0..1 BackboneElement "Einnahmedauer für eine angeordnete, geplante oder durchgeführte Medikamentengabe. Bei Einzel-Vergabe kann die Dauer auch punktweise (Null) sein." "Einnahmedauer für eine angeordnete, geplante oder durchgeführte Medikamentengabe. Bei Einzel-Vergabe kann die Dauer auch punktweise (Null) sein."
          * ^comment = "FHIR-Mapping: MedicationStatement.dosage.timing.bounds[x]"
          * StartzeitpunktEinnahme 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Startzeitpunkt der Einnahme" "Startzeitpunkt der Einnahme"
            * ^comment = "FHIR-Mapping: MedicationStatement.dosage.timing.boundsPeriod.start"
          * EndzeitpunktEinnahme 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Endzeitpunkt der Einnahme" "Endzeitpunkt der Einnahme"
            * ^comment = "FHIR-Mapping: MedicationStatement.dosage.timing.boundsPeriod.end"
          * DauerDerEinnahme 0..1 http://hl7.org/fhir/StructureDefinition/Period "Dauer der Einnahme" "Dauer der Einnahme"
            * ^comment = "FHIR-Mapping: MedicationStatement.dosage.timing.boundsDuration"
        * Zeitpunkt 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Zeitpunkt" "Exakter Zeitpunkt, zu dem eine Medikation gegeben werden soll."
          * ^comment = "FHIR-Mapping: MedicationStatement.dosage.timing.event"
        * EreignisbezogeneWiederholung 0..1 BackboneElement "Ereignisbezogene Wiederholung" "Gibt ein periodisches Zeitintervall an, in dem die Wiederholung auf Aktivitäten des täglichen Lebens oder anderen wichtigen Ereignissen basiert, die zeitabhängig sind, jedoch nicht vollständig von der Zeit bestimmt werden"
          * ^comment = "FHIR-Mapping: MedicationStatement.dosage.timing.repeat.when in Kombination mit MedicationStatement.dosage.timing.repeat.offset und/oder anderen Angaben in MedicationStatement.dosage.timing.repeat"
          * Ereignis 0..* http://hl7.org/fhir/StructureDefinition/code "Ereignis" "Ereignis, z. B. morgens, mittags, abends, zur Nacht"
            * ^comment = "FHIR-Mapping: MedicationStatement.dosage.timing.repeat.when .dayOfWeek .timeOfDay etc."
          * Offset 0..1 http://hl7.org/fhir/StructureDefinition/unsignedInt "Offset" "Offset zum Ereignis, z. B. 30 Minuten vorher"
            * ^comment = "FHIR-Mapping: MedicationStatement.dosage.timing.repeat.offset"
        * PeriodischesIntervall 0..1 BackboneElement "Periodisches Intervall" "Ein Zeitintervall, das sich periodisch wiederholt. Periodische Intervalle haben zwei Eigenschaften, Phase und Periode. Die Phase gibt den \"Typ\" Intervall\" an, der sich jede Periode wiederholt.\r\n\r\nWiederholungsintervall (periodische Intervallsequenz), gibt an\r\ndie Dauer jedes Vorkommens bzw. der Zeit zwischen den Vorkommnissen (period) \r\nder Ankerzeitpunkt (Startzeitpunkt), an dem die periodische Intervallsequenz beginnt (phase)."
          * ^comment = "FHIR-Mapping: MedicationStatement.dosage.timing.repeat"
          * Phase 0..* dateTime "Ankerzeitpunkt (Startzeitpunkt), an dem die periodische Intervallsequenz beginnt" "Ankerzeitpunkt (Startzeitpunkt), an dem die periodische Intervallsequenz beginnt"
            * ^comment = "FHIR-Mapping: MedicationStatement.dosage.timing.event"
          * Periode[x] 0..1 Period or Duration "Dauer jedes Vorkommens bzw. der Zeit zwischen den Vorkommnissen" "Dauer jedes Vorkommens bzw. der Zeit zwischen den Vorkommnissen"
            * ^comment = "FHIR-Mapping: MedicationStatement.dosage.timing.repeat.(boundsDuration|boundsPeriod)"
      * EinnahmeBeiBedarf[x] 0..1 boolean or CodeableConcept "Einnahme bei Bedarf" "Einnahme des Medikaments bei Bedarf"
        * ^comment = "FHIR-Mapping: MedicationStatement.dosage.asNeeded[x] entweder als Boolean .asNeededBoolean  oder kodiert .asNeededCodeableConcept"
      * ArtDerAnwendung 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Art der Anwendung" "Art der Anwendung des Arzneimittels EDQM passende Value Sets. Pharmazeutische Anwendung dekomponiert in drei Eigenschaften: Art der Anwendung, Weg der Anwendung und Ort der Anwendung."
        * ^comment = "FHIR-Mappings: MedicationStatement.dosage.(site|route|method) jeweils mit einem .coding oder .text für kodierte Angabe mit EDQM binding und im Freitext"
      * Dosis[x] 0..1 Range or SimpleQuantity or Ratio "Dosis" "Kann angegeben sein als Mengenangabe (SimpleQuantity, Range) oder als Menge pro Zeiteinheit (Ratio).\r\nMöglicherweise wichtig sind Maximaldosierungen innerhalb einer Zeiteinheit oder max. Lebenszeitdosis."
        * ^comment = "FHIR-Mapping: MedicationStatement.dosage.doseAndRate mit den Teilangaben je nach Anforderung .type .dose .rate .type gibt die Art des Eintrages an .dose kann als SimpleQuantity (.doseQuantity) oder als Range (.doseRange) angegeben werden .rate kann als Ratio (.rateRatio), Range (.rateRange) oder  SimpleQuantity (.rateQuantity) angegeben werden"
  * Hinweis 0..* http://hl7.org/fhir/StructureDefinition/Annotation "Hinweistext zu diesem Medikament" "Hinweistext zu diesem Medikament"
    * ^comment = "FHIR-Mapping: MedicationStatement.note"
  * Behandlungsgrund[x] 0..* CodeableConcept or Reference(Condition or Observation) "Behandlungsgrund" "Behandlungsgrund kann ein Problem, Symptom oder eine Diagnose (Condition) sein."
    * ^comment = "FHIR-Mapping: MedicationStatement.(reasonCode|reasonReference)"
  * BezugZuVerordnung 0..* Reference(MedicationRequest) "Bezug zu Verordnung. Hier können je nach Anforderung unterschiedliche Bezüge zum Fall, Behandlungsplan etc. hergestellt werden." "Bezug zu Verordnung. Hier können je nach Anforderung unterschiedliche Bezüge zum Fall, Behandlungsplan etc. hergestellt werden."
    * ^comment = "FHIR-Mappings: MedicationStatement.basedOn"
  * BezugZuAbgabe 0..* Reference(MedicationAdministration) "Bezug zu Abgabe" "Bezug zu Abgabe"
    * ^comment = "FHIR-Mappings: MedicationStatement.basedOn"
  * BezugZumPatient 1..1 Reference(Patient) "Bezug zum Patient" "Die Person, die das Medikament einnimmt/eingesetzt hat."
    * ^comment = "FHIR Mapping: MedicationStatement.subject"
  * BezugZumFall 0..1 Reference(Encounter) "Bezug zum Fall" "Der Besuch, die Aufnahme oder ein anderer Kontakt zwischen Patient und Leistungserbringer, bei dem die Verabreichung des Medikaments erfolgt ist."
    * ^comment = "FHIR Mapping: MedicationStatement.context"
  * DatumDesEintrags 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Datum des Dokumentationseintrages" "Datum des Dokumentationseintrages"
    * ^comment = "FHIR-Mapping: MedicationStatement.dateAsserted"
  * AutorInformantDesEintrags 0..* Reference(Organization) "Zuständiger Health Professional, der den Vorgang angelegt hat bzw. Informationen zu dem Vorgang bereit gestellt hat." "Zuständiger Health Professional, der den Vorgang angelegt hat bzw. Informationen zu dem Vorgang bereit gestellt hat."
    * ^comment = "FHIR-Mapping: MedicationStatement.informationSource"
* Medikationsverabreichung 0..* BackboneElement "Medikationsverabreichung" "Beschreibt das Ereignis, bei dem ein Patient ein Medikament einnimmt oder ihm auf andere Weise verabreicht wird. Dies kann das Schlucken einer Tablette oder eine lang laufende Infusion sein."
  * ^comment = "FHIR-Mapping: MedicationAdministration"
  * Identifikation 0..* http://hl7.org/fhir/StructureDefinition/Identifier "Identifikation" "Identifikator der Medikationsverabreichung"
    * ^comment = "FHIR-Mapping: MedicationAdministration.identifier"
  * Status 0..1 http://hl7.org/fhir/StructureDefinition/code "Status" "Zeigt den Status der Medikationsverabreichung an."
    * ^comment = "FHIR-Mapping: MedicationAdministration.status"
  * Medikation[x] 1..1 CodeableConcept or Reference(Medication) "Medikation" "Definition eines Medikamentes zum Zwecke der Verschreibung, Abgabe und Verabreichung. Es kann sich um ein fertiges Arzneimittelprodukt, einen Wirkstoff oder eine Rezeptur handeln."
    * ^comment = "FHIR-Mapping: MedicationAdministration.medication[x]"
  * Verabreichungszeitpunkt[x] 1..1 dateTime or Period "Verabreichungszeitpunkt" "Zeitpunkt oder Zeitintervall in dem die Verabreichung stattgefunden hat."
    * ^comment = "FHIR-Mapping: MedicationAdministration.effective[x]"
  * Dosierung 0..1 BackboneElement "Dosierung" "Details zur Dosierung der Medikation"
    * ^comment = "FHIR-Mapping: MedicationAdministration.dosage"
      * Freitext 0..1 http://hl7.org/fhir/StructureDefinition/string "Freitext" "Freitext der Dosierungsinformationen"
        * ^comment = "FHIR-Mapping: MedicationAdministration.dosage.text"
      * Koerperstelle 0..1 CodeableConcept "Koerperstelle" "Eine kodierte Angabe der anatomischen Stelle, an der das Medikament zuerst in den Körper gelangt ist."
        * ^comment = "FHIR-Mapping: MedicationAdministration.dosage.site"
      * Weg 0..1 CodeableConcept "Weg" "Ein Code, der den Zugangsweg oder den physiologischen Weg der Verabreichung eines therapeutischen Mittels in oder an den Patienten angibt. Zum Beispiel topisch, intravenös, usw."
        * ^comment = "FHIR-Mapping: MedicationAdministration.dosage.route"
      * Dosis 0..1 SimpleQuantity "Dosis" "Die Menge des Medikaments, die bei einem Verabreichungsvorgang verabreicht wird. Wird verwendet, wenn die Verabreichung im Wesentlichen ein sofortiges Ereignis ist, wie das Schlucken einer Tablette oder die Verabreichung einer Injektion."
        * ^comment = "FHIR-Mapping: MedicationAdministration.dosage.dose"
      * Rate[x] 0..1 Ratio or Quantity "Rate" "Gibt die Geschwindigkeit an, mit der das Medikament dem Patienten zugeführt wurde oder wird. In der Regel die Rate für eine Infusion, z. B. 100 ml pro 1 Stunde oder 100 ml/Stunde. Kann auch als Rate pro Zeiteinheit ausgedrückt werden, z. B. 500 ml pro 2 Stunden. Andere Beispiele: 200 mcg/min oder 200 mcg/1 Minute; 1 Liter/8 Stunden."
        * ^comment = "FHIR-Mapping: MedicationAdministration.dosage.rate[x]"
  * Hinweis 0..* http://hl7.org/fhir/StructureDefinition/Annotation "Hinweis" "Informationen über die Verabreichung"
    * ^comment = "FHIR-Mapping: MedicationAdministration.note"
  * Behandlungsgrund[x] 0..* CodeableConcept or Reference(Condition or Observation or DiagnosticReport) "Behandlungsgrund" "Grund für die Durchführung der Verabreichung"
    * ^comment = "FHIR-Mapping: MedicationAdministration.(reasonCode|reasonReference)"
  * BezugZuVerordnung 0..* Reference(MedicationRequest) "Bezug zu Verordnung" "Referenz auf die Medikationsverordnung, welche die Mediaktionsverabreichung anordnet."
    * ^comment = "FHIR-Mappings: MedicationAdministration.request"
  * BezugZuPatient 1..1 Reference(Patient) "Bezug zu Patient" "Die Person, die das Medikament erhält."
    * ^comment = "FHIR Mapping: MedicationAdministration.subject"
  * BezugZuFall 0..1 Reference(Encounter) "Bezug zu Fall" "Der Besuch, die Aufnahme oder ein anderer Kontakt zwischen Patient und Leistungserbringer, bei dem die Verabreichung des Medikaments erfolgt ist."
    * ^comment = "FHIR Mapping: MedicationAdministration.context"
  * Durchfuehrender 0..* Reference(Practitioner or PractitionerRole or Patient or RelatedPerson or Device) "Durchführende*r" "Gibt an, wer oder was die Verabreichung der Medikamente durchgeführt hat."
    * ^comment = "FHIR Mapping: MedicationAdministration.performer"

Mapping: Medikation-LogicalModel
Id: FHIR
Title: "Medikation LogicalModel FHIR Mapping"
Source: MII_LM_Medikation
* Medikation -> "Medication"
  * Code -> "Medication.code"
  * Darreichungsform -> "Medication.form"
  * Bestandteil -> "Medication.ingredient"
    * Code -> "Medication.ingredient.itemCodeableConcept"
    * Wirkstofftyp -> "Medication.ingredient.extension:Wirkstofftyp"
    * MengeStaerke -> "Medication.ingredient.strength"
* Medikationsliste -> "List"
  * Identifikation -> "List.identifier"
  * Status -> "List.status"
  * Modus -> "List.mode"
  * Typ -> "List.code"
  * Medikationseintrag -> "List.entry.item"
  * BezugZumPatient -> "List.subject"
  * BezugZumFall -> "List.encounter"
* Medikationsverordnung -> "MedicationRequest"
  * Identifikation -> "MedicationRequest.identifier"
  * Status -> "MedicationRequest.status"
  * Medikation[x] -> "MedicationRequest.medication[x]"
  * Dosierungsinstruktionen -> "MedicationRequest.dosageInstruction"
    * Reihenfolge -> "MedicationRequest.dosageInstruction.sequence"
    * Freitext -> "MedicationRequest.dosageInstruction.text"
    * Zeitangabe -> "MedicationRequest.dosageInstruction.timing"
      * Einnahmedauer -> "MedicationRequest.dosageInstruction.timing.bounds[x]"
        * StartzeitpunktEinnahme -> "MedicationRequest.dosageInstruction.timing.boundsPeriod.start"
        * EndzeitpunktEinnahme -> "MedicationRequest.dosageInstruction.timing.boundsPeriod.end"
        * DauerDerEinnahme -> "MedicationRequest.dosageInstruction.timing.boundsDuration"
      * Zeitpunkt -> "MedicationRequest.dosageInstruction.timing.event"
      * EreignisbezogeneWiederholung -> "MedicationRequest.dosageInstruction.timing.repeat.when"
        * Ereignis -> "MedicationRequest.dosageInstruction.timing.repeat.when"
        * Offset -> "MedicationRequest.dosageInstruction.timing.repeat.offset"
      * PeriodischesIntervall -> "MedicationRequest.dosageInstruction.timing.repeat"
        * Phase -> "MedicationRequest.dosageInstruction.timing.event"
        * Periode[x] -> "MedicationRequest.dosageInstruction.timing.repeat.(boundsDuration|boundsPeriod)"
    * EinnahmeBeiBedarf[x] -> "MedicationRequest.dosageInstruction.asNeeded[x]"
    * ArtDerAnwendung -> "MedicationRequest.dosageInstruction.(site|route|method)"
    * Dosis[x] -> "MedicationRequest.dosageInstruction.doseAndRate"
  * Hinweis -> "MedicationRequest.note"
  * Behandlungsgrund[x] -> "MedicationRequest.(reasonCode|reasonReference)"
  * DatumDerVerordnung -> "MedicationRequest.authoredOn"
  * Ersatzmedikation[x] -> "MedicationRequest.substitution"
  * Verordnungsdetails -> "MedicationRequest.intent"
  * BezugZumPatient -> "MedicationRequest.subject"
  * BezugZumFall -> "MedicationRequest.encounter"
  * VorherigeMedikationsverordnungen -> "MedicationRequest.priorPrescription" 
  * Kontraindikationen -> "MedicationRequest.detectedIssue"
  * AutorInformantDerVerordnung -> "MedicationRequest.requester"
* Medikationseintrag -> "MedicationStatement"
  * Identifikation -> "MedicationStatement.identifier"
  * Status -> "MedicationStatement.status"
  * Medikation[x] -> "MedicationStatement.medication[x]"
  * Einnahmedauer -> "MedicationStatement.effective[x]"
    * StartzeitpunktEinnahme -> "MedicationStatement.effectivePeriod.start"
    * EndzeitpunktEinnahme -> "MedicationStatement.effectivePeriod.end"
    * DauerDerEinnahme -> "MedicationStatement.effectivePeriod"
    * Dosierung -> "MedicationStatement.dosage"
      * Reihenfolge -> "MedicationStatement.dosage.sequence"
      * Freitext -> "MedicationStatement.dosage.text"
      * Zeitangabe -> "MedicationStatement.dosage.timing"
        * Einnahmedauer -> "MedicationStatement.dosage.timing.bounds[x]"
          * StartzeitpunktEinnahme -> "MedicationStatement.dosage.timing.boundsPeriod.start"
          * EndzeitpunktEinnahme -> "MedicationStatement.dosage.timing.boundsPeriod.end"
          * DauerDerEinnahme -> "MedicationStatement.dosage.timing.boundsDuration"
        * Zeitpunkt -> "MedicationStatement.dosage.timing.event"
        * EreignisbezogeneWiederholung -> "MedicationStatement.dosage.timing.repeat"
          * Ereignis -> "MedicationStatement.dosage.timing.repeat.when"
          * Offset -> "MedicationStatement.dosage.timing.repeat.offset"
        * PeriodischesIntervall -> "MedicationStatement.dosage.timing.repeat"
          * Phase -> "MedicationStatement.dosage.timing.event"
          * Periode[x] -> "MedicationStatement.dosage.timing.repeat.(boundsDuration|boundsPeriod)"
      * EinnahmeBeiBedarf[x] -> "MedicationStatement.dosage.asNeeded[x]"
      * ArtDerAnwendung -> "MedicationStatement.dosage.(site|route|method)"
      * Dosis[x] -> "MedicationStatement.dosage.doseAndRate"
  * Hinweis -> "MedicationStatement.note"
  * Behandlungsgrund[x] -> "MedicationStatement.(reasonCode|reasonReference)"
  * BezugZuVerordnung -> "MedicationStatement.basedOn"
  * BezugZuAbgabe -> "MedicationStatement.basedOn"
  * BezugZumPatient -> "MedicationStatement.subject"
  * BezugZumFall -> "MedicationStatement.context"
  * DatumDesEintrags -> "MedicationStatement.dateAsserted"
  * AutorInformantDesEintrags -> "MedicationStatement.informationSource"
* Medikationsverabreichung -> "MedicationAdministration"
  * Identifikation -> "MedicationAdministration.identifier"
  * Status -> "MedicationAdministration.status"
  * Medikation[x] -> "MedicationAdministration.medication[x]"
  * Verabreichungszeitpunkt[x] -> "MedicationAdministration.effective[x]"
  * Dosierung -> "MedicationAdministration.dosage"
    * Freitext -> "MedicationAdministration.dosage.text"
    * Koerperstelle -> "MedicationAdministration.dosage.site"
    * Weg -> "MedicationAdministration.dosage.route"
    * Dosis -> "MedicationAdministration.dosage.dose"
    * Rate[x] -> "MedicationAdministration.dosage.rate[x]"
  * Hinweis -> "MedicationAdministration.note"
  * Behandlungsgrund[x] -> "MedicationAdministration.(reasonCode|reasonReference)"
  * BezugZuVerordnung -> "MedicationAdministration.request"
  * BezugZuPatient -> "MedicationAdministration.subject"
  * BezugZuFall -> "MedicationAdministration.context"
  * Durchfuehrender -> "MedicationAdministration.performer"

Mapping: Medikation-LogicalModel-Profile
Id: KDS-Profile
Title: "Medikation LogicalModel KDS-Profile Mapping"
Source: MII_LM_Medikation
* Medikation -> "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"
* Medikationsliste -> "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste"
* Medikationsverordnung -> "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest"
* Medikationseintrag -> "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"
* Medikationsverabreichung -> "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration"
