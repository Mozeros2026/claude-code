# Trust-Building Sequencer — C11 (Mo Commas)

> Trust is built in a **sequence**, not a single touch. Before any ask lands, a
> counterparty's nervous system has to register safety, status, and competence —
> in an order their wound can accept. C11 takes a node + a counterparty persona
> and produces the **ordered touch-plan that earns the right to ask**, grounded in
> the persona's SCARF / wound / somatic read. It emits an **internal plan/draft
> only** — it does **not** send anything; delivery is a separate,
> integration-gated step (the boundary is explicit below). Consumes the Brain +
> the psyche-profile; builds neither.

## Input
- The node id + entity type (`entities/<type>/<id>/brain.md`, latest version) —
  for the deal context, the ask we're building toward, and §8 Locked Decisions /
  §12 DO-NOT-SAY constraints.
- The **counterparty** (`psyche-profile.md` under the node's `people/`, or a
  standalone person node). No profile → `"No psyche-profile for <slug>. Run
  /momega-persona first."` (a sequence without the wound read is a guess).
- Optional: the **target ask** (what we're sequencing toward) + a time horizon.
  No ask given → infer the next-step from Brain §13/§14 and state it.

Writes to `entities/<type>/<id>/people/<slug>/trust-sequence.md`
(status: `internal` / `pending-approval` per touch — see the boundary).

## Export Package (what it pulls)
- From the profile: **L01 wound** (the driver — every touch must honor it, never
  abrade it), **L02 somatic fingerprint** (warrior / freeze / fawn / collapse →
  the *pace and pressure* the sequence can carry), **L03 SCARF** (which of
  Status / Certainty / Autonomy / Relatedness / Fairness is hot — the lever and
  the landmine), L03 voice/influence pattern, **L06 how-to-engage / what-lands /
  what-kills-it** + this-week state (`as_of`).
- From the Brain: the ask + the constraints (§8/§12), the relationship history
  if logged (§2 People), and any warm-intro path from
  [`c6-cross-bag-synergy.md`](c6-cross-bag-synergy.md) that seeds touch 1.

## Process
1. **Name the ask + the gap.** State the target ask and the current trust level
   (cold / warm / established, from Brain §2 + profile L07). The sequence spans
   that gap — no further.
2. **Read the wound → set the pace.** The somatic fingerprint sets cadence: a
   **freeze/avoidant** system needs low-pressure, high-certainty, slow touches; a
   **warrior** system respects directness and competence and reads over-courting
   as weakness; a **fawn** system needs you to *not* exploit their
   accommodation. Wrong pace burns the relationship — this is the whole game.
3. **Pick the SCARF lever per touch.** Each touch *raises* the hot SCARF domain
   (give status, manufacture certainty, protect autonomy, build relatedness, prove
   fairness) and *avoids* the landmine domain. Tag which lever each touch pulls.
4. **Sequence the touches (ordered).** Earliest touches give value with **zero
   ask** (earn the right); the ask appears only after the trust ledger is positive.
   Each touch = {when (relative), channel-type, intent, SCARF lever, what-lands
   content hint, what-would-kill-it}. Cite the profile section that justifies it.
5. **Place the ask.** The ask lands at the touch where the sequence has earned it,
   phrased the counterparty's way (L03 voice, L06 what-lands), honoring §8/§12.
6. **Define the read-and-adjust rule.** Each touch has a *signal to watch* (did it
   land?) and a branch: positive → advance; flat/negative → a repair/slow-down
   touch before re-attempting. The sequence is adaptive, not a fixed drip.

## Output format (exact)
```
MODE: Trust Sequence · NODE: <name> | PERSON: <slug> | BRAIN v<date> · PROFILE v<vN.M> (as_of)

ASK (target): <the thing we're earning the right to ask> [Brain §13/§14]
TRUST NOW: <cold|warm|established> · WOUND: <L01, one line> · SOMATIC: <fingerprint> · HOT SCARF: <domain>
PACE: <what the nervous system can carry — from L02>  [profile §]

## THE SEQUENCE (ordered)
T1 · <when> · <channel-type> — intent: <give value, no ask>
    SCARF lever: <domain ↑> · lands: <content hint> · kills it: <avoid> · [profile §]
    watch-for: <signal it landed> → advance | repair
T2 · ...
...
Tn · THE ASK — <the ask, phrased their way> [Brain §8/§12 honored] · [profile §06]

## READ-AND-ADJUST
Per touch: the positive signal → advance; the flat/negative signal → <repair move>.

## CONSTRAINTS HONORED
Locked decisions / DO-NOT-SAY observed. [Brain §8 / §12]

## SOURCE MANIFEST
Brain v<date> §<list> · profile <slug> vN.M (as_of) §<L01/L02/L03/L06>
```

## The delivery boundary (explicit)
C11 produces **the plan, not the touches.** It writes an internal sequence; it
**never sends** an email, message, or invite. Executing a touch is a separate
step that goes through the **human checkpoint** (CLAUDE.md #4) and the
integration-gated delivery path (the same boundary Z5/Z6 carry — outbound
delivery is pluggable per runtime, not hardcoded here). Each touch's draft, when
authored, is `status: pending-approval`. C11's job ends at the approved plan.

## Loop (not a one-shot)
The sequence is **living**. After each touch, the response is a new signal →
route it through `/momega-persona-sync` (updates the profile state + L07 ledger),
then re-run C11 surgically: re-read only the touches not yet sent + the updated
SCARF/state, and adjust the remainder (advance / insert a repair touch / re-pace).
Don't rebuild the whole plan — spend where the signal lands (the lean way). The
audit flags an active sequence whose profile has moved since the last touch as
**due an adjust**.

## Core rules
- **Grounded in the wound, every touch.** No touch without a profile-section cite;
  the wound is a hypothesis (persona schema lens 1), so the sequence is a
  best-read plan, tagged `[[ INFERENCE: 1-5 ]]`, not a certainty.
- **Value before ask** — the ask never appears before the trust ledger is positive.
- **Honor staleness** — a state read `as_of` >90d is flagged; re-sync before
  sequencing on a cold read.
- **No fabrication** — no invented history, no assumed warmth; missing → `[[ HITL ]]`.
- **Internal only / delivery-gated** — see the boundary above.

## Never
Send anything (plan only; delivery is checkpoint-gated) · update the Brain or
profile (route signals to their loops) · sequence without a wound read · place the
ask before the sequence earns it · violate §8/§12 · present a stale state as current.

## Relationship to neighbors
C11 consumes the [persona profile](../persona-forge-schema.md) (the wound/SCARF/
somatic read) and the warm-intro paths from
[`c6-cross-bag-synergy.md`](c6-cross-bag-synergy.md). It's the *pre-ask*
counterpart to [`../mo-zeros/z7-meeting-prep.md`](../mo-zeros/z7-meeting-prep.md)
(C11 plans the *run-up of touches*; Z7 preps the *single meeting* where a touch/
ask lands) and to [`../mo-zeros/z1-follow-up-drafter.md`](../mo-zeros/z1-follow-up-drafter.md)
(Z1 writes one approved touch; C11 orders the whole arc).
