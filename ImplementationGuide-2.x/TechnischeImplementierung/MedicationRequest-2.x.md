## {{page-title}}

Die MedicationRequest Ressource beschreibt einen Auftrag zur Lieferung des Medikaments oder die Anordnung und die Anweisungen zur Verabreichung des Medikaments an einen Patienten.

---

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest'
select
    name,
    url
```

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest, diff}}

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest, snapshot}}

---

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/LogicalModel/BasismodulMedikation'
    for differential.element where id.contains('BasismodulMedikation.Medikationsverordnung') 
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

    ```GET [base]/MedicationRequest?_id=1234```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/MedicationRequest?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationRequest?status=active```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

4. Der Suchparameter "category" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationRequest?category=http://terminology.hl7.org/CodeSystem/medicationrequest-category|inpatient```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "category" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

5. Der Suchparameter "medication" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationRequest?medication=Medication/mii-exa-medikation-medication-caelyx```

    Anwendungshinweise: Weitere Informationen zur Suche nach "medication" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

6. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationRequest?code=http://fhir.de/CodeSystem/ifa/pzn|02532793```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

7. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationRequest?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

8. Der Suchparameter "context" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationRequest?context=Encounter/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "context" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

9. Der Suchparameter "authoredOn" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationRequest?authoredOn=2021-12-21```

    Anwendungshinweise: Weitere Informationen zur Suche nach "authoredOn" finden sich in der [FHIR-Basisspezifikation - Abschnitt "date"](http://hl7.org/fhir/R4/search.html#date).

---

**Beispiele**

Beispiel einer Medikamentenverordnung. 

{{json:ExampleMedicationRequestCaelyx}}

---
