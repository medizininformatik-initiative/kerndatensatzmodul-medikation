## Datensätze inkl. Beschreibungen

Das Modul Medikation umfasst Datensätze zur Medikation selbst (Arzneimittel, Rezeptur, Wirkstoff), zur Anwendung beim Patienten (Einnahmedauer, Dosierung) und Metainformationen (Status, Bezüge, Autor, Datum etc.). 

Die offizielle und abgenommene Version des Informationsmodells für das Modul Medikation findet sich auf [ArtDecor](https://art-decor.org/art-decor/decor-datasets--mide-). Zur Vereinheitlichung der Repräsentation wurde das Informationsmodell zusätzlich als FHIR Logical Model abgebildet:

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/LogicalModel/BasismodulMedikation}}

Es ist zu beachten, dass das Logical Model rein auf die Abbildung der Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Models existiert ein 1:1 Mapping auf ein Element einer konkreten FHIR Ressource.

| Logischer Datensatz | Beschreibung |
|--------------|-----------|
| Medikationsliste | Die Medikationsliste ist eine flache Sammlung von Medikationseinträgen, die ein Patient zu einem bestimmten Zeitpunkt einnimmt, beispielsweise bei Aufnahme oder Entlassung. |
| Medikationsliste.Identifikation | Business Identifier der Medikationsliste |
| Medikationsliste.Status | Zeigt den Status der Medikationsliste an |
| Medikationsliste.Modus | Zeigt den Modus der Mediaktionsliste an - ob es sich um eine Arbeitsliste handelt, die laufend aktualisiert wird, oder um eine Momentaufnahme, beispielsweise die Liste der Medikationseinträge bei Aufnahme oder Entlassung. |
| Medikationsliste.Typ | Definiert den Typ der Liste - warum diese erstellt wurde. |
| Medikationsliste.Medikationseintrag | Referenz auf Medikationseintrag |
| Medikationsverordnung | Dokumentation einer Medikationsanordnung durch medizinisches Personal. |
| Medikationsverordnung.Identifikation | Identifikator der Medikationsverordnung |
| Medikationsverordnung.Status | Status der Medikationsverordnung |
| Medikationsverordnung.Arzneimittel/Wirkstoff/Rezeptur | Die Medikation, die angeordnet wird. |
| Medikationsverordnung.Dosierung (Freitext) | Textueller Eintrag der Dosierung | 
| Medikationsverordnung.Dosierung (strukturiert) | Die Dosierung (strukturiert) beschreibt die Einzeldosis oder Dosen eines Medikamentes, welches verabreicht wird oder werden soll. |
| Medikationsverordnung.Hinweis | Hinweistext zu diesem Medikament |
| Medikationsverordnung.Behandlungsgrund | Behandlungsgrund kann ein Problem, Symptom oder eine Diagnose (Condition) sein. |
| Medikationsverordnung.Datum der Verordnung | Datum der Medikationsverordnung |
| Medikationsverordnung.Ersatzmedikation | Zeigt an, ob die Substitution Teil der Abgabe sein kann oder soll oder nicht. In einigen Fällen muss eine Substitution stattfinden, in anderen Fällen darf sie nicht stattfinden. |
| Medikationsverordnung.Verordnungsdetails | Ob es sich bei der Anfrage um einen Vorschlag, einen Plan oder einen Auftrag handelt. |
| Medikationsverordnung.Bezug zum Patient | Ein Link zu einer Ressource, die die Person repräsentiert, an die das Medikament verabreicht werden soll. |
| Medikationsverordnung.Bezug zum Fall | Der Fall, bei der diese Verordnung erstellt wurde oder mit der die Erstellung dieser Verordnung in engem Zusammenhang steht. |
| Medikationsverordnung.vorherige Medikationsverordnungen | Ein Link zu einer Ressource, die eine frühere Verschreibung darstellt. |
| Medikationsverordnung.Kontraindikationen | Weist auf ein tatsächliches oder potenzielles klinisches Problem mit oder zwischen einer oder mehreren aktiven oder vorgeschlagenen klinischen Maßnahmen für einen Patienten hin, z. B. Wechselwirkung zwischen Arzneimitteln, doppelte Therapie, Dosierungswarnung usw. |
| Medikationsverordnung.Autor/Informant der Verordnung | 
| Medikationseintrag | Dokumentiert die Verschreibung, Gabe oder Medikationsplan zu einem oder mehreren Medikamenten. |
| Medikationseintrag.Identifikation | Identifikator des Medikationseintrags |
| Medikationseintrag.Status | Prozess-Status des beschriebenen Medikationsstatus |
| Medikationseintrag.Arzneimittel/Wirkstoff/Rezeptur | Die Medikation, die angesetzt, geplant oder verabreicht wird. Es kann sich um ein Fertigarzneimittel oder eine Rezeptur handeln. Auch die Angabe nur des Wirkstoffes ist möglich. |
| Medikationseintrag.Arzneimittel/Wirkstoff/Rezeptur.Arzneimittelprodukt | Hiermit ist sowohl eine zusammengesetzte Produkt-ID (PhPID) gemeint wie die Pharmazentralnummer (PZN), als auch Produktidentifikatoren (GTIN). |
| Medikationseintrag.Arzneimittel/Wirkstoff/Rezeptur.Arzneimittelprodukt.Arzneimittel-Name | Arzneimittelname oder auch Handelsname genannt. Bezeichnung eines Fertigarzneimittels gemäß Informationsstelle für Arzneispezialitäten (IFA) oder Hauskatalog. |
| Medikationseintrag.Arzneimittel/Wirkstoff/Rezeptur.Arzneimittelprodukt.Arzneimittel-Code | Identifikation eines Fertigarzneimittels durch seinen Code, z. B. Pharmazentralnummer (PZN), IDMP Pharmaceutical Product Identifiers (PhPID), IDMP Medicinal Product Identifier (MPID), Pharmacy Product Number (PPN) |
| Medikationseintrag.Arzneimittel/Wirkstoff/Rezeptur.Arzneimittelprodukt.Arzneimittelwirkstärke | Wirkstärke gemäß Handelsname |
| Medikationseintrag.Arzneimittel/Wirkstoff/Rezeptur.Rezeptur | Rezeptur-Eintrag |
| Medikationseintrag.Arzneimittel/Wirkstoff/Rezeptur.Rezeptur.Freitextzeile | Beschreibung der Rezeptur |
| Medikationseintrag.Arzneimittel/Wirkstoff/Rezeptur.Wirkstoff | Wirkstoff |
| Medikationseintrag.Arzneimittel/Wirkstoff/Rezeptur.Wirkstoff.Wirkstoff-Name (allgemein) | Bezeichnung eines Wirkstoffes, der aus einer Wirkstoffklassifikation entnommen wird. In den meisten Fällen WHO-INN (international non-proprietary name der World Health Organisation) in der englischen Version. Hinweis: In Deutschland gibt es z.T. Schreibvarianten oder weitere Bezeichnungen. Für Substanzen ohne WHO INN die registrierte Substanzbezeichnung. |
| Medikationseintrag.Arzneimittel/Wirkstoff/Rezeptur.Wirkstoff.Wirkstoff-Code (allgemein) | Code eines Wirkstoffes, der aus einer Wirkstoffklassifikation entnommen wird, z.B. ASK, UNII. |
| Medikationseintrag.Arzneimittel/Wirkstoff/Rezeptur.Wirkstoff.Wirkstoff-Name (aktiv) | „Active ingredient“ des Arzneimittelprodukts gemäß Zulassung (vgl. z.B. AMIS-Datenbank), kann Wirkstoff-Name (allgemein) sein oder auch ein „Derivat“ der Substanz sein (z.B. Salz, Ester etc. Bezeichnung dann z.B. wie  Modified INNs (INNMs) |
| Medikationseintrag.Arzneimittel/Wirkstoff/Rezeptur.Wirkstoff.Wirkstoff-Code (aktiv) | Code eines Wirkstoffes, der aus einer Wirkstoffklassifikation entnommen wird z.B. ASK, UNII.  Hierbei handelt es sich um das „Active ingredient“ des Arzneimittelprodukts gemäss Zulassung (vgl. z.B. AMIS-Datenbank), kann Wirkstoff-Code (allgemein) sein oder der Code für ein „Derivat“ der Substanz sein (z. B. Salz, Ester etc.) |
| Medikationseintrag.Arzneimittel/Wirkstoff/Rezeptur.Wirkstoff.Menge/Stärke | Wirkstärke, Menge der aktiven Substanz pro Dosiseinheit entsprechend Darreichungsform (1 Tablette, 1 Ampulle, 1 mL etc.) |
| Medikationseintrag.Arzneimittel/Wirkstoff/Rezeptur.Darreichungsform | Darreichungsform nach EDQM |
| Medikationseintrag.Einnahmedauer | Einnahmedauer für eine angeordnete, geplante oder durchgeführte Medikamentengabe. Bei Einzel-Vergabe kann die Dauer auch punktweise (Null) sein.|
| Medikationseintrag.Einnahmedauer.Startzeitpunkt-Einnahme | Startzeitpunkt der Einnahme |
| Medikationseintrag.Einnahmedauer.Endzeitpunkt-Einnahme | Enddatum bzw. Endzeitpunkt der Einnahme, bis zu welchem Tag bzw. welcher Zeit einschließlich das Medikament eingenommen werden soll |
| Medikationseintrag.Einnahmedauer.Dauer-der-Einnahme | Dauer (Intervall in Tagen, Wochen Monaten etc.) der Einnahme |
| Medikationseintrag.Dosierung-Freitext | Dosierung (Freitext): es kann mehrere textuelle Einträge der Dosierung geben. |
| Medikationseintrag.Dosierung-Freitext.Freitext | Dosierung im Freitext |
| Medikationseintrag.Dosierung-strukturiert | Dosierung (strukturiert) |
| Medikationseintrag.Dosierung-strukturiert.Reihenfolge | Sequenznummer des Dosierungseintrags. Bei mehreren Einträgen zur Dosierung wird damit die Reihenfolge (Priorität) der Einträge festgelegt. |
| Medikationseintrag.Dosierung-strukturiert.Zeitangabe | Zeitangabe zur Einnahme als Teil des Dosierschemas. Ausführliche Beispiele finden sich unter http://wiki.hl7.de/index.php?title=cdamedp:Dosierbeispiele - Nicht vorhanden bei Vergabe, weil bei Vergabe kein zukünftiges Dosierungs-Schema angegeben werden muss. |
| Medikationseintrag.Dosierung-strukturiert.Zeitangabe.Zeitpunkt | Exakter Zeitpunkt, zu dem eine Medikation gegeben werden soll |
| Medikationseintrag.Dosierung-strukturiert.Zeitangabe.Ereignisbezogene Wiederholung | Gibt ein periodisches Zeitintervall an, in dem die Wiederholung auf Aktivitäten des täglichen Lebens oder anderen wichtigen Ereignissen basiert, die zeitabhängig sind, jedoch nicht vollständig von der Zeit bestimmt werden |
| Medikationseintrag.Dosierung-strukturiert.Zeitangabe.Ereignisbezogene Wiederholung.Ereignis | Ereignis, z. B. morgens, mittags, abends, zur Nacht |
| Medikationseintrag.Dosierung-strukturiert.Zeitangabe.Ereignisbezogene Wiederholung.Offset | Offset zum Ereignis, z. B. 30 Minuten vorher |
| Medikationseintrag.Dosierung-strukturiert.Zeitangabe.Periodisches Intervall | Ein Zeitintervall, das sich periodisch wiederholt. Periodische Intervalle haben zwei Eigenschaften, Phase und Periode. Die Phase gibt den "Typ Intervall" an, der sich jede Periode wiederholt. Das Wiederholungsintervall (periodische Intervallsequenz) gibt an, die Dauer jedes Vorkommens bzw. der Zeit zwischen den Vorkommnissen (period) oder den Ankerzeitpunkt (Startzeitpunkt), an dem die periodische Intervallsequenz beginnt (phase). |
| Medikationseintrag.Dosierung-strukturiert.Zeitangabe.Periodisches Intervall.Phase | Ankerzeitpunkt (Startzeitpunkt), an dem die periodische Intervallsequenz beginnt |
| Medikationseintrag.Dosierung-strukturiert.Zeitangabe.Periodisches Intervall.Periode | Dauer jedes Vorkommens bzw. der Zeit zwischen den Vorkommnissen |
| Medikationseintrag.Dosierung-strukturiert.Einnahme bei Bedarf | Einnahme des Medikaments bei Bedarf |
| Medikationseintrag.Dosierung-strukturiert.Art der Anwendung | Pharmazeutische Anwendung dekomponiert in drei Eigenschaften: Art der Anwendung, Weg der Anwendung und Ort der Anwendung |
| Medikationseintrag.Dosierung-strukturiert.Dosis | Kann angegeben sein als Mengenangabe (SimpleQuantity, Range) oder als Menge pro Zeiteinheit (Ratio). Möglicherweise wichtig sind Maximaldosierungen innerhalb einer Zeiteinheit oder max. Lebenszeitdosis. |
| Medikationseintrag.Hinweis | Hinweistext zu diesem Medikament |
| Medikationseintrag.Behandlungsgrund | Behandlungsgrund kann ein Problem, Symptom oder eine Diagnose (Condition) sein. |
| Medikationseintrag.Bezug zu Verordnung | Bezug zu Verordnung. Hier können je nach Anforderung unterschiedliche Bezüge zum Fall, Behandlungsplan etc. hergestellt werden. |
| Medikationseintrag.Bezug zu Abgabe | Bezug zu Abgabe |
| Medikationseintrag.Bezug zum Patient | Die Person, die das Medikament einnimmt/eingesetzt hat. |
| Medikationseintrag.Bezug zum Fall | Der Besuch, die Aufnahme oder ein anderer Kontakt zwischen Patient und Leistungserbringer, bei dem die Verabreichung des Medikaments erfolgt ist. |
| Medikationseintrag.Datum des Eintrags | Datum des Dokumentationseintrages |
| Medikationseintrag.Autor/Informant des Eintrags | Zuständiger Health Professional, der den Vorgang angelegt hat bzw. Informationen zu dem Vorgang bereitgestellt hat. |
| Medikationseintrag.Autor/Informant des Eintrags.Organisationsname | Name der Organisation |


<br><br>

