---
description: Trust-Building Sequencer (C11) — ordered touch-plan that earns the right to ask, grounded in a counterparty's SCARF/wound/somatic. Internal plan only; never sends.
argument-hint: <node-id> <person-slug> [type] [--ask "<target ask>"]
---

# /momega-sequence

Run the **Trust-Building Sequencer** (C11) — produce the ordered touch-plan that
earns the right to ask, grounded in the counterparty's wound / SCARF / somatic
read. Usage: `/momega-sequence <node-id> <person-slug> [type] [--ask "<target>"]`.
`type` defaults to `Prospects`. Spec:
[`frameworks/mo-commas/c11-trust-sequencer.md`](../../frameworks/mo-commas/c11-trust-sequencer.md).

Argument: `$ARGUMENTS`

## Steps
1. **Load** the node Brain (`entities/<type>/<id>/brain.md`) for the ask + the
   §8 Locked Decisions / §12 DO-NOT-SAY constraints, and the counterparty
   `psyche-profile.md`. No profile → tell the user to run `/momega-persona` first
   (a sequence without the wound read is a guess). No Brain → `/momega-onboard`.
2. **Name the ask + the gap.** State the target ask (`--ask`, else infer from
   Brain §13/§14) and current trust level (cold/warm/established, from §2 + L07).
3. **Read the wound → set the pace.** Pull profile L01 wound, L02 somatic
   fingerprint, L03 SCARF + voice, L06 how-to-engage / what-lands / what-kills-it
   + state (`as_of`). The somatic read sets cadence (freeze → slow/high-certainty;
   warrior → direct/competence; fawn → don't exploit accommodation). Stale read
   `as_of` >90d → flag and re-sync before sequencing.
4. **Sequence the touches (ordered).** Early touches give value with **zero ask**;
   each touch pulls one SCARF lever and avoids the landmine domain; the ask appears
   only after the trust ledger is positive, phrased their way and honoring §8/§12.
   Add a read-and-adjust branch per touch (advance | repair). Cite the profile §
   that justifies each touch; tag reads `[[ INFERENCE: 1-5 ]]` (the wound is a
   hypothesis). No invented history → `[[ HITL ]]`.
5. **Write** to `entities/<type>/<id>/people/<slug>/trust-sequence.md`, ending with
   the constraints honored + a `SOURCE MANIFEST` (Brain version §s, profile version
   + `as_of` + layers used).

## Delivery boundary (explicit)
C11 emits the **plan, not the touches.** It **never sends** an email, message, or
invite. Executing any touch is a separate step through the **human checkpoint**
(CLAUDE.md #4) and the integration-gated delivery path (outbound is pluggable per
runtime, like Z5/Z6 — not hardcoded here). Per-touch drafts, when authored, are
`status: pending-approval`. This skill's job ends at the approved plan.

## Loop
The sequence is living: after each touch, route the response through
`/momega-persona-sync` (updates profile state + L07 ledger), then re-run
`/momega-sequence` surgically — re-read only the un-sent touches + the updated
SCARF/state and adjust the remainder (advance / insert a repair touch / re-pace),
not the whole plan. `/momega-audit` flags an active sequence whose profile has
moved since the last touch as **due an adjust**.

Pairs with `/momega-prep` (preps the single meeting where a touch/ask lands) and
draws warm-intro first-touches from `/momega-synergy`.
