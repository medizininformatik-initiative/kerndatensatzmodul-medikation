# Guidance - MII IG Medikation v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Guidance**

## Guidance

> This introduction and the link list were created during the migration — the source hub page carried only the sentence "This page was intentionally left blank".

This section collects the domain guidance on implementing and using the **Medikation** module. The sub-pages go into individual aspects:

* **[Guidance for Implementers](implementer-guidance.md)** — context within the overall project, relations to the Person, Encounter, Procedure and Condition modules, and the reference specifications taken into account.
* **[Datasets and descriptions](logical-models.md)** — the module's data elements as a logical model, with a description per element.
* **[UML diagrams](uml-diagrams.md)** — the information model as a UML class diagram.
* **[Terminologies](code-systems.md)** — active ingredients, medicinal products, dose forms and the list of external code systems.
* **[Guidance for Researchers](researcher-guidance.md)** — for scientists using module data.

### Scenarios for applying the modules

**Medication during inpatient treatment with corresponding documentation of the German procedure classification (OPS)**

Example: a patient with breast cancer is treated with a chemotherapeutic agent during her inpatient stay. The attending physician initially prescribes therapy with doxorubicin (Caelyx) once every four weeks. The order for the active ingredient and the medicinal product is documented.

In accordance with the instructions for the prescribed medicinal product, the dose of 85 mg doxorubicin tailored to the patient is prepared as an infusion solution in a 5 per cent glucose solution. The infusion solution with its individual components, and the time or period of administration, are recorded.

After the infusion has been administered, the OPS code 6-002.87 (pegylated liposomal doxorubicin, parenteral, 80 mg to under 90 mg) is coded.

