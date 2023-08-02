## Beschreibung Modul

{{render:ig/bilder/7_Abbilding_Medikation_de.jpg}}

Das Modul MEDIKATION enthält Datenelemente zur Dokumentation von Arzneimittelverordnungen und -verabreichungen sowie Medikationsplänen. Es ist Bestandteil der Basismodule des Kerndatensatzes der Medizininformatik-Initiative.

Im Implementationsguide werden zwei unterschiedliche Formen von Modellen verwendet:

 1. Im oberen Teil des Implementationsguide werden zur Beschreibung der Module logische Informationsmodelle verwendet, um die Anwendungssicht darzustellen. Diese Modelle werden mit dem Werkzeug ART-DECOR entwickelt und können hier zusammenhängend eingesehen werden (https://art-decor.org/art-decor/decor-datasets--mide-).
 2. Im unteren Teil des Implementationsguide werden zur Darstellung der technischen Implementation des Moduls in FHIR FHIR-Modelle verwendet, die über Simplifier dargestellt werden (https://simplifier.net/MedizininformatikInitiative-ModulMedikation).

Beide Formen der Modelle sind entsprechend ihrer jeweiligen Zielsetzung kongruent aufeinander abgestimmt: Mapping-Tabellen zwischen den Bezeichnern können über die Tabellendarstellung in Art-Decor dynamisch erzeugt werden (Spalten Name und Comment: FHIR-Mapping). In der hier vorliegenden Version des Moduls wurden die gültigen Nameing-Conventions verwendet, bei denen die Bezeichner im logischen Informationsmodell in deutscher Sprache und die Feldnamen der FHIR-Implementierung in englischer Sprache angegeben sind. In folgenden Versionen des Moduls werden Bezeichner nach neuen Nameing-Conventions vereinheitlicht.

**Informationsmodell Modul MEDIKATION mit Übersicht der Teilmodule:** 

{{render:ig-bilder-IG-Medikation-KDS-Medikation-Modul-AD-2x}}

Es lassen sich u.a. folgende Typen der Dokumentation von Arzneimittelprozessen unterscheiden:

1. Medikation im Krankenhaus (hauptsächlich stationär/teilstationär)
2. Aufnahme- und Entlassmedikation
3. Ambulante Medikation
4. Selbstmedikation (OTC)
5. Medikation im Rahmen klinischer Studien
6. Medikationsdokumentation für den bundeseinheitlichen Medikationsplan

Angaben zur Medikation können von der bloßen Dokumentation der Gabe eines Präparats in einem Behandlungsfall bis hin zu einer detaillierten strukturierten Erfassung von Einzelgaben mit Codierung von Wirkstoff, Darreichungsform, Applikationsweg und Dosis nach international etablierten Standards reichen.

Es stehen entsprechend ihres Anwendungsbereiches fünf Teilmodule für die Dokumentation der Medikation zur Verfügung: 

1. Medikation ([Medication](http://hl7.org/fhir/R4/medication.html)) beschreibt eine einzelne Medikation mit Wirkstoff, Verabreichungsform, Wirkstoffstärke etc. 
1. Medikationseintrag ([MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html)) beschreibt von der Verordnung oder Verabreichung unabhängige Medikationsdokumentation 
4. Medikationsliste ([List](http://hl7.org/fhir/R4/list.html)) erlaubt es mehrere Medikationseinträge (MedicationStatement) zu einer zusammengehörigen Liste zusammenzufassen 
2. Medikationsverordnung ([MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html)) beschreibt die Verordnung einer Medikation durch medizinisches Personal 
3. Medikationsverabreichung ([MedicationAdministration](http://hl7.org/fhir/R4/medicationadministration.html)) beschreibt ein aktuelles Verabreichungereignis einer Medikation durch medizinisches Personal.

### Medikation

**Informationsmodell Medikation:** 

{{render:ig-bilder-IG-Medikation-KDS-Medikation-2x}}


#### Angabe der Einheit "Packung"

Für Medikationsangaben, die sich nachweislich über die PZN auf ganze Packungen beziehen, wird die Einheit für die Instanz von "Medication" wie folgt angegeben:

``` json
"amount": {
        "numerator": {
            "value": 27,
            "unit": "Tablet",
            "system": "http://standardterms.edqm.eu",
            "code": "10219000"
        },
        "denominator": {
            "value": 1,
            "unit": "Package",
            "system": "http://unitsofmeasure.org",
            "code": "1"
        }
    },
```

#### Kombinationspackungen

**Kombinationspackungen (nach Anforderung der KBV)**

{{render:ig-bilder-IG-Medikation-KDS-Kombinationspackungen}}

Kombinationspackungen können auf einfache Weise durch eine hierarchische Schachtelung der Medication über eine Verknüpfung ausgehend von Item.reference auf andere Medication-Instanzen dargestellt werden. Damit würde die „obere“ Medication-Instanz als Packungshierarchie als Container der eigentlichen Medication dienen. Sie enthält auch die entsprechende PZN der Kombinationspackung. Die eigentliche Medikation („Untermedikation") würde als vollständige Medication-Instanzen abgebildet werden (jeweils ohne PZN, vollständige Medikationsdaten mit ASK und ggf. ATC etc).


### Medikationseintrag

**Informationsmodell Medikationseintrag:** 

{{render:ig-bilder-IG-Medikation-KDS-Medikationseintrag-2x}}

Zur Dokumentation von der Verordnung oder Verabreichung unabhängiger Medikationsereignisse und -dokumentation z. B. in Medikationsplänen oder bei der Angabe von Medikationen durch den Patienten selber. 

Eine Medikationsverabreichung ist von einem Medikationseintrag durch die vollständige(re) Informationen über die Verabreichung unterschieden, die auf den tatsächlichen Verabreichungsinformationen basiert. Ein Medikationseintrag ist damit in der Regel weniger spezifisch als eine Medikationsverabreichung. Für den Medikationseintrag ist nicht vorgeschrieben zu dokumentieren, wann genau das Medikament verabreicht wurde, sondern nur dass ein Bericht über die Einnahme dieses Medikaments vorliegt, wobei Informationen zu Zeit, Menge oder Rate oder sogar das Medikamentenprodukt fehlen, unvollständig oder weniger präzise sein können. Die Angaben zur Medikamenteneinnahme können aus dem Gedächtnis des Patienten, aus einem Rezept oder aus einer Medikamentenliste stammen, die der Patient, der Arzt oder eine andere am Prozess beteiligte Personen führen nach [FHIR R4 MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html).

Daten zur Entlass- und ambulante Medikation (Medikationseintrag) stehen zukünftig über Angaben im Medikationsplans zur Verfügung. Für Selbstmedikation (Medikationseintrag) lässt sich derzeit keine patientenbezogene Dokumentation absehen (bei Eigenangabe auch im Medikationsplan enthalten, langfristig über Patientenportale denkbar). Studienmedikation (Medikationsverabreichung) wird in Electronic-Data-Capture-Systemen häufig strukturiert, aber ohne semantische Hinterlegung erfasst (bis auf die Kodierung der Nebenwirkungen in MedDRA als verpflichtende Komponente der Pharmakovigilanz-Meldekette). Einschränkungen können sich hier ggf. durch die Verblindung von Studienmedikamenten ergeben.
Zu einer Medikation sollte als Mindestumfang der Wirkstoff abrufbar sein.
In einer weiteren Ausbaustufe sollten darüber hinaus folgende Datenelemente verfügbar gemacht werden (abhängig von den Ausgangsdaten):

* Handelsnamen der Präparate
* Dosis mit Mengeneinheit
* Dosierungsschema
* Darreichungsform
* Applikationsort und -weg

Die Datensätze im Modul sind so strukturiert, dass die Information entsprechend den vorhandenen Ausgangsdaten mit unterschiedlichem Detaillierungsgrad angegeben werden kann (zum Beispiel nur Angabe des Wirkstoffes vs. alle Angaben zum Präparat inklusive Wirkstoffe oder nur Beschreibung der Dosierung vs. strukturierte Angaben zur Dosierung).

### Medikationsplan

Zur Erfassung von Medikationsplänen besteht die Möglichkeit mehrere Medikationseinträge in einer Liste zusammenzufassen. 

**Informationsmodell Modul MEDIKATION Medikationsliste:** 

{{render:ig-bilder-IG-Medikation-KDS-Liste}}

#### Aufnahme- und Entlassmedikation

Die Art eines Medikationseintrages kann durch folgende Codes weiter spezifiziert werden. Die Flags werden jeweils an die Medikationseinträge verknüpft und an eine zusammenfassende Liste, (s. u.). 

* Aufnahmemedikation    `IHE Deutschland Fallkontext|E210 "stationäre Aufnahme"`
* Entlassmedikation     `IHE Deutschland Fallkontext|E230 "stationäre Entlassung"`
* Stationäre Medikation `IHE Deutschland Fallkontext|E200 "stationärer Aufenthalt"`


### Medikationsverordnung (Arzneimittelanforderung)
Zur Dokumentation einer Medikationsverordnung durch medizinisches Personal.

**Abbildung Modul MEDIKATION Medikationsverordnung:** 

{{render:ig-bilder-IG-Medikation-KDS-Medikationsverordnung-2x}}

#### Änderung der Dosis bei Medikamenteneintrag und -verordnung

Zur Abbildung von Dosisänderungen während der Behandlung muss jeweils eine neue Instanz von Medikationseintrag bzw. -verordnung mit der veränderten Dosierung angelegt werden. Die angegebenen Behandlungszeiträume sollten dann aneinander anschließen. Bei Medikationsverordnung kann zusätzlich über MedicationRequest.priorPrescription auf die vorhergehende Verordnung verlinkt werden.

### Medikationsverabreichung

**Abbildung Modul MEDIKATION Medikationsverabreichung:**

{{render:ig-bilder-IG-Medikation-KDS-Medikationsverabreichung-2x}}

Die Medikationsverabreichung wird zur Dokumentation einer Einzelverabreichung einer Medikation auf Ereignisniveau verwendet, bei dem ein Patient ein Medikament einnimmt oder es ihm auf andere Weise verabreicht wird. Beispielhaft seien hier die Einnahme einer Tablette oder eine langlaufende Infusion genannt. Die Medikationsverabreichung ist in jedem Fall mit einem spezifischen Patienten verknüpft und kann darüber hinaus als Ereignis mit einer spezifischen Behandlungsepisode (Fall) und der zugrunde liegenden Medikationsverordnung verknüpft sein.
Diese Ressource deckt die Verabreichung aller Medikamente (ausgenommen Impfstoffe) ab. Sie wird in erster Linie in der stationären Versorgung verwendet, um die Verabreichung von Medikamenten zu erfassen, einschließlich der Selbstverabreichung von oralen Medikamenten, Injektionen, intravenösen Anwendungen usw. Es kann auch in ambulanten Einrichtungen zur Erfassung der Verabreichungen von Medikamenten verwendet werden. In einigen Fällen kann es für die Berichterstattung über die häusliche Gesundheitsfürsorge verwendet werden, z. B. für die Erfassung von selbst verabreichtem oder sogar geräteverabreichtem Insulin nach [FHIR R4 MedicationAdministration](http://hl7.org/fhir/R4/medicationadministration.html).

Eine Minimalform der Dokumentation von Medikation im Krankenhaus (Medikationsverabreichung) kann von den Häusern der stationären Versorgung auf Basis von Codes des Operationen- und Prozedurenschlüssels (OPS) für zusatzentgeltfähige Medikamente erreicht werden. Eine vollständig strukturierte Medikationsdokumentation findet darüber hinaus regelhaft auf den Intensivstationen im Patientendatenmanagementsystem (PDMS) statt, teilweise auch in der regulären stationären Versorgung im Rahmen von Systemen zur Visitendokumentation oder dedizierten Verordnungssystemen. Außerdem erfolgt häufig eine fallbezogene Dokumentation in Systemen der Krankenhausapotheken, z.B. im Rahmen der Eigenherstellung von Infusionslösungen oder der Chargendokumentation.
