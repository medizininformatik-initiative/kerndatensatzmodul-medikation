# Profile - MII IG Medikation v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* **Profile**

## Profile

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

### FHIR-Profile

Die Arbeiten der Kerndatensatzspezifikationen basieren, wo möglich, auf internationalen Standards und Terminologien. Insbesondere sei hier die [International Patient Summary](http://hl7.org/fhir/uv/ips/STU1/) hervorgehoben. Eine Anpassung an die Gegebenheiten des deutschen Gesundheitswesens erfolgt durch die Verwendung der [Deutschen Basisprofile](https://ig.fhir.de/basisprofile-de/) von HL7 Deutschland. Außerdem wird Kompatibilität zu den FHIR-Spezifikationen der [Kassenärztlichen Bundesvereinigung (KBV)](https://simplifier.net/organization/kassenrztlichebundesvereinigungkbv) und der [gematik](https://simplifier.net/organization/gematik) angestrebt.

Alle Elemente des Kerndatensatzes, angepasst an die Details und Anforderungen der Use Cases der Medizininformatik-Initiative, werden in Form von FHIR StructureDefinitions beschrieben. Die Notwendigkeit der Anpassung der FHIR-Profile wird jeweils in textueller Form auf der Seite des Profils erläutert.

Die KDS-weiten Konformitätsregeln — Anforderungssprache nach RFC-2119, Must Support und der Umgang mit fehlenden Daten — werden zentral vom [Meta-Modul](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance) gepflegt und hier nicht wiederholt.

#### Medication

Die Medikation, die angesetzt, geplant oder verabreicht wird. Es kann sich um ein Fertigarzneimittel oder eine Rezeptur handeln. Auch die Angabe nur des Wirkstoffes ist möglich. Mindestens ein Wirkstoff MUSS angegeben werden.

