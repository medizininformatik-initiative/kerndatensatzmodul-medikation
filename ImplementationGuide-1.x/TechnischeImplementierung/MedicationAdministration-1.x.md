## MedicationAdministration

Diese MedicationAdministration-Ressource wird verwendet, um Medikamentenverabreichungen, einschließlich der Selbstverabreichung von oralen Medikamenten, Injektionen, intravenösen Gaben usw. zu erfassen.

Canonical:
https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration

**Differential**

{{tree:MedizininformatikInitiative-ModulMedikation/ProfileMedicationAdministrationMedikation, diff}}

<br>

---

**Snapshot**

{{tree:MedizininformatikInitiative-ModulMedikation/ProfileMedicationAdministrationMedikation, snapshot}}


---

| FHIR-Element | Erklärung |
|--------------|-----------|
| MedicationAdministration.id | Must-support, jedoch optional | 
| MedicationAdministration.meta | Must-support, jedoch optional |
| MedicationAdministration.identifier | Business-Identifier der Medikationsverabreichung |
| MedicationAdministration.instantiates | Externes Protokoll oder Guideline, welche befolgt werden |
| MedicationAdministration.partOf | Referenz zu Ereignis in dessen Rahmen die Verabreichung erfolgt |
| MedicationAdministration.status | Status der Verabreichung, bspw. im Gange oder abgeschlossen |
| MedicationAdministration.statusReason | Angabe, warum Medikation nicht verabreicht wurde. |
| MedicationAdministration.category | Indikator für Verabreichung im stationären oder ambulanten Bereich |
| MedicationAdministration.medication[x]| Referenz auf das zu verabreichende Arzneimittel |
| MedicationAdministration.subject | Empfänger der Medikation |
| MedicationAdministration.context | Bezug zu Ereignis in welchem die Verabreichung erfolgt |
| MedicationAdministration.supportingInformation | Weitere Informationen zu der Verabreichung |
| MedicationAdministration.effective[x] | Zeitpunkt oder Periode der Verabreichung |
| MedicationAdministration.performer | Durchführende Person |
| MedicationAdministration.reasonCode | Grund für die Verabreichung |
| MedicationAdministration.reasonReference | Referenz zu FHIR-Ressource als Grund hinter der Verabreichung |
| MedicationAdministration.request | Referenz zu Anforderung |
| MedicationAdministration.device | Gerät, welches zur Verabreichung genutzt wird |
| MedicationAdministration.note | Notiz zur Verabreichung |
| MedicationAdministration.dosage | Angaben, wie die Medikation verabreicht wurde |
| MedicationAdministration.eventHistory | Referenz zu Ereignissen, die für die Verabreichung von Interesse sein können |

---

| FHIR-Element | Logischer Datensatz |
|---|---|
| MedicationAdministration.identifier | Medikation.Medikationseintrag.Identifikation |
| MedicationAdministration.status | Medikation.Medikationseintrag.Status |
| MedicationAdministration.medication[x] | Medikation.Medikationseintrag.Arzneimittel/Wirkstoff/Rezeptur |
| MedicationAdministration.effective[x] | Medikation.Medikationseintrag.Einnahmedauer |
| MedicationAdministration.dosage.text | Medikation.Medikationseintrag.Dosierung (Freitext) |
| MedicationAdministration.dosage | Medikation.Medikationseintrag.Dosierung (strukturiert) |
| MedicationAdministration.note | Medikation.Medikationseintrag.Hinweis |
| MedicationAdministration.reasonCode | Medikation.Medikationseintrag.Behandlungsgrund |
| MedicationAdministration.reasonReference | Medikation.Medikationseintrag.Behandlungsgrund |
| MedicationAdmnistration.request | Medikation.Medikationseintrag.Bezug zu Verordnung |
| MedicationAdministration.dateAsserted | Medikation.Medikationseintrag.Datum des Eintrags |

---
**Beispiele**

Beispiel einer MedicationAdministration-Ressource mit Angaben zum Applikationsweg und der Dosierung

{{json:ExampleMedicationAdministration}}
