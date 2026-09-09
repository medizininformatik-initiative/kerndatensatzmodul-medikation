# Security and Privacy - MII IG Medikation v2027.0.0-ballot.rc4

* [**Table of Contents**](toc.md)
* **Security and Privacy**

## Security and Privacy

This section addresses security and privacy experts. General requirements are in the FHIR core specification — [Security & Privacy Module](https://build.fhir.org/secpriv-module.html) and the [security checklist](https://build.fhir.org/security.html). This page does not repeat them; it links the overarching data protection framework and states what is **specific to this module**.

#### 1. The overarching data protection concept

The [overarching data protection concept of the Medical Informatics Initiative](https://www.medizininformatik-initiative.de/en/data-protection-concept) governs how patient data may be processed for research across the network of Data Integration Centers: it covers the legal basis (the MII Broad Consent), the roles of the Data Integration Centers and Use & Access Committees, and the cross-site application scenarios (feasibility queries, distributed analyses, data and biosample provision). Everything this module specifies operates inside that framework — this guide adds no processing purpose of its own.

#### 2. De-identification, minimisation and pseudonymisation (DIMP)

How data leaving a Data Integration Center is de-identified in practice is specified by [DIMP (De-Identification — Minimisation — Pseudonymisation)](https://medizininformatik-initiative.github.io/dataportal/data-node/DIMP.html) in the data portal documentation: direct identifiers are removed, data elements not needed by the approved project are dropped, and identifying values are replaced by project-specific pseudonyms (FHIR Pseudonymizer configuration). The profiles of this module describe data **before** DIMP is applied; which elements survive a concrete data release is decided per project by the DIMP configuration, not by this guide.

#### 3. Module-specific aspects

This is the module's own contribution: the security and privacy properties that follow from the **kind of data this module carries**. **Its content is optional** — not every module has aspects of its own. If yours does not, the whole section body becomes the following default text (delete the example and TODO boxes below and adopt it verbatim):

> Beyond the overarching framework above — the overarching data protection concept, the Broad Consent it rests on, and DIMP — this module carries no data category that raises security or privacy aspects of its own, and it places no module-specific security or privacy requirements on implementers.

> Section 3 was newly written during the migration. The Simplifier guide had no security and privacy page; the aspects named here follow from the data categories this module carries. Needs domain review.

Beyond the overarching framework, medication data raise aspects of their own because they **allow diagnoses to be inferred**. An active ingredient is often specific to an indication; an order for an antiretroviral, an antipsychotic or a cytostatic agent reveals the underlying disease even when no diagnosis is transmitted. That inference survives pseudonymisation, because it does not depend on identifiers but on content.

Four points follow for this module:

* **Rare diseases and oncology.** For preparations used only in very small cohorts, the combination of active ingredient, period and site can already single out a person in practice. The module explicitly provides for UNII coding in such cases — coding improves data quality, but it does not reduce the risk.
* **Study medication and blinding.** The module can represent study medication. Where blinding is in place, providing structured medication data must not undermine it; whether a dataset permits an assignment is to be checked before release.
* **Free text in dosage information.** `Dosage.text` is a free-text field. It may inadvertently contain identifying information — names, ward designations, remarks from progress notes. DIMP does not remove these automatically; free-text fields need separate consideration before provision.
* **Trade names and supply route.** Pharmazentralnummern and trade names can allow inferences about the dispensing point or the treating hospital. Where the active ingredient suffices for the research question, stating the PZN is dispensable under the data-minimisation principle.

