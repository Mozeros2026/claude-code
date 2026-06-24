---
description: Brain Query — answer a single question about an entity from its canonical Brain, sourced and cited (read-only).
argument-hint: <node-id> <question> [type]
---

# /momega-query

Run the **Brain Query** Factory (C10) — read-only, cited Q&A. Usage:
`/momega-query <node-id> <question> [type]`. `type` defaults to `Prospects`.

Argument: `$ARGUMENTS`

## Steps
1. **Load** the canonical Brain. No Brain → "No Brain loaded for <id>. Run
   `/momega-onboard` first." No question → ask for one.
2. **Answer** per [`frameworks/brain-query.md`](../../frameworks/brain-query.md):
   direct 1–5-sentence answer, cite Brain section(s), state confidence, surface
   relevant `[[ HITL ]]`/`[[ FOUNDER ]]`/`[[ CONTRADICTION ]]`/`[[ ASYMMETRY ]]`
   tags. Answer from the Brain only — no general knowledge, no fabrication.
3. **Redirect** deliverable/red-team/strategy/score asks to `/momega-deck`,
   `/momega-adversary`, `/momega-pmf`, `/momega-evaluate`.

Read-only. To *update* the Brain with new answers, use `/momega-brain ask`.
