# Z7 — Meeting Prep (Mo Zeros)

> The **pre-meeting walk-in brief**. Before any conversation with a node, this
> Factory composites the deal Brain and the people in the room into a single
> one-page read: who you're talking to, what they actually care about, the asks
> you're making, the traps that will get sprung, and the one next-step you're
> driving to. It is the highest-leverage five minutes before a meeting. A typed
> instance of [`z4-deliverable-generator.md`](z4-deliverable-generator.md) that
> *composites two libraries* — the deal Brain **and** the counterparties'
> psyche-profiles. Internal only; consumes both, builds neither.

**ROLE:** Produce a one-page "walk-in" brief for a specific meeting on a node,
grounded in the Brain's open items + each counterparty's psyche-profile.

## Input
- The node id + entity type (`entities/<type>/<id>/brain.md`, latest version).
- The **counterparties** in the room (person slugs). Default: everyone with a
  `psyche-profile.md` under `entities/<type>/<id>/people/` (+ standalone person
  nodes if named). No profile for a named attendee → flag it, run on the Brain's
  §2 People line, and note the persona gap.
- Optional: meeting purpose / agenda (sharpens the "asks" and "next-step").
- No Brain → `"No Brain loaded for <id>. Run /momega-onboard first."`

Writes to `entities/<type>/<id>/prep/<date>-<meeting-slug>.md`.

## Export Package (what it pulls — and only this)
- **Brain §13** Open Items — Advisor (HITL) and **§14** Open Items — Founder
  Follow-up → the live asks/unknowns this meeting can close.
- **Brain §8** Locked Decisions and **§12** Call Sheet → what's settled (don't
  re-litigate) and the self-contained deal facts.
- **Latest deliverables** if present — `adversary.md` (the traps), `pmf-assessment.md`
  / `evaluation.md` (the thesis), `opportunities.md` (the angle). Cite, don't
  re-derive.
- **Per counterparty** from `psyche-profile.md`: L01 wound (the driver beneath
  the behavior), L02 **somatic fingerprint** (how they move through pressure),
  L03 **SCARF** profile + voice/power moves, L06 **how to engage / what lands /
  what kills it** + this-week's estimated state (`as_of`). If a crosswalk or
  `actor-dossier.md` exists, pull the cast summary + the highest-leverage move.

## Output format (exact)
```
MODE: Meeting Prep · NODE: <name> | BRAIN v<date> · MEETING: <purpose> · <date>

## WHO'S IN THE ROOM
- <Name> (<role/decision-power: decides|influences|blocks>) —
  cares about: <SCARF-grounded, profile L03/L06 §> · somatic: <fingerprint, as_of> ·
  lands: <what works> · kills it: <what to avoid> · [profile §]

## WHAT THEY CARE ABOUT (the table read)
The 2–3 things that actually move this room, ranked. Each tied to a wound/SCARF
driver and a Brain fact. [profile § + Brain §]

## THE ASKS (what we're driving to)
- ASK: <the thing we want> — why now [Brain §13/§14] — phrased their way [profile §06]

## THE TRAPS (what gets sprung)
- TRAP: <kill-shot question / objection> — source [adversary.md / Brain §10] —
  pre-empt: <how to handle, tuned to who asks it>

## SETTLED — DO NOT REOPEN
Locked decisions + DO-NOT-SAY lines. [Brain §8 / §12]

## THE NEXT STEP (single, low-friction)
The one outcome that earns the next meeting. [Brain §13/§14, opportunities.md]

## MISSING FROM BRAIN / PROFILES
- GAP: <what we'd want to know walking in> → §13/§14 | persona-sync <slug>

## SOURCE MANIFEST
Brain v<date> §<list> · profiles: <slug vN.M (as_of), ...> · deliverables: <files>
```

## Core rules
- **Library → Factory, cited.** Every line traces to a Brain section **or** a
  profile section; ungrounded → drop it. Facts cite; reads of the room are tagged
  `[[ INFERENCE: 1-5 ]]`. The wound is a hypothesis, never asserted (persona
  schema lens 1).
- **One page, scannable.** This is read in the elevator. Rank ruthlessly; the top
  trap beats five minor ones. No biography — decision-relevance only.
- **Honor staleness.** A persona read `as_of` >90d is flagged STALE in the brief
  (don't present a six-month-old somatic read as current truth).
- **No fabrication.** No invented attendees, quotes, or motives. A named attendee
  without a profile is a flagged gap, not a guess.
- **Internal only.** This is *our* walk-in read — it includes the unvarnished
  trap analysis. It never ships to the counterparty.

## Loop (not a one-shot)
Re-run before every meeting; it's cheap because the inputs are pre-built (Brain +
profiles already exist — this only composites). When a fresh signal lands
(a reply, a call note), it routes first through `/momega-persona-sync` (updates
the profile) and `/momega-brain ask` (updates §13/§14), **then** the next prep
re-composites from the now-current libraries. The audit flags a node with an
upcoming meeting and no current-Brain-version prep as **due**.

## Never
Update the Brain or a profile (route signals to their own loops) · invent an
attendee or a motive · present a stale read as current · produce a client-facing
artifact · skip the next-step (a brief with no single next move failed).

## Relationship to neighbors
Z7 *composites* what [`../adversary.md`](../adversary.md) (the traps),
[`../pmf-assessment.md`](../pmf-assessment.md) (the thesis), and the
[persona profiles](../persona-forge-schema.md) (the room) already produced — it
synthesizes, it doesn't re-derive. Pairs with
[`../mo-commas/c11-trust-sequencer.md`](../mo-commas/c11-trust-sequencer.md):
C11 plans the *sequence of touches before* the ask; Z7 prepares the *single
meeting* where an ask lands.
