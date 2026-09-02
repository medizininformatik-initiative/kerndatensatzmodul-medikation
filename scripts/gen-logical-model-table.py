#!/usr/bin/env python3
"""Render a logical model's differential as a compact Markdown table.

WHY THIS EXISTS
---------------
The IG Publisher ships `{% include StructureDefinition-<id>-dict.xhtml %}` for
"one artifact's elements". For a logical model with ~100 elements that fragment
is unreadable: it prints Definition, Short, Comments, Control, Type, Invariants,
Is Modifier, XML Format and Summary *per element*, and it renders the SNAPSHOT,
so generic FHIR boilerplate (`.id`, `.extension`, `.modifierExtension`) appears
alongside the module's own data elements. Measured on MII LM Medikation:
458 KB of HTML for 98 real rows.

`{% sql %}` is NOT an alternative here, and this was measured rather than
assumed (2026-09-01, IG Publisher 2.3.2): the publisher's `package.db` carries
16 tables, all resource- or terminology-level (`Resources`, `Concepts`,
`Designations`, `ValueSet_Codes`, …). `Resources` has one row per artifact and
no element rows; no table in that schema carries a `path` or `element` column.
`{% sql %}` is the documented replacement for `<fql …>` ACROSS ARTIFACTS, not
within one artifact's element list.

Hence this generator. It reproduces what the Simplifier source page rendered
with `select Datensatz: path, Erklaerung: definition`, plus cardinality.

THE TRADE-OFF, STATED PLAINLY
-----------------------------
The output is a STATIC table. It does not track the logical model on its own —
if the model changes and nobody re-runs this script, the page silently drifts.
That is the price of readability here. Two things keep it honest:

  * the table is written between generated-content markers, so a re-run
    replaces it in place and `git diff` shows the drift; and
  * `--check` exits 1 when the page is out of date, which is what a CI step
    or a pre-release checklist should call.

USAGE
-----
    python3 scripts/gen-logical-model-table.py \
        --sd fsh-generated/resources/StructureDefinition-mii-lm-medikation.json \
        --page input/translations/de/pagecontent/logical-models.md --lang de

    # verify without writing (exit 1 = page is stale)
    python3 scripts/gen-logical-model-table.py --sd … --page … --lang de --check
"""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

BEGIN = "<!-- BEGIN GENERATED: logical-model-table -->"
END = "<!-- END GENERATED: logical-model-table -->"

HEADERS = {
    "de": ("Datensatz", "Kard.", "Erklärung"),
    "en": ("Data element", "Card.", "Description"),
}

# Rendered as the hierarchy indent. Markdown tables collapse plain spaces, so
# a non-breaking entity is the only thing that survives the cell.
INDENT = "&nbsp;" * 4


def rows_from(sd: dict) -> list[tuple[int, str, str, str]]:
    """(depth, name, cardinality, description) for every differential element.

    The differential — not the snapshot — is what the module actually declares,
    which is why no boilerplate filter is needed here.
    """
    elements = sd.get("differential", {}).get("element", [])
    if not elements:
        raise SystemExit("no differential.element in the StructureDefinition — nothing to render")

    root = elements[0]["path"].split(".")[0]
    out: list[tuple[int, str, str, str]] = []
    for element in elements:
        path = element["path"]
        if path == root:
            continue  # the root carries the model's own description, not a data element
        tail = path[len(root) + 1:]
        depth = tail.count(".")
        name = tail.split(".")[-1]

        low, high = element.get("min"), element.get("max")
        card = f"{low}..{high}" if low is not None and high else ""

        text = element.get("definition") or element.get("short") or ""
        text = " ".join(text.split()).replace("|", "\\|")

        out.append((depth, name, card, text))
    return out


def render(rows: list[tuple[int, str, str, str]], lang: str) -> str:
    head = HEADERS.get(lang)
    if head is None:
        raise SystemExit(f"unknown --lang {lang!r}; known: {', '.join(sorted(HEADERS))}")
    # The blank lines around the table are load-bearing: a Markdown table that
    # starts on the line right after an HTML comment is not recognised as a
    # table at all and renders as one run-on paragraph of pipe characters.
    lines = [BEGIN, "", f"| {head[0]} | {head[1]} | {head[2]} |", "|---|---|---|"]
    for depth, name, card, text in rows:
        lines.append(f"| {INDENT * depth}`{name}` | {card} | {text} |")
    lines += ["", END]
    return "\n".join(lines)


def splice(page_text: str, table: str) -> str:
    """Replace the marked block, or append it when the page has none yet."""
    start = page_text.find(BEGIN)
    stop = page_text.find(END)
    if start == -1 or stop == -1:
        return page_text.rstrip("\n") + "\n\n" + table + "\n"
    if stop < start:
        raise SystemExit("generated-content markers are in the wrong order")
    return page_text[:start] + table + page_text[stop + len(END):]


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--sd", required=True, type=Path, help="the logical model's StructureDefinition JSON")
    ap.add_argument("--page", required=True, type=Path, help="the Markdown page to write into")
    ap.add_argument("--lang", default="de", help=f"table headers; one of {', '.join(sorted(HEADERS))}")
    ap.add_argument("--check", action="store_true", help="do not write; exit 1 when the page is stale")
    args = ap.parse_args()

    if not args.sd.is_file():
        raise SystemExit(f"no such StructureDefinition: {args.sd}")
    if not args.page.is_file():
        raise SystemExit(f"no such page: {args.page}")

    sd = json.loads(args.sd.read_text(encoding="utf-8"))
    rows = rows_from(sd)
    table = render(rows, args.lang)

    current = args.page.read_text(encoding="utf-8")
    updated = splice(current, table)

    if args.check:
        if current == updated:
            print(f"up to date: {args.page} ({len(rows)} rows)")
            return 0
        print(f"STALE: {args.page} does not match {args.sd} — re-run without --check", file=sys.stderr)
        return 1

    if current == updated:
        print(f"unchanged: {args.page} ({len(rows)} rows)")
        return 0
    args.page.write_text(updated, encoding="utf-8")
    print(f"wrote {len(rows)} rows to {args.page}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
