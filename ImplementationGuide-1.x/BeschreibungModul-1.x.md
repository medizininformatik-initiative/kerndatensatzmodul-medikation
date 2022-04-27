## Beschreibung Modul

{{render:KDSMED04}}

Das Modul MEDIKATION enthält Datenelemente zur Dokumentation von Arzneimittelverordnungen und -gaben. Es ist Bestandteil der Basismodule des Kerndatensatzes der Medizininformatik-Initiative.

**Abbildung Modul MEDIKATION in ART-DECOR mit Übersicht der Komponenten:** 

{{render:KDSMED01}}

In einem [Medikationseintrag](https://art-decor.org/art-decor/decor-datasets--mide-?id=2.16.840.1.113883.3.1937.777.24.1.1&effectiveDate=2018-06-05T12%3A44%3A12&conceptId=2.16.840.1.113883.3.1937.777.24.2.605&conceptEffectiveDate=2019-02-05T16%3A12%3A20&language=de-DE) lassen sich folgende Typen der Dokumentation von Arzneimittelgaben unterscheiden:

1. Medikation im Krankenhaus (hauptsächlich stationär/teilstationär)
2. Entlassmedikation
3. Ambulante Medikation
4. Selbstmedikation (OTC)
5. Medikation im Rahmen klinischer Studien
6. Medikationsdokumentation für den bundeseinheitlichen Medikationsplan

Angaben zur Medikation können von der bloßen Dokumentation der Gabe eines Präparats in einem Behandlungsfall bis hin zu einer detaillierten strukturierten Erfassung von Einzelgaben mit Codierung von Wirkstoff, Darreichungsform, Applikationsweg und Dosis nach international etablierten Standards reichen.

**Abbildung Modul MEDIKATION - Datenelemente zur strukturierten Erfassung:**

{{render:KDSMED02}}

Eine Minimalform zum Typ 1 (Medikation im Krankenhaus) kann von den Häusern der stationären Versorgung auf Basis von Codes des Operationen- und Prozedurenschlüssels (OPS) für zusatzentgeltfähige Medikamente erreicht werden. Eine vollständig strukturierte Medikationsdokumentation findet darüber hinaus regelhaft auf den Intensivstationen im Patientendatenmanagementsystem (PDMS) statt, teilweise auch in der regulären stationären Versorgung im Rahmen von Systemen zur Visitendokumentation oder dedizierten Verordnungssystemen. Außerdem erfolgt häufig eine fallbezogene Dokumentation in Systemen der Krankenhausapotheken, z.B. im Rahmen der Eigenherstellung von Infusionslösungen oder der Chargendokumentation. 

**Abbildung Modul MEDIKATION - Datenelemente zur strukturierten Erfassung von Dosierungsinformationen:**

{{render:KDSMED03}}

Daten zu den Typen 2 und 3 (Entlass- und ambulante Medikation) sollen zukünftig über Daten des [Medikationsplans](https://www.abda.de/fileadmin/user_upload/assets/Medikationsmanagement/BMP_Anlage3_Spezifikation_Version_2_3_final.pdf) zur Verfügung stehen. Für Typ 4 (Selbstmedikation) lässt sich derzeit keine patientenbezogene Dokumentation absehen (bei Eigenangabe auch im Medikationsplan enthalten, langfristig über Patientenportale denkbar). Studienmedikation (Typ 5) wird in Electronic-Data-Capture-Systemen häufig strukturiert, aber ohne semantische Hinterlegung erfasst (bis auf die Kodierung der Nebenwirkungen in MedDRA als verpflichtende Komponente der Pharmakovigilanz-Meldekette). Einschränkungen können sich hier ggf. durch die Verblindung von Studienmedikamenten ergeben.

Zu einer Medikation sollte als Mindestumfang der Wirkstoff abrufbar sein.  


In einer weiteren Ausbaustufe sollten darüber hinaus folgende Datenelemente verfügbar gemacht werden (abhängig von den Ausgangsdaten):

* Handelsnamen der Präparate 
* Dosis mit Mengeneinheit 
* Dosierungsschema 
* Darreichungsform 
* Applikationsort und -weg

Die Datensätze im Modul sind so strukturiert, dass die Information entsprechend den vorhandenen Ausgangsdaten mit unterschiedlichem Detaillierungsgrad angegeben werden kann (zum Beispiel nur Angabe des Wirkstoffes vs. alle Angaben zum Präparat inklusive Wirkstoffe oder nur Beschreibung der Dosierung vs. strukturierte Angaben zur Dosierung). 