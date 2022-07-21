##### Extensions
Für Wirkstoffe soll die Möglichkeit gegeben werden, bei der Berechnung der Dosisangaben zwischen dem genauen Wirkstoff (der ein Salz, Ester etc. sein kann) und dem reinen Wirkstoff zu unterscheiden, und anzugeben, ob die Berechnung auf dem Derivat (seltener) oder der reinen/"allgemeinen" Substanz (meist) beruht. Aus diesem Grund wurde eine Extension definiert, welche zusätzlich zur Wirkstoffcodierung angegeben werden kann. Diese Extension verweist auf ein ValueSet mit Codes für: 
* IN (ingredient - allgemeiner Wirkstoff), 
* PIN (precise ingredient - genauer Wirkstoff), 
* oder MIN (multiple ingredients - Kombinationscode für mehrere Wirkstoffe).

Siehe auch [Terminologien](https://simplifier.net/guide/MedizininformatikInitiative-ModulMedikation-ImplementationGuide/Terminologien).

{{render:https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstofftyp}}

<br>

Eine weitere Extension erlaubt es, Referenzen zwischen den Wirkstoffen abzubilden. Somit kann ein Wirkstoff, der als "genauer" Wirkstoff klassifiziert ist, eindeutig einem "allgemeinen" Wirkstoff zugeordnet werden. Dies erlaubt bspw. die Umrechnung, dass "10mg Bisoprolol hemifumarat" "8,49mg Bisoprolol" entsprechen.

{{render:https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation}}