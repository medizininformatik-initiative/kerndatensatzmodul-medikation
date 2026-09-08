# Migrationsbericht — Modul Medikation → MII-KDS-Modul-Template

**Quelle** Simplifier-Guide `mii-ig-modul-medikation-2025` (Titel „MII IG Medikation v2026", Version 2026.0.1)
**Ziel** `medizininformatik-initiative/kerndatensatzmodul-medikation`, Branch `migration/2026.0.1-template-v0.11.3`
**Template** `mii-kds-module-template` v0.11.3 · IG-Template `ig-template-mii-kds` (Repository-URL)
**Neue Modulversion** 2027.0.0-ballot.rc1
**Vorschau** <https://medizininformatik-initiative.github.io/kerndatensatzmodul-medikation/branches/migration/2026.0.1-template-v0.11.3/de/index.html>

---

## Zusammenfassung — bitte zuerst lesen

Der Implementierungsleitfaden ist vom Simplifier auf das MII-KDS-Modul-Template umgezogen. **Alle 40 Artefakte sind erhalten**, Canonicals und IDs unverändert, der Leitfaden erscheint jetzt zweisprachig mit je 223 Seiten. SUSHI baut mit 0 Errors, der IG-Publisher-Lauf ist grün, und die Vorschau ist öffentlich erreichbar.

**Nichts davon ist veröffentlicht.** Der Branch ist nicht gemerged, es gibt keinen Release-Tag. Gate D — die Freigabe nach KDS-Governance — steht aus.

Drei Dinge sollte jede lesende Person wissen:

1. **Die erste Fassung des Narrativs war verlustbehaftet.** Die mechanische Prüfung (C4) meldete, dass 70 % der Quellsätze fehlten; eine unabhängige absatzweise Gegenmessung bestätigte das. Ursache: zusammenfassen statt übertragen. Nachgezogen wurden Terminologien, Release-Historie und Modulbeschreibung; die Kontrollmessung fand danach von 20 verbleibenden Meldungen 19 als Umformulierungen und eine als dokumentierte Auslassung.
2. **Zwei normative Änderungen sind bewusst erfolgt** und stehen unten in Queue ①: `raterange` im CapabilityStatement zeigt nun auf das Meta-Modul statt auf eine nie existierende Modul-Canonical, und das ATC-ValueSet enthält zusätzlich die Version 2026.
3. **Zwei Seiten sind bei der Migration neu geschrieben** worden und tragen die §9d-Markierung: der Hub-Text der Anleitungsseite und die Anleitung für Forschende. Beide brauchen fachliche Prüfung an Gate B.

| | Vorher | Nachher |
|---|---|---|
| Artefakte | 40 | 40 |
| Quellseiten | 20 `.page.md` | 19 Zielseiten + 6 Intro-Notes, 3 RETIRED |
| Sprachen | nur Deutsch | Deutsch + Englisch |
| Verifikation | — | 80 IDENTISCH · 35 DIVERGIERT · 38 NICHT PRÜFBAR |

## Wo die Belege liegen

| Datei | Inhalt |
|---|---|
| `migration-log/run.log` | 652 Zeilen, 128 WARN, 5 ERROR — jede Entscheidung mit Zeitstempel |
| `migration-log/page-map.tsv` | der Routing-Vertrag, 22 Zeilen, 3 RETIRED |
| `migration-log/verification-findings.tsv` | jede Prüfung mit Urteil, Evidenz und Folgeaktion |
| `migration-log/prepost-delta.tsv` | 34 Eigenschaften vorher/nachher |
| `migration-log/qa-checklist.md` | dieselben offenen Punkte als Checkboxen je Gate |
| `migration-log/comparison-table.md` | Quellseite ↔ Zielseite, klickbar |

## ① Entscheidungswarteschlange (Gate A)

| # | Punkt | Warum es eine Entscheidung ist |
|---|---|---|
| 1 | **`raterange` zeigt jetzt auf Meta** (`mii-sp-meta-medication-dosage-raterange`) | Vorbestehender Defekt: die Modul-Canonical existierte nie als Artefakt. Normative Änderung, am 02.09.2026 beauftragt. Bestätigen oder zurückdrehen. |
| 2 | **ATC-ValueSet um 2026 erweitert** | Der SU-TermServ führt 2018–2026, das ValueSet pinnte bis 2025. Normative Änderung, beauftragt. |
| 3 | **Dependency-Pins weichen von der Quelle ab** (F2 ×3) | `de.basisprofil.r4` 1.5.x→1.6.0, `de.fhir.medication` 1.0.x→1.0.7, `meta` 2026.0.x→2027.0.0-ballot.rc3. Alle als Human-Entscheidung protokolliert; der Meta-Pin ist ein **Ballot**. |
| 4 | **Modulversion 2027.0.0-ballot.rc1** | Die Zielversion ist laut Skill die einzige Identitätsangabe, die ein Mensch setzt. Gesetzt am 02.09.2026. |
| 5 | **Kein veröffentlichter Simplifier-Pin** | `/published-guide/…/versions` listet nur `?version=current`. Die Provenienz ist damit schwächer als bei anderen Migrationen. Akzeptiert am 01.09.2026. |
| 6 | **Skill-Hash nicht reproduzierbar** | `skills-lock.json` nennt für `fhir-ig-analysis` einen `computedHash`, den drei plausible Verfahren nicht reproduzieren. NICHT PRÜFBAR, nicht bestanden. |
| 7 | **Beide Simplifier-Bäume bleiben liegen** | Entscheidung vom 02.09.2026, Stilllegung erst an Gate D. Restrisiko: am unwirksamen Baum kann editiert werden, ohne dass der Build es meldet. |

## ② Review-Warteschlange (Gates B und C)

**Neu geschriebener Inhalt — GENERIERT aus `derived-content.tsv`, nicht abtippen**

| Seite | Art | Sprachen | Grund |
|---|---|---|---|
| `guidance` | stand-in | default, de | Quell-Hubseite trug nur „Diese Seite wurde absichtlich leer gelassen" |
| `researcher-guidance` | written | default, de | Der Simplifier-Guide hatte keine Anleitung für Forschende |

**Von Hand zu prüfen**

* Alle englischen Seiten sind **Maschinenübersetzungen** und tragen `TODO:REVIEW` im Quelltext — Gate C.
* C4 ×11: Die verbleibenden Meldungen sind laut Gegenmessung Umformulierungen. Wer es genau wissen will, liest `comparison-table.md` Zeile für Zeile.
* C7 ×10: Markierungspflicht für migrationsgeschriebenen Inhalt — betrifft dieselben zwei Seiten wie oben.
* Zwei inhaltliche Auslassungen sind im Text markiert: die 33 Absätze Suchparameter-Dokumentation aus `Medication/Index.page.md` (bewusst, das CapabilityStatement ist die vollständigere Quelle) und die RFC-2119-Tabelle (bewusst, Verweis aufs Meta-Modul).
* Sieben Template-Seiten haben keinen Quellinhalt: `examples`, `downloads`, `translationinfo`, `value-sets`, `version-history`, `metadata`, `security-and-privacy`.

## ③ QA-Triage

**Lokaler Lauf** (SU-TermServ über mTLS): 67 Errors, 426 Warnings, 4 Broken Links.
**Remote-Lauf** (CI): 60 Errors, 399 Warnings.

Die Differenz ist erklärbar und selbst ein Befund: `ig-publisher.yml` sucht die Secrets `SU_TERMSERV_CLIENT_CERT/_KEY/_PASSWORD`, die Organisation führt sie als `CDS_DEV_*`. Ohne Zertifikat fällt der Build dokumentiert auf `tx.fhir.org` zurück — dort liegt die BfArM-Terminologie nicht.

| Klasse | Anzahl | Einordnung |
|---|---|---|
| EDQM Standard Terms | 10 | Terminologieserver kann sie nicht auflösen; die CI filtert diese Klasse bereits in `main.yml` |
| UCUM | 2 | dito |
| `en-US` gegen `all-languages` | 4 | derselbe Befund wie im Juli-Tech-Test |
| fehlende `package-list.json` | 1 | es gibt noch keine Versionshistorie unter der Canonical |
| P1: Render nennt Template 1.3.4, Baum trägt 1.3.2 | 1 | `ig.ini` zieht das Template per Repository-URL vom `main`, der vendorierte Ordner stammt aus Template v0.11.3. Der Montags-Sync gleicht das ab. |
| R2: `{{title}}` in `searchform.html` | 2 | Publisher-eigene Seite, nicht unser Inhalt |

**Nicht belegt:** Ob alle 67 Fehler vorbestehend sind, kann ich nicht behaupten — dafür fehlt ein IG-Publisher-Lauf der unmigrierten Quelle, und die hat keine `ig.ini`. Ein solcher Basiswert wäre konstruiert, nicht gemessen.

## Identität

| Feld | Wert | Herkunft |
|---|---|---|
| `id` | `mii-ig-medikation` | Quelle, unverändert (Guardrail 1) |
| `canonical` | `…/fhir/core/modul-medikation` | Quelle — das Template hatte `…/fhir/modul-medikation` konstruiert und dabei `core/` verloren |
| `packageId` | `de.medizininformatikinitiative.kerndatensatz.medikation` | Quelle |
| `version` | `2027.0.0-ballot.rc1` | Human-Entscheidung 02.09.2026 |
| `license` | `CC-BY-4.0` | Quelle; die LICENSE-Datei schreibt „Attribution 4.0 International" — dieselbe Lizenz, andere Schreibweise |
| `publisher` | `NUM-DIZ` | **Template-Chrome, nicht Modul-Identität** (Spec 2.2/9a). Der Quellwert wird bewusst nicht übernommen. |

## Protokoll — was ausgeführt wurde

Generiert aus `migration-log/run.log`. Fünf ERROR-Zeilen, alle aufgelöst:

1. `simplifier-discover` — falsche Org-Angabe; Guide-Key stattdessen vom Menschen erhalten
2. `sushi-skeleton` — 6 RuleSet-Kollisionen mit `cps-rules.fsh`; Scaffold-Datei übersprungen, das Modul gewinnt
3. `prepost-delta` ×2 — erst `identity.publisher` (behoben, siehe unten), dann `narrative_sources.dual_source` (bewusst offen, Queue ① #7)
4. `qa-checklist` — falsche Aufrufoption, korrigiert

**Drei eigene Fehler, gefunden und korrigiert:**

* Die M9-Entfernung von `search-parameters.md` und `operations.md` erfasste die `pages:`-Liste nicht — der Publisher brach ab. Datei, Menü und `pages:` gehören zusammen.
* Der Publisher-Wert wurde erst fälschlich auf den Quellwert zurückgesetzt; Spec 2.2/9a sagen das Gegenteil. Zurückgenommen.
* Ein Erklärkommentar zwischen `publisher:` und `name:` machte den Wert für zeilenbasierte Leser unsichtbar. Kommentar verschoben.

## Sign-off

- [ ] **Gate A** — Identität, Dependency-Pins und die zwei normativen Änderungen bestätigen
- [ ] **Gate B** — Narrativ prüfen, insbesondere die zwei neu geschriebenen Seiten
- [ ] **Gate C** — englische Maschinenübersetzungen fachlich gegenlesen
- [ ] **Gate D** — Freigabe nach KDS-Governance (TF-KDS / AG IOP / NSG). Erst der Merge veröffentlicht.

Vor dem Merge zusätzlich: `implementation-guides/` entfernen, die Secret-Namenskollision auflösen, und `cleanup-gh-pages.yml` steht dann regulär zur Verfügung.
