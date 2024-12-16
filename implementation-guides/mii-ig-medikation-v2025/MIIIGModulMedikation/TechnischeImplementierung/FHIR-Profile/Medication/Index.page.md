---
parent: 
topic: MedikationMedication
subject: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
---

## Medication

Die Medikation, die angesetzt, geplant oder verabreicht wird. Es kann sich um ein Fertigarzneimittel oder eine Rezeptur handeln. Auch die Angabe nur des Wirkstoffes ist möglich. Mindestens ein Wirkstoff MUSS angegeben werden.

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication' 
select 
    Name: name, Status: status, Version: version, Lizenz: extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-ex-meta-license-codeable').value.coding.code, Canonical: url, Basis: baseDefinition
```

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication' 
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
    for differential.element where id.contains('BasismodulMedikation.Medikation.')
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

    ```GET [base]/Medication?_id=1234```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/Medication?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Medication?code=http://fhir.de/CodeSystem/bfarm/atc|B01AC06```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

4. Der Suchparameter "form" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Medication?form=http://standardterms.edqm.eu|10219000```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

5. Der Suchparameter "ingredient" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Medication?ingredient=Medication/mii-exa-medikation-medication-dolomo-tag```

    Anwendungshinweise: Weitere Informationen zur Suche nach "based-on" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

6. Der Suchparameter "ingredient-code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Medication?ingredient-code=http://fhir.de/CodeSystem/ask|00002```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

7. Der Suchparameter "ingredient-strength-numerator" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Medication?ingredient-strength-numerator=100|http://unitsofmeasure.org|mg```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "ingredient-strength-numerator" finden sich in der [FHIR-Basisspezifikation - Abschnitt "quantity"](https://hl7.org/fhir/search.html#quantity).

8. Der Suchparameter "ingredient-strength-denominator" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Medication?ingredient-strength-denominator=1|http://standardterms.edqm.eu|10219000```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "ingredient-strength-denominator" finden sich in der [FHIR-Basisspezifikation - Abschnitt "quantity"](https://hl7.org/fhir/search.html#quantity).

9. Der Suchparameter "ingredient-strength" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Medication?ingredient-strength=100|http://unitsofmeasure.org|mg$1|http://standardterms.edqm.eu|10219000```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "ingredient-strength" finden sich in der [FHIR-Basisspezifikation - Abschnitt "composite"](http://hl7.org/fhir/search.html#composite).
---

**Beispiele**

Beispiel einer Medication-Ressource für ein Fertigarzneimittel mit Angabe einer Pharmazentralnummer, Darreichungsform, Wirkstoff und Wirkstärke:

{{json:mii-exa-medikation-medication-ass-100}}
<br>

---

Beispiel einer Medication-Ressource für eine Infusionslösung mit Angabe der Darreichungsform, Wirkstoff und Wirkstärke, sowie weitere Bestandteile in Form einer Referenz auf eine eigene Medication-Ressource für die Glucoselösung. Medication.code enthält in diesem Fall nur das text-Element:

{{json:mii-exa-medikation-medication-rezeptur}}
<br>

---

Die im vorrangegangenen Beispiel referenzierte Medication-Ressource:

{{json:mii-exa-medikation-medication-glucoseloesung}}
<br>

---

Die folgenden drei Ressourcen bilden zusammen ein Beispiel für die Darstellung von Kombipackungen. Bei dem Beispiel handelt es sich um eine Arzneimittel dessen Packung zwei unterschiedliche pharmazeutische Produkte enthält. Die erste Instanz der Medication Ressource enthält den PZN Code für das Produkt. In `Medication.amount` steht die vollständige Anzahl der in der Packung enthaltenen Tabletten. In `Medication.ingredient.itemReference` wird auf die zwei separate Medication Instanzen referenziert, die jeweils die in der Packung enthaltenen pharmazeutischen Produkte beschreiben mit Anzahl der Tabletten, Wirkstoffen und deren Wirkstärke.

{{json:mii-exa-medikation-medication-dolomo}}

Medication Ressource des ersten referenzierten pharmazeutischen Produktes.

{{json:mii-exa-medikation-medication-dolomo-tag}}

Medication Ressource des zweiten referenzierten pharmazeutischen Produktes.

{{json:mii-exa-medikation-medication-dolomo-nacht}}

<br>

---
