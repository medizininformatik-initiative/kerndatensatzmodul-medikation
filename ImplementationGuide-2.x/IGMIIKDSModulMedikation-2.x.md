# Kerndatensatz Modul Medikation

| Hinweis | Under Construction! |
|---------|---------------------|
| {{render:Warning}} | Dieser Implementation Guide stellt die aktuelle Arbeitsversion des Moduls 'Medikation' dar. Die jeweils für den produktiven Einsatz veröffentlichte Version finden Sie auf [dieser Seite der Medizininformatik-Initiative](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Medikation/IGMIIKDSModulMedikation.html).|

Die vorliegende Spezifikation beschreibt die FHIR-Repräsentation des Kerndatensatz-Moduls 'Medikation' der Medizinformatik-Initative.
Im Folgenden werden die Use Cases des Moduls, sowie die dazuhegörigen FHIR-Profile und Terminologie-Ressourcen in ihrer verbindlichen Form beschrieben.

| Veröffentlichung   |   |
|---------|---|
| Datum   | current  |
| Version | 2.0.0      |
| Status  | draft      |
| Realm   | DE          | 

## Inhaltsverzeichnis

{{index:root}}

## Impressum
Dieser Leitfaden ist im Rahmen der Medizininformatik-Initative erstellt wurden und unterliegt per Governance-Prozess dem Abstimmungsverfahren des Interoperabilitätsforums und der Technischen Komitees von HL7 Deutschland e. V..

## Ansprechpartner
* Martin Boeker, Med. Fakultät und Universitätsklinikum der Universität Freiburg
* Julian Saß, Berlin Institute of Health (BIH)
* Karoline Buckow, TMF – Technologie- und Methodenplattform
für die vernetzte medizinische Forschung e.V.
* Sylvia Thun, Berlin Institute of Health (BIH), Charité Universitätsmedizin

Fragen zu der vorliegenden Publikation können jederzeit unter [chat.fhir.org](chat.fhir.org) im Stream 'german/mi-initiative' gestellt werden.

Anmerkungen und Kritik werden in Form von 'Issues' im Simplifier-Projekt stets gern entgegengenommen.


## Autoren (in alphabetischer Reihenfolge)

* Alexander Zautke (HL7 e.V.)
* Caroline Bönisch (HiGHmed)
* Danny Ammon (SMITH)
* Editha Räuscher(TMF e.V.)
* Heinrich	Lautenbacher (DIFUTURE)
* Julian Saß (HiGHmed)
* Karoline Buckow (TMF e.V.)
* Martin Boeker (MIRACUM)
* Matthias Löbe (SMITH)
* Sebastian Semler (TMF e.V.)
* Susann Wrobel (SMITH)
* Susanne Zabka (MIRACUM)
* Sylvia Thun (HL7 e.V.)
* Thomas Ganslandt (MIRACUM)

## Copyright-Hinweis, Nutzungshinweise
Copyright © 2019: TMF e. V., Charlottenstraße 42, 10117 Berlin

Der Inhalt dieser Spezifikation ist öffentlich. Die Nachnutzungs- bzw. Veröffentlichungsansprüche sind nicht beschränkt.

Zu den Nutzungsrechten der zugrunde liegenden FHIR-Technologie siehe die FHIR-Basis-Spezifikation.

Einige verwendete Codesysteme werden von anderen Organisationen herausgegeben und gepflegt. Es gilt das Copyright der dort jeweils aufgeführten Herausgeber (Publisher).

## Disclaimer
Der Inhalt dieses Dokuments ist öffentlich. Zu beachten ist, dass Teile dieses Dokuments auf FHIR Version R4 beruhen, für die das Copyright von HL7 International gilt.

* Obwohl diese Publikation mit größter Sorgfalt erstellt wurde, können die Autoren keinerlei Haftung für direkten oder indirekten Schaden übernehmen, der durch den Inhalt dieser Spezifikation entstehen könnte.

