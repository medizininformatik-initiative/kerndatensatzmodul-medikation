ValueSet: MII_VS_Medikation_ATC
Id: mii-vs-medikation-atc
Title: "MII VS Medikation ATC"
Description: "Enthaelt ATC-Codes der Versionen 2018 bis 2024" 
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^copyright = "WHO, BfArM 1994 - 2025 - Die Erstellung erfolgt unter Verwendung der maschinenlesbaren Fassung des Bundesinstituts für Arzneimittel und Medizinprodukte (BfArM)."
* insert PR_CS_VS_Version
* insert Publisher
* insert LicenseCodeableCCBY40
* ^status = #active
* ^experimental = false
* ^date = "2025-03-19"
* include codes from system $cs-atc|2025
* include codes from system $cs-atc|2024
* include codes from system $cs-atc|2023
* include codes from system $cs-atc|2022
* include codes from system $cs-atc|2021
* include codes from system $cs-atc|2020
* include codes from system $cs-atc|2019
* include codes from system $cs-atc|2018