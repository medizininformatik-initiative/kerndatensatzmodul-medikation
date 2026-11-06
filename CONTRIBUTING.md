# Contributing

Thank you for contributing to the MII Kerndatensatz Modul Medikation! This page
explains the branching model, the commit convention and how this repository
relates to the MII commenting process. The operational detail of every workflow
is in [`docs/workflows.md`](docs/workflows.md).

## Branching model

- **`master` — the default and integration branch.** Protected; changes arrive
  via pull request. Every push builds an IG preview.
- **`release/**` — release-preparation branches.** The name arms the
  convention check's strict release mode; see [docs/release.md](docs/release.md).
  The module releases with **CalVer `YYYY.n.n`** via the MII Module Release
  Workflow (`module-release.yml` → `go-publish.yml`), never with Release Please.
- **`feature/*`, `change/*`, `fix/*`, `docs/*`, `ci/*`, `chore/*` —
  short-lived working branches.** Branched **off `master`**, one focused change
  each, merged back via PR, then deleted. Name them descriptively
  (`fix/medication-ingredient-cardinality`).
  > **Why short-lived:** long-running branches diverge and become painful to
  > merge; small branches keep review cheap and history legible.

Every pushed branch gets a rendered preview at
`https://medizininformatik-initiative.github.io/kerndatensatzmodul-medikation/branches/<branch>/`
— useful for review even without a pull request. `cleanup-gh-pages.yml` removes
the preview once the branch is deleted.

`fsh-generated/` is build output and is never committed; edit the FSH sources
under `input/fsh/`.

### Flow — making one change

1. Branch `<type>/<topic>` off `master`.
2. Commit using Conventional Commits (cheat-sheet below); open a PR
   **targeting `master`**.
3. On green CI + review, merge into `master` and delete the branch.

## Conventional Commits — cheat-sheet

Every commit message and PR title follows
[Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/):
`<type>: <short description>` — for example `fix: relax Medication.ingredient`.

| Type | Use for |
| --- | --- |
| `feat` | A new capability (profile, extension, value set, page) |
| `fix` | A bug fix |
| `docs` | Documentation only |
| `chore` | Maintenance (configs, housekeeping) |
| `ci` | CI workflow changes |
| `refactor` | Restructuring, no behavior change |
| `test` | Adding or fixing tests |

Breaking change: add `!` after the type (`feat!: …`) and explain the break in
the commit body. The CalVer version is set by hand at release time, not
computed from the commits.

## Pull request expectations

- One focused change per PR; keep diffs reviewable.
- PRs target `master`.
- CI must be green before merge.
- Please follow the [Code of Conduct](CODE_OF_CONDUCT.md).

## How this relates to the MII process

Everything above is **this repository's** workflow. It is not an MII rule, and
this repository does not speak for the MII.

The MII publishes rules for commenting on a Kerndatensatz module in the
[**KDS governance, version 4.0 (7 May 2026)**](https://www.medizininformatik-initiative.de/sites/default/files/2026-07/KDS-Governance-v4.pdf),
adopted by the National Steering Committee and linked from the
[MII core-data-set page](https://www.medizininformatik-initiative.de/en/medical-informatics-initiatives-core-data-set):

- **Where comments go.** After FHIR profiling, a module runs a commenting round.
  Comments are filed either through the HL7 Deutschland ballot portal **or as an
  issue in the module's own GitHub repository** (§5.1.2) — so this repository's
  issue tracker is a sanctioned channel, not an informal one.
- **Who may comment, and for how long.** Anyone may comment; the round is
  announced in advance and runs for a defined window (§3.5.4). Voting on an HL7
  ballot is a separate matter and is restricted to HL7 Deutschland members.
- **The module team must answer.** Every comment is answered — accepted or
  rejected, with a reason (§3.5.4).
- **Comments are public by default.** A commenter may ask for their identity to
  be pseudonymised.

The one participation rule published organisation-wide is how to request GitHub
access, on the
[MII organisation profile](https://github.com/medizininformatik-initiative/.github/blob/main/profile/README.md):
email the Geschäftsstelle with the subject *"Zugang zum GitHub der MII"*.

> **Cite version 4.0, not what you may find first.** The
> `medizininformatik-initiative/kerndatensatz-governance` repository still
> announces version 3, ships no document and has not been touched since January
> 2024. Version 3.0's tooling chapter — GitHub, SharePoint, Simplifier, Zulip
> access — was **removed** in 4.0 and replaced by an appendix marked *in
> Arbeit*, so those instructions are no longer published guidance.
