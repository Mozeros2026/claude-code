---
description: Investment Evaluation Factory — score a node through the investor lenses, sourced from its canonical Brain.
argument-hint: <node-id> [type]
---

# /momega-evaluate

Investment Evaluation Factory. Usage: `/momega-evaluate <node-id> [type]`
(`type` defaults to `Prospects`). Consumes the entity's canonical Brain and emits
`entities/<type>/<id>/evaluation.md`.

Argument: `$ARGUMENTS`

## Steps

1. **Export from the Brain.** Per [`frameworks/brain-builder.md`](../../frameworks/brain-builder.md)
   EXPORT mode, pull `brain.md` Sections 0, 2, 3, 4, 6, 10, 13, 14 plus all
   `[[ ASYMMETRY ]]`, `[[ DEPENDENCY ]]`, `[[ RISK ]]` tags. **Deliverable
   Sourcing Rule:** every claim in the evaluation must trace to the Brain. If a
   needed fact is missing, file it as a Brain gap (§13/§14) and run
   `/momega-brain ask` — do not fabricate.
2. **Score** against [`frameworks/business-evaluation.md`](../../frameworks/business-evaluation.md):
   the 13-slot deck order + the three lenses (YC / first-principles / smart-money)
   + overall verdict (pass / track / lean-in) + the gates that must clear.
3. **Write** `evaluation.md` citing Brain sections inline.
4. **Learn** — push any new decision-relevant question or investor preference back
   into the Brain (§13/§14) and the Persona/Business Forge loop.
5. **Report** — the scorecard, verdict, and the gates.

If `brain.md` doesn't exist yet, run `/momega-onboard <id>` first.
