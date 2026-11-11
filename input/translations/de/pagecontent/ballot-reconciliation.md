Diese Seite ist ein **Arbeitsdokument** für die Kommentierung (Ballot Reconciliation) der Version `2027.0.0-ballot` des MII Kerndatensatz Modul Medikation. Sie führt die Tickets aus dem HL7-Deutschland-Ballot ([Jira-Abfrage](https://hl7germany.atlassian.net/issues/?jql=project%20%3D%20HDB%20AND%20created%20%3E%3D%20-200d%20AND%20statusCategory%20%21%3D%20Done%20AND%20%22Project%5BDropdown%5D%22%20in%20%28%22MII%20-%20Modul%20Medikation%22%29%20ORDER%20BY%20created%20DESC)) nach Kategorien auf, jeweils mit der in der Kommentierung getroffenen **Entscheidung** und ihrer Umsetzung für `2027.0.0`. Die Änderungen erfolgen auf dem Branch `change/ballot-2027-reconciliation`, ein Commit pro Ticket, und sind in den Release Notes von `2027.0.0` aufgeführt. Die Seite ist temporär und wird vor dem Release `2027.0.0` entfernt.

#### Legende

| Status | Bedeutung |
| --- | --- |
| **Angenommen** | Wie vorgeschlagen umgesetzt. |
| **Angenommen mit Änderung** | Umgesetzt, mit in der Kommentierung vereinbarten Änderungen am Vorschlag. |
| **Angenommen (Doku)** | Nur Dokumentation bzw. Hinweise, keine Änderung an den Constraints der Artefakte. |
| **Angenommen – zurückgestellt** | Vereinbart, aber noch nicht umsetzbar; im Backlog erfasst. |

**Breaking** = *ja*, wenn Implementierungen, die zum vorherigen Release (`2026.0.x`) konform sind, nach der Änderung nicht mehr konform sind.

---

### A. Profiländerungen

| Ticket | Thema | Entscheidung und Umsetzung | Status | Breaking |
| --- | --- | --- | --- | --- |
| [HDB-980](https://hl7germany.atlassian.net/browse/HDB-980) | Medication ingredient – Vorschlag zur Kardinalität | `Medication.ingredient` von `1..*` auf `0..*` gelockert. Neue Invariante `mii-med-1` (error): `code.exists() or ingredient.exists()`, wie `isik-med-1` in ISiK Stufe 6. Der Wirkstoff SOLL weiterhin angegeben werden. Auf der Profilseite Medication mit Verweis auf ISiK 6 erläutert. | Angenommen | nein (Lockerung) |
| [HDB-1038](https://hl7germany.atlassian.net/browse/HDB-1038) | Medication.ingredient von 1..* auf 0..* aufweichen | Zusammen mit HDB-980 gelöst. Der Workaround eines `ingredient`, das nur eine `data-absent-reason`-Extension trägt, entfällt. | Angenommen | nein |
| [HDB-984](https://hl7germany.atlassian.net/browse/HDB-984) | MedicationRequest doNotPerform nicht verbieten | Variante aus ISiK Stufe 6 übernommen: `MedicationRequest.doNotPerform` `0..1`, Must Support, **beliebiger Wert** (der Vorschlag hatte nur `false` erlaubt). Element-Kommentar und Profilseite halten fest, dass `true` eine Anordnung kennzeichnet, das Medikament nicht zu geben, und von empfangenden Systemen ausgewertet werden muss. | Angenommen mit Änderung | nein (Lockerung) |
| [HDB-982](https://hl7germany.atlassian.net/browse/HDB-982) | MII PR Medikation Medication – status nicht definiert | `Medication.status` Must Support, mit dem Hinweis, dass `inactive` und `entered-in-error` ausgewertet werden müssen. Bleibt **optional (`0..1`)**; die Abweichung von ISiK Stufe 6 (`1..1`) ist auf der Profilseite dokumentiert, damit bestehende MII-Daten ohne `status` gültig bleiben. | Angenommen | nein (nur Must Support) |
| [HDB-967](https://hl7germany.atlassian.net/browse/HDB-967) | MedicationAdministration.dosage.dose ist Pflichtfeld ohne Wertevorrat | `MedicationAdministration.dosage.dose` (*required*) an `http://ig.fhir.de/igs/medication/ValueSet/DosageDoseQuantityDE` gebunden, die Bindung, die `DosageDE` in MedicationRequest und MedicationStatement anwendet. Auf der Profilseite erläutert. | Angenommen | **ja** (Einheiten außerhalb des ValueSets werden ungültig) |

### B. Terminologie

| Ticket | Thema | Entscheidung und Umsetzung | Status | Breaking |
| --- | --- | --- | --- | --- |
| [HDB-981](https://hl7germany.atlassian.net/browse/HDB-981) | ValueSet mii-vs-medikation-atc – fehlendes 2027er Release | ATC-DE 2027 wird in `mii-vs-medikation-atc` aufgenommen (expliziter `\|2027`-Include, Beschreibung und Copyright angepasst). Das BfArM hat ATC-DE 2027 noch nicht veröffentlicht, daher ist die Änderung im Backlog erfasst. Ein versionsunabhängiger Include bleibt abgelehnt. | Angenommen – zurückgestellt | nein |
| [HDB-983](https://hl7germany.atlassian.net/browse/HDB-983) | Extension wirkstofftyp, CodeSystem wirkstofftyp aus deutschen Basisprofilen nutzen | Der Slice `Medication.ingredient.extension:Wirkstofftyp` verwendet jetzt `http://fhir.de/StructureDefinition/WirkstofftypEX` (`de.basisprofil.r4` 1.6.0), wie ISiK; die MII-Extension ist aus dem Profil entfernt. MII-Extension, ValueSet und CodeSystem bleiben im Leitfaden, sind auf ihren Seiten als **veraltet (deprecated)** gekennzeichnet (die Basisprofil-Extension ist aus der MII-Extension hervorgegangen und wird von ISiK verwendet) und werden in einem späteren Release stillgelegt. Die neue Warn-Invariante `mii-med-2` meldet die Verwendung der MII-Extension und empfiehlt, sie zu ersetzen. Die neue ConceptMap `mii-cm-medikation-wirkstofftyp` bildet die MII-Codes auf `WirkstofftypCS` ab. Beispiele angepasst. Eine StructureMap (FML) zur Datenumstellung ist im Backlog erfasst. | Angenommen mit Änderung | nein (MII-Extension weiterhin akzeptiert, mit Warnung) |

### C. Diskutiert

| Ticket | Thema | Entscheidung und Umsetzung | Status | Breaking |
| --- | --- | --- | --- | --- |
| [HDB-985](https://hl7germany.atlassian.net/browse/HDB-985) | MedicationAdministration effective[x] | ISiK legt die Sekundengenauigkeit im Text fest, nicht als Invariante. MedicationAdministration: `effective[x]` SOLL als Best Practice mit Verweis auf ISiK Stufe 6 sekundengenau angegeben werden (Element-Kommentar und Profilseite); gröbere Angaben, etwa nur das Datum aus retrospektiven Quellen, bleiben gültig. MedicationStatement bleibt unverändert, da es Anwendungsfälle für gröbere Zeiträume gibt. | Angenommen (Doku) | nein |

### D. Dokumentation

| Ticket | Thema | Entscheidung und Umsetzung | Status | Breaking |
| --- | --- | --- | --- | --- |
| [HDB-979](https://hl7germany.atlassian.net/browse/HDB-979) | Hinweis zur Pausierung einer Medikation aus ISiK übernehmen | ISiK-Best-Practice auf den Profilseiten MedicationStatement und MedicationAdministration übernommen: Eine Pausierung SOLL mit mehreren Ressourcen abgebildet werden, statt eine bestehende zu überschreiben. Als **offene Frage, Rückmeldungen erwünscht** ergänzt: ISiK legt nicht fest, welchen `status` die erste Ressource trägt. Während der Pause ist sie `on-hold` oder `stopped`; eine aktuelle Implementierung setzt sie nach dokumentierter Fortsetzung wieder auf `active` (MedicationAdministration: `in-progress`), mit abgeschlossener `effectivePeriod`. | Angenommen (Doku) | nein |

### E. Fragen

| Ticket | Thema | Entscheidung und Umsetzung | Status | Breaking |
| --- | --- | --- | --- | --- |
| [HDB-986](https://hl7germany.atlassian.net/browse/HDB-986) | Frage zur Verschreibung von Kombipackungen (Beschreibung auf der Startseite) | Hinweise über die geplante Antwort hinaus erweitert: MedicationRequest, MedicationStatement und MedicationAdministration MÜSSEN die Komponente (Untermedikation) referenzieren, nicht nur die „obere" `Medication` der Kombinationspackung. Eine PZN-Verordnung einer Packung wird durch eine Packungs-Verordnung plus je eine Verordnung pro Komponente mit Einnahmeangaben abgebildet, verknüpft über `basedOn`. Krankenhausinformationssysteme verordnen Kombinationspackungen kaum über die PZN; Gegenstand ist in der Regel die Komponente. Startseite und Hinweise für Forschende angepasst. | Angenommen (Doku) | nein |

### Folgearbeiten

* ATC-DE 2027 in `mii-vs-medikation-atc`, sobald das BfArM es veröffentlicht (HDB-981).
* StructureMap (FML) zur Umstellung der MII-Extension Wirkstofftyp auf `WirkstofftypEX` (HDB-983).
* Stilllegung von MII-Extension, ValueSet und CodeSystem Wirkstofftyp in einem späteren Release (HDB-983).
* Rückmeldungen zum Status der ersten Ressource nach Fortsetzung einer pausierten Medikation sammeln (HDB-979).
