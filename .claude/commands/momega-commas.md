---
description: Run a Mo Commas (LEFT loop) judgment primitive on an entity — listening, translation, judgment.
argument-hint: <node-id> <primitive: c1|c2|c3|...|all> [type]
---

# /momega-commas

Run a **Mo Commas** primitive — the judgment-heavy LEFT loop. Usage:
`/momega-commas <node-id> <primitive> [type]`. `type` defaults to `Prospects`.

Argument: `$ARGUMENTS`

## Steps

1. **Load context.** Read the entity's canonical Brain
   (`entities/<type>/<id>/brain.md`) and any new transcript/material. Primitives
   read the Brain; they don't re-gather facts (Deliverable Sourcing Rule).
2. **Run the primitive(s)** per its spec in
   [`frameworks/primitives.md`](../../frameworks/primitives.md):
   - `c1` Shape Listener · `c2` Pain Hypothesizer · `c3` Adjacent Market Mapper ·
     `c4` Compressor · `c5` Cross-Bag Synergy · `c6` Sales-Maturity Diagnoser ·
     `c7` Trust-Building Sequencer · `eval` Investment Evaluation.
   - `all` (or no primitive) runs the Phase-1 core in parallel: **c1 + c2 + c3**.
   Follow the ROLE/INPUT/PROCESS/OUTPUT/DO NOT/EXAMPLES pattern; ground in
   [`frameworks/case-studies.md`](../../frameworks/case-studies.md).
3. **Write outputs** to `entities/<type>/<id>/insights/<date>-<primitive>.md`
   with frontmatter (`loop: commas`) per
   [`frameworks/schemas.md`](../../frameworks/schemas.md).
4. **Feed back.** Route new `[[ FOUNDER ]]`/`[[ HITL ]]`/`[[ ASYMMETRY ]]` into
   the Brain (§13/§14) via `/momega-brain ask`.
5. **Guardrail.** Where signal is missing, say "ask the human" — never
   confabulate buyer psychology.

These outputs feed Mo Zeros (`/momega-zeros`) for execution.
