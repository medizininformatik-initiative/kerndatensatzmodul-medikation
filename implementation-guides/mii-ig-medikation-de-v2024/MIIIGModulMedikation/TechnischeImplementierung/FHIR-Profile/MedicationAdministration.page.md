---
parent: 
topic: MedikationMedicationAdministration
subject: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
---

## MedicationAdministration

Diese MedicationAdministration-Ressource wird verwendet, um Medikamentenverabreichungen, einschließlich der Selbstverabreichung von oralen Medikamenten, Injektionen, intravenösen Gaben usw. zu erfassen.

---

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration' 
select 
    Name: name, Status: status, Version: version, Canonical: url, Basis: baseDefinition
```

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration' 
        for 
            differential.element 
            where 
                mustSupport = true 
            select Feldname: id, Kurzbeschreibung: short, Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

---

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/LogicalModel/BasismodulMedikation'
    for differential.element where id.contains('BasismodulMedikation.Medikationsverabreichung') 
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

    ```GET [base]/MedicationAdministration?_id=1234```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/MedicationAdministration?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationAdministration?code=http://fhir.de/CodeSystem/bfarm/atc|B01AC06```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

4. Der Suchparameter "medication" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationAdministration?medication=Medication/mii-exa-medikation-medication-dolomo-tag```

    Anwendungshinweise: Weitere Informationen zur Suche nach "medication" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

5. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationAdministration?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

6. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationAdministration?status=completed```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

7. Der Suchparameter "context" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationAdministration?context=Encounter/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "context" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

8. Der Suchparameter "effective-time" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationAdministration?effective-time=2022-04-07```

    Anwendungshinweise: Weitere Informationen zur Suche nach "authored" finden sich in der [FHIR-Basisspezifikation - Abschnitt "date"](http://hl7.org/fhir/R4/search.html#date).

9. Der Suchparameter "reason-reference" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationAdministration?reason-reference=Observation/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "reason-reference" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

10. Der Suchparameter "dosage-site" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationAdministration?dosage-site=http://snomed.info/sct|9454009```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "dosage-site" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

11. Der Suchparameter "dosage-route" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationAdministration?dosage-route=http://standardterms.edqm.eu|20045000```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "dosage-route" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

12. Der Suchparameter "ratequantity" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationAdministration?ratequantity=100|http://unitsofmeasure.org|mg```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "ratequantity" finden sich in der [FHIR-Basisspezifikation - Abschnitt "quantity"](https://hl7.org/fhir/search.html#quantity).

13. Der Suchparameter "rateratio-numerator" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationAdministration?rateratio-numerator=250|http://unitsofmeasure.org|mL```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "rateratio-numerator" finden sich in der [FHIR-Basisspezifikation - Abschnitt "quantity"](https://hl7.org/fhir/search.html#quantity).

14. Der Suchparameter "rateratio-numerator" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationAdministration?rateratio-denominator=1|http://unitsofmeasure.org|h```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "rateratio-denominator" finden sich in der [FHIR-Basisspezifikation - Abschnitt "quantity"](https://hl7.org/fhir/search.html#quantity).

15. Der Suchparameter "rateratio" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationAdministration?rateratio=250|http://unitsofmeasure.org|mL$1|http://unitsofmeasure.org|h```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "rateratio" finden sich in der [FHIR-Basisspezifikation - Abschnitt "composite"](http://hl7.org/fhir/search.html#composite).

---

**Beispiele**

Beispiel einer MedicationAdministration-Ressource mit Angaben zum Applikationsweg und der Dosierung

{{json:mii-exa-medikation-medication-administration}}

---
