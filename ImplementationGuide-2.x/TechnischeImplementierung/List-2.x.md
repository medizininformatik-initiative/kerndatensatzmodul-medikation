#### {{page-title}}

<p style="background-color: #ffcccc; border:1px solid grey; padding: 5px; max-width: 790px;">
Draft Status - Dieser Teil der Spezifikation war bislang nicht Teil der Ballotierung und befindet sich in Entwicklung.
</p>

Die List Ressource ist eine flache Sammlung von Ressourcen und bietet Funktionen für die Verwaltung der Sammlung. In diesem Fall dient die Ressource als Sammlung der Medikationen, die ein Patient zu einem bestimmten Zeitpunkt einnimmt, beispielsweise bei Aufnahme oder Entlassung. Die Ressource verweist dazu auf MedicationStatement Ressourcen.

Zweck und Kontext der Liste werden über `List.code` angegeben. Ein Coding wird immer auf Code `medications` aus System `http://terminology.hl7.org/CodeSystem/list-example-use-codes` gesetzt. Mit dem zweiten Coding wird der Kontext bestimmt, in dem die Medikationsliste verwaltet wird. Dabei kann es sich um Aufnahmemedikation, Entlassmedikation oder die Medikation während des stationären Aufenthaltes handeln. Für diese Kontexte besteht die Auswahl aus drei Codes aus dem System IHE XDS Fallkontext mit URI `urn:oid:1.3.6.1.4.1.19376.3.276.1.5.16`:

@```
from ValueSet 
where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/fallkontext'
for compose.include.concept select
    code,
    display
```

Je nachdem, ob es sich um eine Medikationsliste während eines stationären Aufenthaltes oder eine Aufnahme- oder Entlassmedikation handelt, wird `List.mode` unterschiedlich gesetzt. Für die Medikationsliste während des stationären Aufenthaltes wird `List.mode` = `working` gesetzt. Im Kontext von Aufnahme und Entlassung soll `List.mode` = `snapshot` sein.

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste'
for differential.element[0].constraint select
    key,
    severity,
    human,
    expression
```

---

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste'
select
    name,
    url
```

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste, diff}}

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste, snapshot}}

---

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/LogicalModel/BasismodulMedikation'
    for differential.element where id.contains('BasismodulMedikation.Medikationsliste') 
    select 
        FHIR: mapping[0].map,
        Datensatz: path, 
        Erklaerung: definition 
```

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Medikation relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele: 

    ```GET [base]/List?_id=1234```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/List?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/List?status=current```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

4. Der Suchparameter "mode" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/List?mode=snapshot```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "category" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

5. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/List?code=urn:oid:1.3.6.1.4.1.19376.3.276.1.5.16|E210```

    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

6. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/List?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

8. Der Suchparameter "encounter" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/List?context=Encounter/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

---

**Beispiele**

Beispiel einer List Ressource, die eine Aufnahmemedikation beschreibt. 

{{json:mii-exa-medikation-list-admission}}


<details>
  <summary>MedicationStatement-Ressourcen, die in der List-Ressource referenziert werden <strong>hier klicken</strong>:</summary>
  
  {{json:mii-exa-medikation-medication-statement-concor}}

  ---

  {{json:mii-exa-medikation-medication-statement-hct}}

  ---

  {{json:mii-exa-medikation-medication-statement-ibuprofen}}

  ---

  {{json:mii-exa-medikation-medication-statement-zopiclon}}


</details>

---

Beispiel einer List Ressource, die eine Medikation während des stationären Aufenthalts beschreibt. 

{{json:ExampleMedicationList-2}}

---
