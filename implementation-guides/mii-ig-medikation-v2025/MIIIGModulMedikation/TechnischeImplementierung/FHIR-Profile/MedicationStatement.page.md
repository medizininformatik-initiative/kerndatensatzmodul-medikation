---
parent: 
topic: MedikationMedicationStatement
subject: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
---

## MedicationStatement

Das MedicationStatement dokumentiert die Verordnung eines Arzneimittels oder den Konsum durch einen Patienten. MedicationStatement kann anzeigen, dass der Patient ein Medikament zur Zeit einnimmt, in der Vergangenheit genommen hat oder in Zukunft einnehmen wird. Dabei kann es sich sowohl um verschreibungspflichtige Medikamente handeln, wie auch um OTC-Präparate, welche ein Patient in Eigenverantwortung einnimmt.

Der Hauptunterschied zwischen der konkreten Verabreichung einer Medikation (MedicationAdministration) und dem MedicationStatement besteht darin, dass die Medikamentenverabreichung über vollständige Verabreichungsinformationen verfügt und auf den tatsächlichen Informationen der Person basiert, die das Medikament verabreicht hat. MedicationStatement hat im Vergleich eher den Charakter z.B. eines Medikationsplans. Es ist nicht klar, ob der Patient diese Arzneimittel tatsächlich eingenommen hat oder diese verabreicht wurden.

---

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement' 
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
    for differential.element where id.contains('BasismodulMedikation.Medikationseintrag') 
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

    ```GET [base]/MedicationStatement?_id=1234```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/MedicationStatement?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?status=active```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

4. Der Suchparameter "category" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?category=urn:oid:1.3.6.1.4.1.19376.3.276.1.5.16|E210```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "category" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

5. Der Suchparameter "medication" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?medication=Medication/mii-exa-medikation-medication-caelyx```

    Anwendungshinweise: Weitere Informationen zur Suche nach "medication" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

6. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?code=http://fhir.de/CodeSystem/ifa/pzn|02532793```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

7. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

8. Der Suchparameter "context" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?context=Encounter/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "context" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

9. Der Suchparameter "effective" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?effective=2022-04-07```

    Anwendungshinweise: Weitere Informationen zur Suche nach "effective" finden sich in der [FHIR-Basisspezifikation - Abschnitt "date"](http://hl7.org/fhir/R4/search.html#date).

10. Der Suchparameter "reason-reference" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?reason-reference=Observation/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "reason-reference" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

11. Der Suchparameter "dosage-site" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?dosage-site=http://snomed.info/sct|9454009```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "dosage-site" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

12. Der Suchparameter "dosage-route" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?dosage-route=http://standardterms.edqm.eu|20045000```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "dosage-route" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

13. Der Suchparameter "doserange-low" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?doserange-low=2400|http://unitsofmeasure.org|mg```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "doserange-low" finden sich in der [FHIR-Basisspezifikation - Abschnitt "quantity"](https://hl7.org/fhir/search.html#quantity).

14. Der Suchparameter "doserange-high" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?doserange-high=2600|http://unitsofmeasure.org|mg```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "doserange-high" finden sich in der [FHIR-Basisspezifikation - Abschnitt "quantity"](https://hl7.org/fhir/search.html#quantity).

15. Der Suchparameter "doserange" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?doserange=2400|http://unitsofmeasure.org|mg$2600|http://unitsofmeasure.org|mg```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "doserange" finden sich in der [FHIR-Basisspezifikation - Abschnitt "composite"](http://hl7.org/fhir/search.html#composite).

16. Der Suchparameter "dose-quantity" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?dose-quantity=2400|http://unitsofmeasure.org|mg```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "dose-quantity" finden sich in der [FHIR-Basisspezifikation - Abschnitt "quantity"](https://hl7.org/fhir/search.html#quantity).

17. Der Suchparameter "rateratio-numerator" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?rateratio-numerator=250|http://unitsofmeasure.org|mL```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "rateratio-numerator" finden sich in der [FHIR-Basisspezifikation - Abschnitt "quantity"](https://hl7.org/fhir/search.html#quantity).

18. Der Suchparameter "rateratio-denominator" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?rateratio-denominator=1|http://unitsofmeasure.org|h```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "rateratio-denominator" finden sich in der [FHIR-Basisspezifikation - Abschnitt "quantity"](https://hl7.org/fhir/search.html#quantity).

19. Der Suchparameter "rateratio" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?rateratio=250|http://unitsofmeasure.org|mL$1|http://unitsofmeasure.org|h```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "rateratio" finden sich in der [FHIR-Basisspezifikation - Abschnitt "composite"](http://hl7.org/fhir/search.html#composite).

20. Der Suchparameter "raterange-low" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?raterange-low=2|http://unitsofmeasure.org|L/h```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "raterange-low" finden sich in der [FHIR-Basisspezifikation - Abschnitt "quantity"](https://hl7.org/fhir/search.html#quantity).

21. Der Suchparameter "raterange-high" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?raterange-high=5|http://unitsofmeasure.org|L/h```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "raterange-high" finden sich in der [FHIR-Basisspezifikation - Abschnitt "quantity"](https://hl7.org/fhir/search.html#quantity).

22. Der Suchparameter "raterange" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?raterange=2|http://unitsofmeasure.org|L/h$5|http://unitsofmeasure.org|L/h```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "raterange" finden sich in der [FHIR-Basisspezifikation - Abschnitt "composite"](http://hl7.org/fhir/search.html#composite).

23. Der Suchparameter "rate-quantity" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?rate-quantity=2|http://unitsofmeasure.org|L/h```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "rate-quantity" finden sich in der [FHIR-Basisspezifikation - Abschnitt "quantity"](https://hl7.org/fhir/search.html#quantity).

24. Der Suchparameter "part-of" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?part-of=Procedure/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "reason-reference" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

---

**Beispiele**

Beispiel einer MedicationStatement-Ressource, die beschreibt, dass ein Patient eine Medikation einmal alle vier Wochen einnimmt. Die Informationen zur Medikation sind in einer Medication-Ressource zu finden, auf welche referenziert wird. 

{{json:mii-exa-medikation-medication-statement-caelyx}}

<br>

---

MedicationStatement-Beispiel mit Offset:

{{json:mii-exa-medikation-medication-statement-offset}}

<br>

---

MedicationStatement-Beispiel für periodisches Intervall:

{{json:mii-exa-medikation-medication-statement-periodisches-intervall}}

<br>

---

Beispiel einer MedicationStatement-Ressource abgeleitet vom OPS-Code *6-007.nm*: Das MedicationStatement enthält die Referenzen auf Patient, Prozedur und Medikation. Der OPS-Code wird über das [Modul Prozedur](https://simplifier.net/medizininformatikinitiative-modulprozeduren) abgebildet. Die Referenz auf die Procedure-Ressource erfolgt über das MedicationStatement.partOf-Element. Der Vollständigkeit halber sind neben der MedicationStatement-Ressource nachfolgend auch die referenzierten Medication- und Procedure-Ressourcen aufgeführt.

{{json:mii-exa-medikation-medication-statement-intravenous-use}}

Die aus dem vorangegangenen MedicationStatement referenzierte Medication-Ressource:

{{json:mii-exa-medikation-medication-thiotepa}}

Die Procedure-Ressource, welche den OPS-Code enthält:

{{json:mii-exa-medikation-procedure-thiotepa}}

<br>

---
