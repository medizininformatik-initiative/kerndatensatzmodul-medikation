## Beschreibung Modul

{{render:KDSMED04}}

Das Modul MEDIKATION enthält Datenelemente zur Dokumentation von Arzneimittelverordnungen und -gaben sowie Medikationsplänen. Es ist Bestandteil der Basismodule des Kerndatensatzes der Medizininformatik-Initiative.

**Abbildung Modul MEDIKATION in ART-DECOR mit Übersicht der Komponenten:** 

{{render:ig-bilder-IG-Medikation-KDS-Modul-Uebersicht}}

In einem [Medikationseintrag](https://art-decor.org/art-decor/decor-datasets--mide-?id=2.16.840.1.113883.3.1937.777.24.1.1&effectiveDate=2018-06-05T12%3A44%3A12&conceptId=2.16.840.1.113883.3.1937.777.24.2.605&conceptEffectiveDate=2019-02-05T16%3A12%3A20&language=de-DE) lassen sich folgende Typen der Dokumentation von Arzneimittelprozessen unterscheiden:

1. Medikation im Krankenhaus (hauptsächlich stationär/teilstationär)
2. Entlassmedikation
3. Ambulante Medikation
4. Selbstmedikation (OTC)
5. Medikation im Rahmen klinischer Studien
6. Medikationsdokumentation für den bundeseinheitlichen Medikationsplan

Angaben zur Medikation können von der bloßen Dokumentation der Gabe eines Präparats in einem Behandlungsfall bis hin zu einer detaillierten strukturierten Erfassung von Einzelgaben mit Codierung von Wirkstoff, Darreichungsform, Applikationsweg und Dosis nach international etablierten Standards reichen.

Es stehen entsprechend ihres Anwendungsbereiches drei Teilmodule für die Dokumentation der Medikation zur Verfügung: 

1. Medikationseintrag (MedicationStatement) beschreibt von der Anordnung oder Vergabe unabhängige Medikationsdokumentation 
2. Medikationsverordnung (MedicationRequest) beschreibt die Anordnung einer Medikation durch medizinisches Personal 
3. Medikationsvergabe (MedicationAdministration) beschreibt ein aktuelles Vergabeereignis einer Medikation durch medizinisches Personal 

**Abbildung Modul MEDIKATION Medikationsliste:** 

{{render:ig-bilder-IG-Medikation-KDS-Liste}}

#### Aufnahme- und Entlassmedikation

Die Art eines Medikationseintrages kann durch folgende Codes weiter spezifiziert werden. Die Flags werden jeweils an die Medikationseinträge verknüpft und an eine zusammenfassende Liste, s. u.). 

* Aufnahmemedikation    `IHE Deutschland Fallkontext|E210 "stationäre Aufnahme"`
* Entlassmedikation     `IHE Deutschland Fallkontext|E230 "stationäre Entlassung"`
* Stationäre Medikation `IHE Deutschland Fallkontext|E200 "stationärer Aufenthalt"`


### Medikationsverordnung
Zur Dokumentation einer Medikationsanordnung durch medizinisches Personal.

**Abbildung Modul MEDIKATION Medikationsverordnung:** 

{{render:ig-bilder-IG-Medikation-KDS-Medikationsverordnung}}

### Medikationsvergabe

**Abbildung Modul MEDIKATION Medikationsvergabe:**

{{render:ig-bilder-IG-Medikation-KDS-Medikationsvergabe}}

Die Medikationsvergabe wird zur Dokumentation einer Einzelvergabe einer Medikation auf Ereignisniveau verwendet, bei dem ein Patient ein Medikament einnimmt oder es ihm auf andere Weise verabreicht wird. Beispielhaft seien hier die Einnahme einer Tablette oder eine langlaufende Infusion genannt. Die Medikationsvergabe ist in jedem Fall mit einem spezifischen Patienten verknüpft und kann darüber hinaus als Ereignis mit einer spezifischen Behandlungsepisode (Fall) und der zugrunde liegenden Medikationsanordnung verknüpft sein.
Diese Ressource deckt die Verabreichung aller Medikamente (ausgenommen Impfstoffe) ab. Sie wird in erster Linie in der stationären Versorgung verwendet, um die Verabreichung von Medikamenten zu erfassen, einschließlich der Selbstverabreichung von oralen Medikamenten, Injektionen, intravenösen Anwendungen usw. Es kann auch in ambulanten Einrichtungen zur Erfassung der Verabreichungen von Medikamenten verwendet werden. In einigen Fällen kann es für die Berichterstattung über die häusliche Gesundheitsfürsorge verwendet werden, z. B. für die Erfassung von selbst verabreichtem oder sogar geräteverabreichtem Insulin [nach http://hl7.org/fhir/medicationadministration.html].

Eine Minimalform der Dokumentation von Medikation im Krankenhaus (Medikationsvergabe) kann von den Häusern der stationären Versorgung auf Basis von Codes des Operationen- und Prozedurenschlüssels (OPS) für zusatzentgeltfähige Medikamente erreicht werden. Eine vollständig strukturierte Medikationsdokumentation findet darüber hinaus regelhaft auf den Intensivstationen im Patientendatenmanagementsystem (PDMS) statt, teilweise auch in der regulären stationären Versorgung im Rahmen von Systemen zur Visitendokumentation oder dedizierten Verordnungssystemen. Außerdem erfolgt häufig eine fallbezogene Dokumentation in Systemen der Krankenhausapotheken, z.B. im Rahmen der Eigenherstellung von Infusionslösungen oder der Chargendokumentation.

Daten zur Entlass- und ambulante Medikation (Medikationseintrag) stehen zukünftig über Angaben im Medikationsplans zur Verfügung. Für Selbstmedikation (Medikationseintrag) lässt sich derzeit keine patientenbezogene Dokumentation absehen (bei Eigenangabe auch im Medikationsplan enthalten, langfristig über Patientenportale denkbar). Studienmedikation (Medikationsvergabe) wird in Electronic-Data-Capture-Systemen häufig strukturiert, aber ohne semantische Hinterlegung erfasst (bis auf die Kodierung der Nebenwirkungen in MedDRA als verpflichtende Komponente der Pharmakovigilanz-Meldekette). Einschränkungen können sich hier ggf. durch die Verblindung von Studienmedikamenten ergeben.
Zu einer Medikation sollte als Mindestumfang der Wirkstoff abrufbar sein.
In einer weiteren Ausbaustufe sollten darüber hinaus folgende Datenelemente verfügbar gemacht werden (abhängig von den Ausgangsdaten):

* Handelsnamen der Präparate
* Dosis mit Mengeneinheit
* Dosierungsschema
* Darreichungsform
* Applikationsort und -weg

Die Datensätze im Modul sind so strukturiert, dass die Information entsprechend den vorhandenen Ausgangsdaten mit unterschiedlichem Detaillierungsgrad angegeben werden kann (zum Beispiel nur Angabe des Wirkstoffes vs. alle Angaben zum Präparat inklusive Wirkstoffe oder nur Beschreibung der Dosierung vs. strukturierte Angaben zur Dosierung).

#### Kombinationspackungen

Abbildung Kombinationspackungen (nach Anforderung der KBV)

{{render:ig-bilder-IG-Medikation-KDS-Kombinationspackungen}}

Kombinationspackungen können auf einfache Weise durch eine hierarchische Schachtelung der Medication über eine Verknüpfung ausgehend von Item.reference auf andere Medication-Instanzen dargestellt werden. Damit würde die „obere“ Medication-Instanz als Packungshierarchie als Container der eigentlichen Medication dienen. Sie enthält auch die entsprechende PZN der Kombinationspackung. Die eigentliche Medikation („Untermedikation") würde als vollständige Medication-Instanzen abgebildet werden (jeweils ohne PZN, vollständige Medikationsdaten mit ASK und ggf. ATC etc).
