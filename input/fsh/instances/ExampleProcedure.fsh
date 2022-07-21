Instance: ExampleProcedure
InstanceOf: Procedure
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure"
* category = $sct#182832007 "Procedure related to management of drug administration (procedure)"
* code.coding = $ops#6-007.nm "Parenterale Applikation von 2.400 mg bis unter 2.600 mg Thiotepa"
  * version = "2020"
* performedDateTime = "2018-05-26"
* status = #completed
* subject = Reference(Patient/fe1f7a9a-f33e-4dbe-9ee5-246e2d3baada)