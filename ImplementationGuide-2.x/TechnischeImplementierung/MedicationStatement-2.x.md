## MedicationStatement

Das MedicationStatement dokumentiert die Verordnung eines Arzneimittels oder den Konsum durch einen Patienten. MedicationStatement kann anzeigen, dass der Patient ein Medikament zur Zeit einnimmt, in der Vergangenheit genommen hat oder in Zukunft einnehmen wird. Dabei kann es sich sowohl um verschreibungspflichtige Medikamente handeln, wie auch um OTC-Präparate, welche ein Patient in Eigenverantwortung einnimmt.

Der Hauptunterschied zwischen der konkreten Verabreichung einer Medikation (MedicationAdministration) und dem MedicationStatement besteht darin, dass die Medikamentenverabreichung über vollständige Verabreichungsinformationen verfügt und auf den tatsächlichen Informationen der Person basiert, die das Medikament verabreicht hat. MedicationStatement hat im Vergleich eher den Charakter z.B. eines Medikationsplans. Es ist nicht klar, ob der Patient diese Arzneimittel tatsächlich eingenommen hat oder diese verabreicht wurden.

Canonical:
https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement, diff}}

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement, snapshot}}


---

| FHIR-Element | Erklärung |
|--------------|-----------|
| MedicationStatement.id | Must-support, jedoch optional |
| MedicationStatement.meta | Must-support, jedoch optional |
| MedicationStatement.identifier | Business-Identifier des Medikationseintrags |
| MedicationStatement.basedOn | Hintergrundinformation, wie es zu dem Medikationseintrag kam |
| MedicationStatement.partOf | Angabe, wenn der Medikatonseintrag z.B. Teil einer Prozedur ist |
| MedicationStatement.status | Angabe, ob der Medikationseintrag offen oder abgechlossen ist |
| MedicationStatement.statusReason | Begründung für den Status |
| MedicationStatement.category | Handelt es sich um einen stationören, ambulanten oder vom PatientIn berichteten Eintrag |
| MedicationStatement.medication[x] | Referenz zu Arzneimittel |
| MedicationStatement.subject | Empfänger der Medikation |
| MedicationStatement.context | Referenz zu Ereignis wie Fall oder Behandlungsepisode |
| MedicationStatement.effective[x] | Zeitpunkt oder Zeitraum |
| MedicationStatement.dateAsserted | Zeitpunkt der Feststellung des Eintrags |
| MedicationStatement.informationSource | Informationsquelle |
| MedicationStatement.derivedFrom | Referenz zu verwandten Ereignissen |
| MedicationStatement.reasonCode | Grund des Eintrags |
| MedicationStatement.reasonReference | Referenz zu weiteren Information, die ursächlich für den Eintrag sind |
| MedicationStatement.note | Notiz |
| MedicationStatement.dosage | Details über Verabreichung wie Dosis oder Zugangsweg |

---
| FHIR-Element | Logischer Datensatz |
|---|---|
| MedicationStatement.identifier | Medikation.Medikationseintrag.Identifikation |
| MedicationStatement.status | Medikation.Medikationseintrag.Status |
| MedicationStatement.medication[x] | Medikation.Medikationseintrag.Arzneimittel/Wirkstoff/Rezeptur |
| MedicationStatement.effective[x] | Medikation.Medikationseintrag.Einnahmedauer |
| MedicationStatement.dosage.text | Medikation.Medikationseintrag.Dosierung (Freitext) |
| MedicationStatement.dosage | Medikation.Medikationseintrag.Dosierung (strukturiert) |
| MedicationStatement.note | Medikation.Medikationseintrag.Hinweis |
| MedicationStatement.reasonCode | Medikation.Medikationseintrag.Behandlungsgrund |
| MedicationStatement.reasonReference | Medikation.Medikationseintrag.Behandlungsgrund |
| MedicationStatement.basedOn | Medikation.Medikationseintrag.Bezug zu Verordnung |
| MedicationStatement.partOf | Medikation.Medikationseintrag.Bezug zu Abgabe |
| MedicationStatement.dateAsserted | Medikation.Medikationseintrag.Datum des Eintrags |
| MedicationStatement.informationSource | Medikation.Medikationseintrag.Autor/Informant des Eintrags |

---

**Beispiele**

Beispiel einer MedicationStatement-Ressource, die beschreibt, dass ein Patient eine Medikation einmal alle vier Wochen einnimmt. Die Informationen zur Medikation sind in einer Medication-Ressource zu finden, auf welche referenziert wird. 

{{json:ExampleMedicationStatementCaelyx}}

<br>
MedicationStatement-Beispiel mit Offset:

{{json:ExampleMedicationStatementOffset}}

<br>
MedicationStatement-Beispiel für periodisches Intervall:

{{json:ExampleMedicationStatementPeriodischesIntervall}}

<br>

Beispiel einer MedicationStatement-Ressource abgeleitet vom OPS-Code *6-007.nm*: Das MedicationStatement enthält die Referenzen auf Patient, Prozedur und Medikation. Der OPS-Code wird über das [Modul Prozedur](https://simplifier.net/medizininformatikinitiative-modulprozeduren) abgebildet. Die Referenz auf die Procedure-Ressource erfolgt über das MedicationStatement.partOf-Element. Der Vollständigkeit halber sind neben der MedicationStatement-Ressource nachfolgend auch die referenzierten Medication- und Procedure-Ressourcen aufgeführt.

{{json:ExampleMedicationStatementIntravenousUse}}

Die aus dem vorangegangenen MedicationStatement referenzierte Medication-Ressource:

{{json:ExampleMedicationThiotepa}}

Die Procedure-Ressource, welche den OPS-Code enthält:

{{json:ExampleProcedure}}

<br>
