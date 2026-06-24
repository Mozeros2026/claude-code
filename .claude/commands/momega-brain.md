---
description: Run the Brain Builder lifecycle on an entity — build, update, ask, or export the canonical Brain.
argument-hint: <build|update|ask|export> <node-id> [deliverable] [type]
---

# /momega-brain

Brain Builder runtime (the Library). Usage:
`/momega-brain <mode> <node-id> [deliverable] [type]`.

Argument: `$ARGUMENTS`

Always operate per [`frameworks/brain-builder.md`](../../frameworks/brain-builder.md).
The canonical Brain lives at `entities/<type>/<id>/brain.md`. `type` defaults to
`Prospects`.

## Modes

- **build** — full BUILD protocol; write `brain.md` v1.0; register the node.
  (Same as `/momega-onboard`; use that for a brand-new entity.)
- **update** — integrate answered HITL/Founder items + any new materials in place;
  re-run public delta + per-partner press cross-check; re-classify asset classes
  if material change; re-assess Export Readiness; bump version (v1.0→v1.1 partial,
  →v2.0 major or post-Founder-Q&A); **re-output the full Brain.** Never a diff.
- **ask** — accept partial answers (any format); map each to its §13/§14 question;
  update affected sections in place with attribution; add only cascading questions
  that pass Necessity/Specificity/Routing; bump to v.X.5; **output affected
  sections + Section 0 + a changelog only.**
- **export `<deliverable>`** — read-only. Assemble the Brain sections + context a
  Factory needs (e.g. `deck`, `outreach`, `call-prep`, `icp`, `pmf`, `adversary`,
  `evaluation`, `founder-email`). Output a clean package (no preamble), ending
  with a `MISSING FROM BRAIN` block. Do **not** build the deliverable; do **not**
  bump the version.

## Examples

- `/momega-brain ask wisdm` — fold in Shad's answers, bump to v1.5.
- `/momega-brain export wisdm founder-email` — emit the §14 email to send Shad.
- `/momega-brain export wisdm evaluation` — package for the eval Factory.
- `/momega-brain update wisdm Investors` — full re-output after major change.
