<!-- markdownlint-disable MD041 -->

### Terminologien

<div class="ig-highlight ig-highlight-grey" markdown="1">
CodeSystem-Ressourcen für externe Terminologien (ATC, ASK, EDQM etc.) werden nicht mehr in diesem Modul veröffentlicht, sondern sollen bei der Service Unit Terminologische Dienste (SU-TermServ) bezogen werden: <https://www.ontoserver.mii-termserv.de/>
</div>

Soweit möglich sollen Terminologien und eindeutige Codes verwendet werden, die internationalen Standards entsprechen. Für die Arzneimittel- und Dosierungsinformationen sind dies die ISO-Standards zur [Identification of Medicinal Products (IDMP)](https://www.ema.europa.eu/en/human-regulatory/overview/data-medicines-iso-idmp-standards-overview), die vor allem im regulatorischen Kontext implementiert werden.

#### Wirkstoffe

Für Wirkstoffe werden als Unique Identifier (Code) vorgeschlagen:

* Stoff-Codes des deutschen Arzneimittel-Stoffkatalogs des BfArM (ASK). Es ist abzuklären, wie diese ASK-Nummer via URI/URL über BfArM bzw. ABDATA (§ 31b SGB V) öffentlich verfügbar gemacht wird.
* [Unique Ingredient Identifier (UNII)](https://en.wikipedia.org/wiki/Unique_Ingredient_Identifier) des US Substance Registration System. Dieser ist in Deutschland nicht verfügbar.
* Die [CAS Registry Number](https://www.cas.org/support/documentation/chemical-substances/faqs) aus der Chemical-Abstracts-Service-Datenbank.
* SNOMED-CT-Codes aus der Substance-Hierarchie. Diese Codes sind in den deutschen Datenbanken (PharmNet/AMIS und ABDATA) nicht enthalten.

Für die Bezeichnung der Stoffe können die registrierten Substanzbezeichnungen verwendet werden, bei denen es sich in der Regel — aber nicht immer — um die [WHO-INNs (International Non-proprietary Names)](https://www.who.int/teams/health-product-and-policy-standards/inn) handelt. In der MII sollte dabei die deutsche Schreibweise verwendet werden, die in manchen Fällen von der englischen Version leicht abweicht.

Es wird empfohlen, [ATC-Codes (Anatomisch-Therapeutisch-Chemische Klassifikation)](https://www.whocc.no/atc_ddd_index/) nur unter Vorbehalt für die Codierung von Wirkstoffen zu verwenden, da keine eindeutige Zuordnung eines ATC-Codes zu einer Substanz möglich ist.

#### Wirkstofftyp

Im Bereich der Wirkstoffe soll die Möglichkeit gegeben werden, bei der Berechnung der Dosisangaben zwischen dem genauen Wirkstoff (der ein Salz, Ester etc. sein kann) und dem reinen Wirkstoff zu unterscheiden, und anzugeben, ob die Berechnung auf dem Derivat (seltener) oder der reinen bzw. allgemeinen, normalisierten Substanz (meist) beruht. Aus diesem Grund wurde eine Extension definiert, welche an die Wirkstoffcodierung angehängt werden kann. Sie verweist auf ein ValueSet mit den Codes:

* `IN` — ingredient, allgemeiner Wirkstoff
* `PIN` — precise ingredient, genauer Wirkstoff
* `MIN` — multiple ingredients, Kombinationscode für mehrere Wirkstoffe

Siehe dazu die Extensions [Wirkstofftyp](StructureDefinition-mii-ex-medikation-wirkstofftyp.html) und [Wirkstoffrelation](StructureDefinition-mii-ex-medikation-wirkstoffrelation.html).

<!-- TODO:REVIEW Die Quellseite Terminologien.page.md enthält weitere Abschnitte (u. a. zu Arzneimitteln, Darreichungsformen und Applikationswegen), die hier zu ergänzen sind. -->
