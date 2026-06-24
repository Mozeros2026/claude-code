# Primitives — the encoded skills

> Mo's skill is not one move; it's a judgment loop of discrete operations. Each is
> encoded as its own skill, grounded in [`case-studies.md`](case-studies.md). The
> infra from Build Spec v1 (n8n workflows, OpenClaw) is dropped; the **primitive
> logic** is what we lift. Each primitive reads/writes the canonical Brain
> ([`brain-builder.md`](brain-builder.md)).

## How primitives map to our architecture

- **Library** = Brain Builder (C1) — the knowledge layer both loops use.
- **Mo Commas (LEFT / judgment)** = C2–C14, plus **Investment Evaluation** (added,
  beyond Mo's roster). Run cognitive primitives with `/momega-commas`; named
  specialists have their own commands.
- **Mo Zeros (RIGHT / execution)** = Z1–Z9. Run with `/momega-zeros`.
- Client-facing outputs pass a **human checkpoint** before sending.

## Canonical roster → the Artifact Library

The authoritative, numbered index of every module + its status lives in
**[`../registry/artifact-library.md`](../registry/artifact-library.md)** (lifted
from Artifact Library v3 — "the Library is truth"). Numbering there supersedes
this file. Quick orientation:

- **Built (v1 Candidate):** C2 Shape Listener · C3 Pain Hypothesizer · C4 Adjacent
  Market Mapper · C5 Compressor (Deck OS) · C8 Adversary · C9 PMF · C10 Brain
  Query · C12 Asymmetry Detector · C13 Opportunities Brainstormer · C14 Proposal
  Generator · Z1 Follow-Up · Z2 Strategy Memo · Z3 Deck OS · + Investment Evaluation.
- **Planned:** C6 Cross-Bag Synergy · C11 Trust Sequencer · Z4–Z9.
- **Merged:** C7 Sales-Maturity → PMF (C9). **Deferred:** X1 Router.

> Numbering reconciled 2026-06-24 to Artifact Library v3 (Build Spec v1's C1–C7
> was outdated). The three Mo Commas primitive files were renamed C2/C3/C4.

## Discovery trio (parallel ingestion)

On a new conversation, three run **simultaneously** (zero dependencies): C1 Brain
Builder ("what they are") + C12 Asymmetry Detector ("what's wrong") + C13
Opportunities Brainstormer ("what else") → human picks an angle + locks terms →
C14 Proposal Generator. See [`momega-os.md`](momega-os.md).

## Phasing (runtime-agnostic)

- **Phase 1 — minimum loop:** C2, C3, C4, Z1, Z2 → strategy memo + drafted
  follow-up → human checkpoint. *(built)*
- **Phase 2:** C5, C6, Z4–Z7. **Phase 3:** C11, Z8, Z9.

## Primitive prompt design pattern (author every skill this way)

```
ROLE:    one sentence — what this primitive does
INPUT:   exact format expected (usually: a Brain export or a transcript)
PROCESS: numbered cognitive moves, each referencing the relevant case study
OUTPUT:  exact structured output, writable to the Brain / an insight file
DO NOT:  failure modes — hallucinating buyer psychology, generic frameworks,
         confabulating signal instead of saying "ask the human"
EXAMPLES: case-study input → output (see case-studies.md), 2–3 worked
```
