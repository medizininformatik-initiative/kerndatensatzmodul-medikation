# Ballot-Kommentierung 2027.0.0-ballot - MII IG Medikation v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* **Ballot-Kommentierung 2027.0.0-ballot**

## Ballot-Kommentierung 2027.0.0-ballot

Diese Seite ist ein **Arbeitsdokument** für die Kommentierung (Ballot Reconciliation) der Version `2027.0.0-ballot` des MII Kerndatensatz Modul Medikation. Sie listet die offenen Tickets aus dem HL7-Deutschland-Ballot ([Jira-Abfrage](https://hl7germany.atlassian.net/issues/?jql=project%20%3D%20HDB%20AND%20created%20%3E%3D%20-200d%20AND%20statusCategory%20%21%3D%20Done%20AND%20%22Project%5BDropdown%5D%22%20in%20%28%22MII%20-%20Modul%20Medikation%22%29%20ORDER%20BY%20created%20DESC)) nach Kategorien gruppiert, jeweils mit einer **vorgeschlagenen** Lösung. Die Seite ist temporär und wird vor dem Release `2027.0.0` entfernt.

#### Legende

| | |
| :--- | :--- |
| **Vorschlag: annehmen** | Vorschlag, die Änderung für`2027.0.0`umzusetzen; Bestätigung in der Sitzung. |
| **Vorschlag: annehmen (Doku)** | Vorschlag, nur Dokumentation oder Hinweise zu ändern, keine Artefaktänderung; Bestätigung in der Sitzung. |
| **Diskussion** | Noch kein Lösungsvorschlag; Diskussion in der Sitzung. |
| **Antwort geplant** | Frage; eine Antwort in Jira ist geplant (Entwurf angegeben), ggf. mit Klarstellung in der Dokumentation. |

**Breaking** = **ja**, wenn Implementierungen, die zum vorherigen Release (`2026.0.x`) konform sind, nach der Änderung nicht mehr konform sind.

-------

### A. Vorschlag: annehmen – Profiländerungen

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [HDB-980](https://hl7germany.atlassian.net/browse/HDB-980) | Medication ingredient – Vorschlag zur Kardinalität | `Medication.ingredient`von`1..*`auf`0..*`lockern und eine Invariante`code.exists() or ingredient.exists()`ergänzen (analog ISiK`isik-med-1`). „Mindestens der Wirkstoff SOLL angegeben werden" bleibt im Narrativ. Damit sind Fertigarzneimittel zulässig, die nur per PZN/ATC codiert sind, wie sie ISiK-6.0.0-Systeme liefern. Empfänger können sich nicht mehr auf ein vorhandenes`ingredient`verlassen. | Vorschlag: annehmen | nein (Lockerung) |
| [HDB-1038](https://hl7germany.atlassian.net/browse/HDB-1038) | Medication.ingredient von 1..* auf 0..* aufweichen | Wird zusammen mit HDB-980 gelöst. Der bisherige Workaround,`ingredient`mit einer`data-absent-reason`-Extension zu füllen, wenn nur der ATC-Code bekannt ist, entfällt. | Vorschlag: annehmen | nein |
| [HDB-984](https://hl7germany.atlassian.net/browse/HDB-984) | MedicationRequest doNotPerform nicht verbieten | `MedicationRequest.doNotPerform`von`0..0`auf`0..1`ändern, mit der Invariante`doNotPerform.empty() or doNotPerform = false`. ISiK-Verordnungen mit`doNotPerform = false`sind damit konform, Negativ-Verordnungen bleiben ausgeschlossen. | Vorschlag: annehmen | nein (Lockerung) |
| [HDB-982](https://hl7germany.atlassian.net/browse/HDB-982) | MII PR Medikation Medication – status nicht definiert | `Medication.status`als Must Support kennzeichnen (analog ISiK) und einen Hinweis ergänzen:`status`ist ein Modifier-Element;`inactive`und`entered-in-error`ändern die Bedeutung der Ressource und müssen von Empfängern ausgewertet werden. | Vorschlag: annehmen | nein (nur Must Support) |
| [HDB-967](https://hl7germany.atlassian.net/browse/HDB-967) | MedicationAdministration.dosage.dose ist Pflichtfeld ohne Wertevorrat | `MedicationAdministration.dosage.dose`(**required**) an`http://ig.fhir.de/igs/medication/ValueSet/DosageDoseQuantityDE`binden – dieselbe Bindung, die`DosageDE`(`de.fhir.medication`1.0.7) auf`doseAndRate.dose[x]:doseQuantity`in MedicationRequest und MedicationStatement setzt.`DosageDE`lässt sich dort nicht als Typprofil verwenden, da`MedicationAdministration.dosage`in R4 ein BackboneElement ist.`dosage.dose.system`/`.code`sind bereits`1..1`. Wird von`mii-pr-bildgebung-kontrastmittelgabe`und`mii-pr-lungenfunktion-dosis-gabe`geerbt. Der Wechsel auf Medikation-DE 2.x ist eine separate Entscheidung nach dem Ballot. | Vorschlag: annehmen | **ja**(Einheiten außerhalb des ValueSets werden invalide) |

### B. Vorschlag: annehmen – Terminologie

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [HDB-981](https://hl7germany.atlassian.net/browse/HDB-981) | ValueSet mii-vs-medikation-atc – fehlendes 2027er Release | `include codes from system http://fhir.de/CodeSystem/bfarm/atc\|2027`in`mii-vs-medikation-atc`aufnehmen, sobald das BfArM ATC-DE 2027 veröffentlicht, und Beschreibung sowie Copyright anpassen („2018 bis 2027"). Eine versionsunabhängige Einbindung würde jede künftige Version ungeprüft zulassen, passt nicht zu`code.coding:atcClassDe.version``1..1`und wird daher nicht vorgeschlagen. | Vorschlag: annehmen | nein |
| [HDB-983](https://hl7germany.atlassian.net/browse/HDB-983) | Extension wirkstofftyp, CodeSystem wirkstofftyp aus deutschen Basisprofilen nutzen | Bestätigt:`http://fhir.de/StructureDefinition/WirkstofftypEX`(`de.basisprofil.r4`1.6.0, bereits Abhängigkeit) hat denselben Kontext (`Medication.ingredient`), ihr CodeSystem`http://fhir.de/CodeSystem/WirkstofftypCS`dieselben Codes (`IN`,`PIN`,`MIN`) wie die MII-Artefakte. Vorschlag: die Basisprofil-Extension als Must-Support-Slice auf`Medication.ingredient.extension`ergänzen, die MII-Extension für eine Übergangszeit beibehalten und MII-Extension, -ValueSet und -CodeSystem in einem späteren Release auf`retired`setzen; Beispiele anpassen. | Vorschlag: annehmen | nein mit Übergangszeit (beide URLs zulässig);**ja**, wenn die MII-Extension entfernt wird |

### C. Zu diskutieren

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [HDB-985](https://hl7germany.atlassian.net/browse/HDB-985) | MedicationAdministration effective[x] | ISiK`ISiKMedikationsVerabreichung`erlaubt für`effective[x]`nur sekundengenaue Angaben und verweist datumsgenaue Gaben auf MedicationStatement. Das MII-Profil erlaubt derzeit jede Genauigkeit. Teilt die MII diese Abgrenzung? MII-Daten stammen häufig aus retrospektiven DIZ-Quellen, in denen ggf. nur das Datum bekannt ist; eine harte Invariante würde solche Daten invalide machen. Optionen: (a) ISiK-Regel als Invariante übernehmen, (b) nur als SOLL im Narrativ, (c) aktuelle Regel beibehalten und die Abweichung von ISiK dokumentieren. | Diskussion | (a)**ja**· (b), (c) nein |

### D. Vorschlag: annehmen – nur Dokumentation

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [HDB-979](https://hl7germany.atlassian.net/browse/HDB-979) | Hinweis zur Pausierung einer Medikation aus ISiK übernehmen | Den ISiK-Best-Practice-Hinweis zur Pausierung einer Medikation übernehmen ([ISiKMedikationsInformation](https://gematik.github.io/spec-ISiK-Basismodul/main-stufe-6/ISiK-Medikation/en/StructureDefinition-ISiKMedikationsInformation.html)): eine Pausierung über mehrere MedicationStatement- (bzw. MedicationAdministration-)Ressourcen abbilden, statt eine bestehende zu überschreiben, damit`status`stets den aktuellen Stand wiedergibt und die Historie erhalten bleibt. Hinweis in den Intro-Notes der Profile MedicationStatement und MedicationAdministration ergänzen. | Vorschlag: annehmen (Doku) | nein |

### E. Antwort geplant

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [HDB-986](https://hl7germany.atlassian.net/browse/HDB-986) | Frage zur Verschreibung von Kombipackungen (Beschreibung auf der Startseite) | Entwurf (zu bestätigen): MedicationRequest, MedicationStatement und MedicationAdministration referenzieren die „obere" Kombipackungs-`Medication`, wenn die Packung als Ganzes verordnet oder dokumentiert wird. Ist der tatsächlich eingenommene bzw. verabreichte Bestandteil bekannt, referenziert die Ressource direkt die entsprechende Unter-`Medication`(eine vollständige`Medication`-Instanz, siehe „Kombinationspackungen" auf der Startseite). Einen Satz dazu auf der Startseite ergänzen. | Antwort geplant | nein |

