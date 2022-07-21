## Medication

Die Medikation, die angesetzt, geplant oder verabreicht wird. Es kann sich um ein Fertigarzneimittel oder eine Rezeptur handeln. Auch die Angabe nur des Wirkstoffes ist möglich. Die Angabe mindestens eines Wirkstoffes wird verlangt.

Canonical:
https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication

**Differential**


{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication, diff}}

<br>

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication, snapshot}}


---
| FHIR-Element | Erklärung |
|--------------|-----------|
| Medication.id | Must-support, jedoch optional | 
| Medication.meta | Must-support, jedoch optional |
| Medication.identifier | Business-Identifier der Medikation |
| Medication.code | Der Code aus einem externen Codesystem für ein Arzneimittelprodukt oder eine Wirkstoffklasse. |
| Medication.status | Indikator, ob die Medikation aktuell angewendet wird oder verschrieben werden kann. |
| Medication.manufacturer | Hersteller |
| Medication.form | Darreichungsform |
| Medication.amount | Wirkstärke gemäß Handelsname |
| Medication.ingredient | Wirkstoff |
| Medication.batch | Informationen zum Arzneimittel wie Ablaufdatum |

---
| FHIR-Element | Logischer Datensatz |
|---|---|
| Medication | Medikation.Medikationseintrag.Arzneimittel/Wirkstoff/Rezeptur |
| Medication.code | Medikation.Medikationseintrag.Arzneimittel/Wirkstoff/Rezeptur.Arzneimittelprodukt |
| Medication.code.coding:Pharmazentralnummer.display | Medikation.Medikationseintrag.Arzneimittel/Wirkstoff/Rezeptur.Arzneimittelprodukt.Arzneimittelname |
| Medication.code.coding:Pharmazentralnummer.code | Medikation.Medikationseintrag.Arzneimittel/Wirkstoff/Rezeptur.Arzneimittelprodukt.Arzneimittel-Code |
| Medication.code.coding:atcClass.display | Medikation.Medikationseintrag.Arzneimittel/Wirkstoff/Rezeptur.Arzneimittelprodukt.Arzneimittelname |
| Medication.code.coding:atcClass.code | Medikation.Medikationseintrag.Arzneimittel/Wirkstoff/Rezeptur.Arzneimittelprodukt.Arzneimittel-Code |
| Medication.amount | Medikation.Medikationseintrag.Arzneimittel/Wirkstoff/Rezeptur.Arzneimittelprodukt.Arzneimittelwirkstärke |
| Medication.code.text | Medikation.Medikationseintrag.Arzneimittel/Wirkstoff/Rezeptur.Rezeptur.Freitextzeile |
| Medication.ingredient | Medikation.Medikationseintrag.Arzneimittel/Wirkstoff/Rezeptur.Wirkstoff |
| Medication.ingredient.strength | Medikation.Medikationseintrag.Arzneimittel/Wirkstoff/Rezeptur.Wirkstoff.Menge/Stärke |
| Medication.form | Medikation.Medikationseintrag.Arzneimittel/Wirkstoff/Rezeptur.Darreichungsform |



---

**Beispiele**

Beispiel einer Medication-Ressource für ein Fertigarzneimittel mit Angabe einer Pharmazentralnummer, Darreichungsform, Wirkstoff und Wirkstärke:

{{json:ExampleMedicationASS100}}
<br>
Beispiel einer Medication-Ressource für eine Infusionslösung mit Angabe der Darreichungsform, Wirkstoff und Wirkstärke, sowie weitere Bestandteile in Form einer Referenz auf eine eigene Medication-Ressource für die Glucoselösung. Medication.code enthält in diesem Fall nur das text-Element:

{{json:ExampleMedicationRezeptur}}
<br>
Die im vorrangegangenen Beispiel referenzierte Medication-Ressource:

{{json:ExampleMedicationGlucoseloesung}}
<br>

Die folgenden drei Ressourcen bilden zusammen ein Beispiel für die Darstellung von Kombipackungen. Bei dem Beispiel handelt es sich um eine Arzneimittel dessen Packung zwei unterschiedliche pharmazeutische Produkte enthält. Die erste Instanz der Medication Ressource enthält den PZN Code für das Produkt. In `Medication.amount` steht die vollständige Anzahl der in der Packung enthaltenen Tabletten. In `Medication.ingredient.itemReference` wird auf die zwei separate Medication Instanzen referenziert, die jeweils die in der Packung enthaltenen pharmazeutischen Produkte beschreiben mit Anzahl der Tabletten, Wirkstoffen und deren Wirkstärke.

{{json:examplemedicationdolomo}}

Medication Ressource des ersten referenzierten pharmazeutischen Produktes.

{{json:examplemedicationdolomotag}}

Medication Ressource des zweiten referenzierten pharmazeutischen Produktes.

{{json:examplemedicationdolomonacht}}

<br>
