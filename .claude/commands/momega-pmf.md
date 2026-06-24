---
description: PMF Assessment — full product-market-fit + strategy diagnosis of an entity from its canonical Brain.
argument-hint: <node-id> [scope] [type]
---

# /momega-pmf

Run the **PMF Assessment** strategy Factory (C9). Usage:
`/momega-pmf <node-id> [scope] [type]`. `type` defaults to `Prospects`. Default
scope: full PMF diagnosis.

Argument: `$ARGUMENTS`

## Steps
1. **Load** the canonical Brain. No Brain → run `/momega-onboard` first.
2. **Run** the assessment per [`frameworks/pmf-assessment.md`](../../frameworks/pmf-assessment.md):
   what the business actually is, who actually pays and for what, the PMF
   asymmetry diagnosis (the headline), value leaks, ranked strategic levers
   (quick/medium/long), scenario modeling, deck/fundraising readiness, next
   moves, and what would change the assessment. Ground every claim in a Brain
   section; asymmetry first; specificity over generality; never fabricate numbers.
3. **Write** to `entities/<type>/<id>/pmf-assessment.md`.
4. **Feed back** gaps into the Brain (§9) via `/momega-brain ask`.

Offensive complement to `/momega-adversary` (defensive).
