---
description: Adversary — ruthlessly red-team an entity from its canonical Brain; find the kill shots before the market does.
argument-hint: <node-id> [focus] [type]
---

# /momega-adversary

Run the **Adversary** red-team Factory (C8). Usage:
`/momega-adversary <node-id> [focus] [type]`. `type` defaults to `Prospects`.

Argument: `$ARGUMENTS`

## Steps
1. **Load** the canonical Brain (`entities/<type>/<id>/brain.md`). No Brain → tell
   the user to run `/momega-onboard` first.
2. **Run** the red-team per [`frameworks/adversary.md`](../../frameworks/adversary.md):
   kill-shot questions, unresolved PMF asymmetries, diligence traps, strategic
   gaps, team risks, contradictions, unasked questions, second-order risks, and
   the single biggest exposure. Ground every flag in a Brain section; pair each
   with a pre-empt. Ruthless, not theatrical. No fabrication.
3. **Write** to `entities/<type>/<id>/adversary.md`.
4. **Feed back** any Brain gaps found (§7 Unasked Questions) into the Brain via
   `/momega-brain ask` — don't write to the Brain from here.

Defensive complement to `/momega-pmf` (offensive) and `/momega-evaluate` (score).
