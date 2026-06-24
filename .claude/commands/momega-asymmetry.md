---
description: Asymmetry Detector (C12) — surface what an entity is sitting on blind from a transcript/materials + Brain.
argument-hint: <node-id> [type]
---

# /momega-asymmetry

Run the **Asymmetry Detector** (C12). Usage: `/momega-asymmetry <node-id> [type]`.
`type` defaults to `Prospects`. Runs in parallel with the Brain Builder on a new
conversation (the discovery trio: asymmetry + opportunities + brain).

Argument: `$ARGUMENTS`

## Steps
1. **Load** the latest transcript/materials + the Brain if it exists.
2. **Detect** per [`frameworks/asymmetry-detector.md`](../../frameworks/asymmetry-detector.md):
   narrative-vs-reality, idle assets, misaligned revenue, founder-vs-operator
   gaps — each grounded in a quote/number, severity sized by *opportunity* not
   just risk. No fabrication, no strategy, no recommendations.
3. **Write** → `entities/<type>/<id>/insights/<date>-asymmetry.md`.
4. **Feed forward** to `/momega-opportunities` (its angles build on this) and
   route validated gaps into the Brain via `/momega-brain ask`.
