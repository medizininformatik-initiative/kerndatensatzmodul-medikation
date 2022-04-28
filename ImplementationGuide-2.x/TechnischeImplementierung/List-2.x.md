#### {{page-title}}

<p style="background-color: #ffcccc; border:1px solid grey; padding: 5px; max-width: 790px;">
Draft Status - Dieser Teil der Spezifikation war bislang nicht Teil der Ballotierung und befindet sich in Entwicklung.
</p>

Die List Ressource ist eine flache Sammlung von Ressourcen und bietet Funktionen für die Verwaltung der Sammlung. In diesem Fall dient die Ressource als Sammlung der Medikationen, die ein Patient zu einem bestimmten Zeitpunkt einnimmt, beispielsweise bei Aufnahme oder Entlassung. Die Ressource verweist dazu auf MedicationStatement Ressourcen.

Zweck und Kontext der Liste werden über `List.code` angegeben. Ein Coding wird immer auf Code `medications` aus System `http://terminology.hl7.org/CodeSystem/list-example-use-codes` gesetzt. Mit dem zweiten Coding wird der Kontext bestimmt, in dem die Medikationsliste verwaltet wird. Dabei kann es sich um Aufnahmemedikation, Entlassmedikation oder die Medikation während des stationären Aufenthaltes handeln. Für diese Kontexte besteht die Auswahl aus drei Codes aus dem System IHE XDS Fallkontext mit URI `urn:oid:1.3.6.1.4.1.19376.3.276.1.5.16`:

@```
from ValueSet 
where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/ValueSetCaseContextCodes'
for compose.include.concept select
    code,
    display
```

Je nachdem, ob es sich um eine Medikationsliste während eines stationären Aufenthaltes oder eine Aufnahme- oder Entlassmedikation handelt, wird `List.mode` unterschiedlich gesetzt. Für die Medikationsliste während des stationären Aufenthaltes wird `List.mode` = `working` gesetzt. Im Kontext von Aufnahme und Entlassung soll `List.mode` = `snapshot` sein.

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/List'
for differential.element[0].constraint select
    key,
    severity,
    human,
    expression
```

---

Canonical:
https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/List

**Differential**

{{tree:MedizininformatikInitiative-ModulMedikation/ProfileListMedikationsliste, diff}}

---

**Snapshot**

{{tree:MedizininformatikInitiative-ModulMedikation/ProfileListMedikationsliste, snapshot}}

---

{{render:ValueSetCaseContextCodes}}

---

**Beispiele**

Beispiel einer List Ressource, die eine Aufnahmemedikation beschreibt. 

{{json:ExampleMedicationList-1}}

---

Beispiel einer List Ressource, die eine Medikation während des stationären Aufenthalts beschreibt. 

{{json:ExampleMedicationList-2}}

---