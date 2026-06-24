---
description: Opportunities Brainstormer (C13) — generate hypothetical GTM angles for an entity from its asymmetries + Brain.
argument-hint: <node-id> [type]
---

# /momega-opportunities

Run the **Opportunities Brainstormer** (C13). Usage:
`/momega-opportunities <node-id> [type]`. `type` defaults to `Prospects`.

Argument: `$ARGUMENTS`

## Steps
1. **Load** the Asymmetry Detector report (C12) + Brain + any cross-portfolio
   context from [`bag/`](../../bag/).
2. **Brainstorm** per [`frameworks/opportunities-brainstormer.md`](../../frameworks/opportunities-brainstormer.md):
   pure "what if" angles (same product/new buyer, byproduct-as-revenue,
   licensing, adjacent relationships, …) — each grounded in assets they actually
   have, rough revenue scale, positioning frame. No filtering, no evaluation.
3. **Write** → `entities/<type>/<id>/insights/<date>-opportunities.md`.
4. **Hand to the checkpoint** — Mo picks an angle + locks terms → `/momega-proposal`.
