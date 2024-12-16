---
parent: 
topic: MedikationExtensionWirkstoffrelation
subject: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation
expand: 1
---

## Extension: Wirkstoffrelation

---

## {{link}}

**Beschreibung**

Die Extension Wirkstoffrelation erlaubt es, Referenzen zwischen den Wirkstoffen abzubilden. Somit KANN ein Wirkstoff, der als "genauer" Wirkstoff klassifiziert ist, eindeutig einem "allgemeinen" Wirkstoff zugeordnet werden. Dies erlaubt bspw. die Umrechnung, dass "10mg Bisoprolol hemifumarat" "8,49mg Bisoprolol" entsprechen.

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstofftyp' 
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

**Beispiele**

### Beispiel
Beispiel Medication-Ressource mit Liste von Wirkstoffen in `Medication.ingredient`. Klassifizierung jedes Wirkstofftyps mittels Wirkstofftyp-Extension. Zusätzlich Wirkstoffrelation-Extension zur Darstellung, dass eine Brausetablette 2945.15 mg Calcium lactate gluconate (id:`ing_1`, Typ:`PIN`) und 300 mg Calcium carbonate (id:`ing_2`, Typ:`PIN`) enthält entsprechend 500 mg Calcium (id:`ing_3`, Typ:`IN`):

{{json:mii-exa-medikation-medication-calcium}}

--- 