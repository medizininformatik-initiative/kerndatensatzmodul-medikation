# Logische Modelle - MII IG Medikation v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* **Logische Modelle**

## Logische Modelle

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

### Logische Modelle

Die logischen Datenmodelle des Moduls **Medikation** beschreiben den fachlichen Datensatz unabhängig von der konkreten FHIR-Repräsentation.

#### Datensätze inkl. Beschreibungen

Das Modul Medikation umfasst Datensätze zur Medikation selbst (Arzneimittel, Rezeptur, Wirkstoff), zur Anwendung bei der Patientin oder dem Patienten (Einnahmedauer, Dosierung) sowie Metainformationen (Status, Bezüge, Autor, Datum etc.).

Die offizielle und abgenommene Version des Informationsmodells für das Modul Medikation findet sich auf [ART-DECOR](https://art-decor.org/art-decor/decor-datasets--mide-). Zur Vereinheitlichung der Repräsentation wurde das Informationsmodell zusätzlich als FHIR Logical Model abgebildet: [MII LM Medikation](StructureDefinition-mii-lm-medikation.md).

Es ist zu beachten, dass das Logical Model rein auf die Abbildung der Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen — dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Models existiert ein 1:1-Mapping auf ein Element einer konkreten FHIR-Ressource.

Die vollständige Struktur mit Datentypen, Bindings und Invarianten steht auf der Artefaktseite [MII LM Medikation](StructureDefinition-mii-lm-medikation.md).

| | | |
| :--- | :--- | :--- |
| `Medikation` | 0..* | Definition eines Medikamentes zum Zwecke der Verschreibung, Abgabe und Verabreichung. Es kann sich um ein fertiges Arzneimittelprodukt, einen Wirkstoff oder eine Rezeptur handeln. |
|     `Code` | 0..1 | Ein Code (oder eine Reihe von Codes), die dieses Medikament spezifizieren, oder eine Textbeschreibung, wenn kein Code verfügbar ist. |
|     `Darreichungsform` | 0..1 | Darreichungsform nach EDQM |
|     `Bestandteil` | 1..* | Aktiver oder nicht-aktiver Inhaltsstoff. Identifiziert einen bestimmten Bestandteil der Medikation. |
|         `Code` | 0..1 | Ein Code für den Inhaltsstoff oder Wirkstoff, z.B. aus ASK, UNII, CAS oder SNOMED CT. |
|         `Wirkstofftyp` | 0..1 | Differenzierung des Wirkstofftyps in allgemeinen, genauen oder Kombinationswirkstoff. |
|         `MengeStaerke` | 0..1 | Wirkstärke, Menge der aktiven Substanz pro Dosiseinheit entsprechend Darreichungsform (1 Tablette, 1 Ampulle, 1 mL etc.) |
| `Medikationsliste` | 0..* | Die Medikationsliste ist eine flache Sammlung von Medikationseinträgen, die ein Patient zu einem bestimmten Zeitpunkt einnimmt, beispielsweise bei Aufnahme oder Entlassung. |
|     `Identifikation` | 0..* | Business Identifier der Medikationsliste |
|     `Status` | 1..1 | Zeigt den Status der Medikationsliste an |
|     `Modus` | 1..1 | Zeigt den Modus der Mediaktionsliste an - ob es sich um eine Arbeitsliste handelt, die laufend aktualisiert wird, oder um eine Momentaufnahme, beispielsweise die Liste der Medikationseinträge bei Aufnahme oder Entlassung. |
|     `Typ` | 0..1 | Definiert den Typ der Liste - warum diese erstellt wurde. |
|     `Medikationseintrag` | 0..* | Referenz auf Medikationseintrag |
|     `BezugZumPatient` | 1..1 | Die Person, für die die Medikationsliste erstellt oder verwaltet wird. |
|     `BezugZumFall` | 0..1 | Der Besuch, die Aufnahme oder ein anderer Kontakt zwischen Patient und Leistungserbringer, bei dem die Medikationsliste erstellt oder bearbeitet wird. |
| `Medikationsverordnung` | 0..* | Dokumentation einer Medikationsanordnung durch medizinisches Personal. |
|     `Identifikation` | 0..* | Business Identifier der Medikationsverordnung |
|     `Status` | 1..1 | Status der Medikationsverordnung |
|     `Medikation[x]` | 1..1 | Medikament, welches angeordnet wird. Es kann sich um ein fertiges Arzneimittelprodukt, einen Wirkstoff oder eine Rezeptur handeln. |
|     `Dosierungsinstruktionen` | 0..* | Anweisungen, wie das Medikament eingenommen werden soll. |
|         `Reihenfolge` | 0..1 | Sequenznummer des Dosierungseintrags. Bei mehreren Einträgen zur Dosierung wird damit die Reihenfolge (Priorität) der Einträge festgelegt. |
|         `Freitext` | 0..1 | Textueller Eintrag der Dosierung |
|         `Zeitangabe` | 0..1 | Ausführliche Beispiele finden sich unter http://wiki.hl7.de/index.php?title=cdamedp:Dosierbeispiele Nicht vorhanden bei Vergabe, weil bei Vergabe kein zukünftiges Dosierungs-Schema angegeben werden muss. |
|             `Einnahmedauer` | 0..1 | Einnahmedauer für eine angeordnete, geplante oder durchgeführte Medikamentengabe. Bei Einzel-Vergabe kann die Dauer auch punktweise (Null) sein. |
|                 `StartzeitpunktEinnahme` | 0..1 | Startzeitpunkt der Einnahme |
|                 `EndzeitpunktEinnahme` | 0..1 | Endzeitpunkt der Einnahme |
|                 `DauerDerEinnahme` | 0..1 | Dauer der Einnahme |
|             `Zeitpunkt` | 0..1 | Exakter Zeitpunkt, zu dem eine Medikation gegeben werden soll. |
|             `EreignisbezogeneWiederholung` | 0..1 | Gibt ein periodisches Zeitintervall an, in dem die Wiederholung auf Aktivitäten des täglichen Lebens oder anderen wichtigen Ereignissen basiert, die zeitabhängig sind, jedoch nicht vollständig von der Zeit bestimmt werden |
|                 `Ereignis` | 0..* | Ereignis, z. B. morgens, mittags, abends, zur Nacht |
|                 `Offset` | 0..1 | Offset zum Ereignis, z. B. 30 Minuten vorher |
|             `PeriodischesIntervall` | 0..1 | Ein Zeitintervall, das sich periodisch wiederholt. Periodische Intervalle haben zwei Eigenschaften, Phase und Periode. Die Phase gibt den "Typ" Intervall" an, der sich jede Periode wiederholt. Wiederholungsintervall (periodische Intervallsequenz), gibt an die Dauer jedes Vorkommens bzw. der Zeit zwischen den Vorkommnissen (period) der Ankerzeitpunkt (Startzeitpunkt), an dem die periodische Intervallsequenz beginnt (phase). |
|                 `Phase` | 0..* | Ankerzeitpunkt (Startzeitpunkt), an dem die periodische Intervallsequenz beginnt |
|                 `Periode[x]` | 0..1 | Dauer jedes Vorkommens bzw. der Zeit zwischen den Vorkommnissen |
|         `EinnahmeBeiBedarf[x]` | 0..1 | Einnahme des Medikaments bei Bedarf |
|         `ArtDerAnwendung` | 0..1 | Art der Anwendung des Arzneimittels EDQM passende Value Sets. Pharmazeutische Anwendung dekomponiert in drei Eigenschaften: Art der Anwendung, Weg der Anwendung und Ort der Anwendung. |
|         `Dosis[x]` | 0..1 | Kann angegeben sein als Mengenangabe (SimpleQuantity, Range) oder als Menge pro Zeiteinheit (Ratio). Möglicherweise wichtig sind Maximaldosierungen innerhalb einer Zeiteinheit oder max. Lebenszeitdosis. |
|     `Hinweis` | 0..* | Hinweistext zu diesem Medikament |
|     `Behandlungsgrund[x]` | 0..* | Behandlungsgrund kann ein Problem, Symptom oder eine Diagnose (Condition) sein. |
|     `DatumDerVerordnung` | 0..1 | Datum des Dokumentationseintrages |
|     `Ersatzmedikation[x]` | 0..1 | Zeigt an, ob die Substitution Teil der Abgabe sein kann oder soll oder nicht. In einigen Fällen muss eine Substitution stattfinden, in anderen Fällen darf sie nicht stattfinden. |
|     `Verordnungsdetails` | 0..1 | Ob es sich bei der Anfrage um einen Vorschlag, einen Plan oder einen Auftrag handelt. |
|     `BezugZumPatient` | 1..1 | Ein Link zu einer Ressource, die die Person repräsentiert, an die das Medikament verabreicht werden soll. |
|     `BezugZumFall` | 0..1 | Die Fall, bei der diese Verordnung erstellt wurde oder mit der die Erstellung dieser Verordnung in engem Zusammenhang steht. |
|     `VorherigeMedikationsverordnungen` | 0..1 | Ein Link zu einer Ressource, die eine frühere Verschreibung darstellt. |
|     `Kontraindikationen` | 0..* | Weist auf ein tatsächliches oder potenzielles klinisches Problem mit oder zwischen einer oder mehreren aktiven oder vorgeschlagenen klinischen Maßnahmen für einen Patienten hin, z. B. Wechselwirkung zwischen Arzneimitteln, doppelte Therapie, Dosierungswarnung usw. |
|     `AutorInformantDerVerordnung` | 0..* | Zuständiger Health Professional, der den Vorgang angelegt hat bzw. Informationen zu dem Vorgang bereit gestellt hat. |
| `Medikationseintrag` | 0..* | Medikationseintrag: Dokumentiert die Verschreibung, Gabe oder Einnahme zu einem oder mehreren Medikamenten z.B. in einem Medikationsplan. |
|     `Identifikation` | 0..* | Identifikator des Medikationseintrags |
|     `Status` | 0..1 | Prozess-Status des beschriebenen Medikationsstatus |
|     `Medikation[x]` | 1..1 | Definition eines Medikamentes zum Zwecke der Verschreibung, Abgabe und Verabreichung. Es kann sich um ein fertiges Arzneimittelprodukt, einen Wirkstoff oder eine Rezeptur handeln. |
|     `Einnahmedauer` | 0..1 | Einnahmedauer für eine angeordnete, geplante oder durchgeführte Medikamentengabe. Bei Einzel-Vergabe kann die Dauer auch punktweise (Null) sein. |
|         `StartzeitpunktEinnahme` | 0..1 | Startzeitpunkt der Einnahme |
|         `EndzeitpunktEinnahme` | 0..1 | Endzeitpunkt der Einnahme |
|         `DauerDerEinnahme` | 0..1 | Dauer der Einnahme |
|         `Dosierung` | 0..* | Gibt an, wie das Medikament vom Patienten eingenommen wird/wurde oder werden soll. |
|             `Reihenfolge` | 0..1 | Sequenznummer des Dosierungseintrags. Bei mehreren Einträgen zur Dosierung wird damit die Reihenfolge (Priorität) der Einträge festgelegt. |
|             `Freitext` | 0..1 | Textueller Eintrag der Dosierung |
|             `Zeitangabe` | 0..1 | Ausführliche Beispiele finden sich unter http://wiki.hl7.de/index.php?title=cdamedp:Dosierbeispiele Nicht vorhanden bei Vergabe, weil bei Vergabe kein zukünftiges Dosierungs-Schema angegeben werden muss. |
|                 `Einnahmedauer` | 0..1 | Einnahmedauer für eine angeordnete, geplante oder durchgeführte Medikamentengabe. Bei Einzel-Vergabe kann die Dauer auch punktweise (Null) sein. |
|                     `StartzeitpunktEinnahme` | 0..1 | Startzeitpunkt der Einnahme |
|                     `EndzeitpunktEinnahme` | 0..1 | Endzeitpunkt der Einnahme |
|                     `DauerDerEinnahme` | 0..1 | Dauer der Einnahme |
|                 `Zeitpunkt` | 0..1 | Exakter Zeitpunkt, zu dem eine Medikation gegeben werden soll. |
|                 `EreignisbezogeneWiederholung` | 0..1 | Gibt ein periodisches Zeitintervall an, in dem die Wiederholung auf Aktivitäten des täglichen Lebens oder anderen wichtigen Ereignissen basiert, die zeitabhängig sind, jedoch nicht vollständig von der Zeit bestimmt werden |
|                     `Ereignis` | 0..* | Ereignis, z. B. morgens, mittags, abends, zur Nacht |
|                     `Offset` | 0..1 | Offset zum Ereignis, z. B. 30 Minuten vorher |
|                 `PeriodischesIntervall` | 0..1 | Ein Zeitintervall, das sich periodisch wiederholt. Periodische Intervalle haben zwei Eigenschaften, Phase und Periode. Die Phase gibt den "Typ" Intervall" an, der sich jede Periode wiederholt. Wiederholungsintervall (periodische Intervallsequenz), gibt an die Dauer jedes Vorkommens bzw. der Zeit zwischen den Vorkommnissen (period) der Ankerzeitpunkt (Startzeitpunkt), an dem die periodische Intervallsequenz beginnt (phase). |
|                     `Phase` | 0..* | Ankerzeitpunkt (Startzeitpunkt), an dem die periodische Intervallsequenz beginnt |
|                     `Periode[x]` | 0..1 | Dauer jedes Vorkommens bzw. der Zeit zwischen den Vorkommnissen |
|             `EinnahmeBeiBedarf[x]` | 0..1 | Einnahme des Medikaments bei Bedarf |
|             `ArtDerAnwendung` | 0..1 | Art der Anwendung des Arzneimittels EDQM passende Value Sets. Pharmazeutische Anwendung dekomponiert in drei Eigenschaften: Art der Anwendung, Weg der Anwendung und Ort der Anwendung. |
|             `Dosis[x]` | 0..1 | Kann angegeben sein als Mengenangabe (SimpleQuantity, Range) oder als Menge pro Zeiteinheit (Ratio). Möglicherweise wichtig sind Maximaldosierungen innerhalb einer Zeiteinheit oder max. Lebenszeitdosis. |
|     `Hinweis` | 0..* | Hinweistext zu diesem Medikament |
|     `Behandlungsgrund[x]` | 0..* | Behandlungsgrund kann ein Problem, Symptom oder eine Diagnose (Condition) sein. |
|     `BezugZuVerordnung` | 0..* | Bezug zu Verordnung. Hier können je nach Anforderung unterschiedliche Bezüge zum Fall, Behandlungsplan etc. hergestellt werden. |
|     `BezugZuAbgabe` | 0..* | Bezug zu Abgabe |
|     `BezugZumPatient` | 1..1 | Die Person, die das Medikament einnimmt/eingesetzt hat. |
|     `BezugZumFall` | 0..1 | Der Besuch, die Aufnahme oder ein anderer Kontakt zwischen Patient und Leistungserbringer, bei dem die Verabreichung des Medikaments erfolgt ist. |
|     `DatumDesEintrags` | 0..1 | Datum des Dokumentationseintrages |
|     `AutorInformantDesEintrags` | 0..* | Zuständiger Health Professional, der den Vorgang angelegt hat bzw. Informationen zu dem Vorgang bereit gestellt hat. |
| `Medikationsverabreichung` | 0..* | Beschreibt das Ereignis, bei dem ein Patient ein Medikament einnimmt oder ihm auf andere Weise verabreicht wird. Dies kann das Schlucken einer Tablette oder eine lang laufende Infusion sein. |
|     `Identifikation` | 0..* | Identifikator der Medikationsverabreichung |
|     `Status` | 0..1 | Zeigt den Status der Medikationsverabreichung an. |
|     `Medikation[x]` | 1..1 | Definition eines Medikamentes zum Zwecke der Verschreibung, Abgabe und Verabreichung. Es kann sich um ein fertiges Arzneimittelprodukt, einen Wirkstoff oder eine Rezeptur handeln. |
|     `Verabreichungszeitpunkt[x]` | 1..1 | Zeitpunkt oder Zeitintervall in dem die Verabreichung stattgefunden hat. |
|     `Dosierung` | 0..1 | Details zur Dosierung der Medikation |
|         `Freitext` | 0..1 | Freitext der Dosierungsinformationen |
|         `Koerperstelle` | 0..1 | Eine kodierte Angabe der anatomischen Stelle, an der das Medikament zuerst in den Körper gelangt ist. |
|         `Weg` | 0..1 | Ein Code, der den Zugangsweg oder den physiologischen Weg der Verabreichung eines therapeutischen Mittels in oder an den Patienten angibt. Zum Beispiel topisch, intravenös, usw. |
|         `Dosis` | 0..1 | Die Menge des Medikaments, die bei einem Verabreichungsvorgang verabreicht wird. Wird verwendet, wenn die Verabreichung im Wesentlichen ein sofortiges Ereignis ist, wie das Schlucken einer Tablette oder die Verabreichung einer Injektion. |
|         `Rate[x]` | 0..1 | Gibt die Geschwindigkeit an, mit der das Medikament dem Patienten zugeführt wurde oder wird. In der Regel die Rate für eine Infusion, z. B. 100 ml pro 1 Stunde oder 100 ml/Stunde. Kann auch als Rate pro Zeiteinheit ausgedrückt werden, z. B. 500 ml pro 2 Stunden. Andere Beispiele: 200 mcg/min oder 200 mcg/1 Minute; 1 Liter/8 Stunden. |
|     `Hinweis` | 0..* | Informationen über die Verabreichung |
|     `Behandlungsgrund[x]` | 0..* | Grund für die Durchführung der Verabreichung |
|     `BezugZuVerordnung` | 0..* | Referenz auf die Medikationsverordnung, welche die Mediaktionsverabreichung anordnet. |
|     `BezugZuPatient` | 1..1 | Die Person, die das Medikament erhält. |
|     `BezugZuFall` | 0..1 | Der Besuch, die Aufnahme oder ein anderer Kontakt zwischen Patient und Leistungserbringer, bei dem die Verabreichung des Medikaments erfolgt ist. |
|     `Durchfuehrender` | 0..* | Gibt an, wer oder was die Verabreichung der Medikamente durchgeführt hat. |

