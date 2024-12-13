---
parent: 
topic: MedikationExtensionWirkstofftyp
subject: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstofftyp
expand: 1
---

## Extension: Wirkstofftyp

---

## {{link}}

**Beschreibung**

Für Wirkstoffe soll die Möglichkeit gegeben werden, bei der Berechnung der Dosisangaben zwischen dem genauen Wirkstoff (der ein Salz, Ester etc. sein kann) und dem reinen Wirkstoff zu unterscheiden, und anzugeben, ob die Berechnung auf dem Derivat (seltener) oder der reinen/"allgemeinen" Substanz (meist) beruht. Aus diesem Grund wurde eine Extension definiert, welche zusätzlich zur Wirkstoffcodierung angegeben werden kann. Diese Extension verweist auf ein ValueSet mit Codes für: 
* `IN` (ingredient - allgemeiner Wirkstoff), 
* `PIN` (precise ingredient - genauer Wirkstoff), 
* oder `MIN` (multiple ingredients - Kombinationscode für mehrere Wirkstoffe).

Siehe auch {{pagelink:MedikationTerminologien, text:**Terminologien**, hint:Terminologien}}

---

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstofftyp' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstofftyp'
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
Beispiel Medication-Ressource mit Liste von Wirkstoffen in `Medication.ingredient` und Klassifizierung jedes Wirkstofftyps mittels Extension:

{{json:mii-exa-medikation-medication-calcium}}

--- 