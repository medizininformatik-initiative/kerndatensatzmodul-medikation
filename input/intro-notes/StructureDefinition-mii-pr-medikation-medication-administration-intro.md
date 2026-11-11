

### Time of administration

As best practice, `MedicationAdministration.effective[x]` (`effectiveDateTime` or `effectivePeriod`) SHOULD be given to the second. This follows the [ISiK MedikationsVerabreichung profile of ISiK stage 6 (6.0.0)](https://gematik.github.io/spec-ISiK-Basismodul/main-stufe-6/ISiK-Medikation/en/StructureDefinition-ISiKMedikationsVerabreichung.html), which records an administration with a time to the second and refers coarser information (only year, month or day) to MedicationStatement. Unlike ISiK, this profile does not enforce the precision: data from retrospective sources in which only the date of an administration is known remains valid. The MedicationStatement profile is unchanged and continues to allow coarser values, for example a period of several days.
