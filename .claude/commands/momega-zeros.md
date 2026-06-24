---
description: Run a Mo Zeros (RIGHT loop) execution pipeline on an entity — operationalize approved insight, with a human checkpoint before anything client-facing.
argument-hint: <node-id> <pipeline: z1|z2|...> [type]
---

# /momega-zeros

Run a **Mo Zeros** pipeline — the execution-heavy RIGHT loop. Usage:
`/momega-zeros <node-id> <pipeline> [type]`. `type` defaults to `Prospects`.

Argument: `$ARGUMENTS`

## Steps

1. **Load** the entity's Brain + the relevant Mo Commas insight (approved
   strategy). Pipelines operationalize *approved* insight.
2. **Run the pipeline** per [`frameworks/primitives.md`](../../frameworks/primitives.md):
   - `z1` Follow-Up Drafter · `z2` Internal Strategy Memo · `z3` Deliverable
     Generator · `z4` ICP List Builder · `z5` Outbound Sequencer · `z6` Calendar +
     Meeting Prep · `z7` Pipeline State Keeper · `z8` Collateral Patcher.
   - `z4`/`z5`/`z6` produce the *logic* (the list, the sequence, the brief); the
     external delivery step is pluggable per runtime, not hardcoded.
3. **Human checkpoint (hard rule).** Anything **client-facing** (z1, z3, z5,
   client deliverables) is written `status: pending-approval` and **never
   auto-sent**. Internal-only work (z2, z4 lists, z6 briefs, z7 state) may run
   autonomously. See [`frameworks/vision.md`](../../frameworks/vision.md).
4. **Write outputs** with frontmatter (`loop: zeros`) per
   [`frameworks/schemas.md`](../../frameworks/schemas.md); drafts → `drafts/`,
   approved/sent → `approved/`, with an audit trail in the Brain.
5. **Re-trigger the flywheel.** New conversations produced here (e.g., an outbound
   reply) feed back to `/momega-commas`.
