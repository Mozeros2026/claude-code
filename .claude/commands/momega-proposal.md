---
description: Proposal Generator (C14) — turn a validated, locked opportunity + terms into a CEO-ready proposal (client-facing; approve before sending).
argument-hint: <node-id> "<opportunity card / terms>" [type]
---

# /momega-proposal

Run the **Proposal Generator** (C14). Usage:
`/momega-proposal <node-id> "<opportunity card + commercial terms>" [type]`.
`type` defaults to `Prospects`.

Argument: `$ARGUMENTS`

## Steps
1. **Require a validated angle + commercial terms** (the opportunity card). If
   commercial parameters are missing, ask for them — do not write the proposal.
   Never generate one for an angle Mo hasn't locked.
2. **Build** per [`frameworks/proposal-generator.md`](../../frameworks/proposal-generator.md):
   6–8 pages, 1-page exec summary, their language, specific approach, real
   timeline, non-negotiable success metrics, one clear ask. Facts from the Brain;
   gaps → `[[ MISSING ]]`.
3. **Write** → `entities/<type>/<id>/drafts/<date>-proposal.md` with
   `status: pending-approval`.
4. **Human checkpoint (hard rule):** client-facing — **never auto-send.** Emit for
   approve/edit/reject; on approval the runtime's delivery step sends it.
