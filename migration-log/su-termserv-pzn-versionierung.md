# PZN-Versionierung auf dem SU-TermServ — Rückfrage aus dem KDS-Modul Medikation

**Stand der Messungen:** 2026-09-02, `ontoserver.mii-termserv.de` (Ontoserver 6.25.3), Zugriff per mTLS-Client-Zertifikat.

## Worum es geht

Beispielinstanzen des Moduls Medikation kodieren Fertigarzneimittel über die Pharmazentralnummer. Diese Beispiele scheitern in der Validierung, sobald ein Produkt vom Markt genommen oder umbenannt wird — nicht weil sie falsch wären, sondern weil sie einen Zustand der Vergangenheit beschreiben, gegen einen Katalog der Gegenwart geprüft.

Das ist kein Modulproblem, sondern eine Frage der Versionierungsstrategie auf dem Terminologieserver. Wir würden gern wissen, wie ihr das seht.

## Was wir gemessen haben

**Der Server führt genau eine PZN-Version.**

```
GET /fhir/CodeSystem?url=http://fhir.de/CodeSystem/ifa/pzn&_elements=version,count
→ total: 1
   version = 20260215   count = 724291   content = complete
```

Zum Vergleich die anderen Systeme, die dieses Modul nutzt:

| System | Versionen auf dem Server |
|---|---|
| `http://fhir.de/CodeSystem/bfarm/atc` | 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026 — **neun** |
| `http://fhir.de/CodeSystem/bfarm/ops` | 2010–2026 — **siebzehn** |
| `http://fhir.de/CodeSystem/bfarm/icd-10-gm` | 2009–2026 — **achtzehn** |
| `http://fdasis.nlm.nih.gov` (UNII) | 20250702 — eine |
| `http://fhir.de/CodeSystem/ask` | 20260105 — eine |
| **`http://fhir.de/CodeSystem/ifa/pzn`** | **20260215 — eine** |

Bei ATC, OPS und ICD-10-GM können wir eine Instanz an den Jahrgang binden, unter dem sie entstanden ist, und sie bleibt dauerhaft validierbar. Genau das tut unser Modul auch: die ATC-Codings tragen `|2023`.

Bei PZN geht das nicht. Es gibt keine ältere Version, gegen die man pinnen könnte.

## Die konkrete Folge

Zwei von acht PZN in unseren Beispielen sind inzwischen aus dem Katalog verschwunden:

```
Unknown code '887150' in the CodeSystem 'http://fhir.de/CodeSystem/ifa/pzn' version '20260215'
   — Caelyx 50 mg/25 ml Konzentrat
Unknown code '194346' in the CodeSystem 'http://fhir.de/CodeSystem/ifa/pzn' version '20260215'
   — Propofol 2 % 20 mg/1 ml MCT
```

Weitere vier tragen Handelsbezeichnungen, die IFA seither geändert hat, zum Beispiel:

```
Wrong Display Name 'ASS 100 - 1a Pharma TAH Tabletten' for …ifa/pzn#06312077.
Valid display is 'ASS 100 - 1 A Pharma® TAH 100 Tbl. N3'
```

Wir haben alle acht Codings auf den aktuellen Katalogstand gebracht. Damit ist die Validierung heute grün — und wird beim nächsten Katalogwechsel erneut brechen. Das ist der Punkt, an dem wir nicht weiterkommen: **jede Korrektur hat eine Halbwertszeit.**

## Unsere Fragen

1. **Ist eine Versionierung der PZN vorgesehen?** Historische Stände als eigene `CodeSystem`-Versionen anzubieten, wie es für ATC, OPS und ICD-10-GM bereits geschieht, würde das Problem an der Wurzel lösen: Beispiele und Bestandsdaten könnten an den Stand gebunden werden, unter dem sie entstanden sind.

2. **Falls nicht — was empfehlt ihr für Beispielinstanzen?** Denkbar wäre, in Beispielen auf `display` zu verzichten (dann entfällt die halbe Fehlerklasse strukturell) oder die Prüfung von PZN-Codes bewusst als Warnung statt als Fehler zu führen. Beides sind Behelfe; wir würden ungern eine Konvention etablieren, die eurer Planung zuwiderläuft.

3. **Gilt dieselbe Frage für ASK und UNII?** Beide liegen ebenfalls nur in einer Version vor (20260105 bzw. 20250702). Bei ASK hat unser Modul die Versionsbindung im Release 2026.0.1 bewusst entfernt, damit gegen den jeweils aktuellen Stand expandiert wird — bei UNII ist sie noch gepinnt.

## Warum das jetzt auffällt

Der HL7-Java-Validator lief in unserer CI **neun Monate lang nicht**. Der vorgeschaltete Wächter prüfte die Secrets unter anderen Namen (`SU_TERMSERV_CLIENT_*`) als jene, unter denen die Organisation sie führt (`CDS_DEV_CLIENT_*`), und übersprang den Job daraufhin — sichtbar als grüner Haken. Nach der Korrektur validiert er wieder gegen den SU-TermServ, und die aufgelaufenen Befunde wurden auf einen Schlag sichtbar.

Möglicherweise betrifft das weitere Module: bei `kerndatensatzmodul-onkologie` und `kerndatensatzmodul-biobank` wird derselbe Job aktuell ebenfalls übersprungen.

---

*Erstellt im Zuge der Migration des Moduls Medikation auf das MII-KDS-Modul-Template. Alle Zahlen sind Messwerte vom 2026-09-02, keine Schätzungen; die Abfragen lassen sich mit dem Client-Zertifikat reproduzieren.*
