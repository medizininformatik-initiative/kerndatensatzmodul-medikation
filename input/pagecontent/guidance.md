<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW machine translation of source page AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md (de) -->

<!-- DERIVED:stand-in source=MIIIGModulMedikation/AnwendungsflleInformationsmodell/Index.page.md gate=B -->
> This introduction and the link list were created during the migration — the source hub page carried only the sentence "This page was intentionally left blank".
{: .ig-highlight .ig-highlight-grey}

This section collects the domain guidance on implementing and using the **Medikation** module. The sub-pages go into individual aspects:

* **[Guidance for Implementers](implementer-guidance.html)** — context within the overall project, relations to the Person, Encounter, Procedure and Condition modules, and the reference specifications taken into account.
* **[Datasets and descriptions](logical-models.html)** — the module's data elements as a logical model, with a description per element.
* **[UML diagrams](uml-diagrams.html)** — the information model as a UML class diagram.
* **[Terminologies](code-systems.html)** — active ingredients, medicinal products, dose forms and the list of external code systems.
* **[Guidance for Researchers](researcher-guidance.html)** — for scientists using module data.

### Scenarios for applying the modules

**Medication during inpatient treatment with corresponding documentation of the German procedure classification (OPS)**

Example: a patient with breast cancer is treated with a chemotherapeutic agent during her inpatient stay. The attending physician initially prescribes therapy with doxorubicin (Caelyx) once every four weeks. The order for the active ingredient and the medicinal product is documented.

In accordance with the instructions for the prescribed medicinal product, the dose of 85 mg doxorubicin tailored to the patient is prepared as an infusion solution in a 5 per cent glucose solution. The infusion solution with its individual components, and the time or period of administration, are recorded.

After the infusion has been administered, the OPS code 6-002.87 (pegylated liposomal doxorubicin, parenteral, 80 mg to under 90 mg) is coded.
