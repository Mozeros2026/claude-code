# Persona Forge — map the wound, update surgically

> **PERSONA FORGE** — we don't just *remember* people, we **map the wound beneath
> the behavior** and update it **surgically**, so every conversation makes every
> future one sharper. **Touch only what changed; spend only where the signal
> lands.**

A **horizontal** skill: it runs on the **humans** across *any* entity's deal. It
**harvests** public signal + disciplined inference, but its real job is **depth** —
finding the core driver (the wound) that *explains* the behavior, so we can
navigate the human, not just file them. Reconstructed from the vault's "HITL Actor
Dossier" + Mo's stated essence above. ⚠️ Paste the original prompt and I'll
reconcile. Run: `/momega-persona <entity-id> [actor]`.

## The two things that make it Persona Forge (not a CRM)

### 1. The wound beneath the behavior
Surface persona (role, style, incentives) is table stakes. The leverage is the
**core driver** — what the person is *protecting*, the formative pattern that
predicts how they'll act under pressure, what they'll never risk, what a deal must
honor. Behavior is the symptom; the wound is the cause. Map it as a **hypothesis**
(`[[ INFERENCE: 1-5 ]]`), grounded in observed evidence (career moves, what they
repeat, what they defend, what they avoid) — decision-relevant, never gratuitous
armchair diagnosis. *Example shape:* "Built and sold three staffing firms →
protects culture/people above price; a deal that threatens his people is a
non-starter, regardless of multiple."

### 2. Surgical, lean updates — root not surface
A persona is **living**. Every conversation sharpens it. But:
- **Fix at the root, everywhere — not the surface.** When a fact changes (a name
  is wrong — *Neil vs Neal* — a role flips, a driver is disconfirmed), correct it
  at the source and propagate everywhere it appears. No stale duplicates.
- **Touch only what changed.** Don't rebuild the dossier; edit the cell that moved.
- **Spend only where the signal lands.** Effort goes to the high-signal change,
  not a full re-pass. Cheap to update, so it actually gets updated.
- **Cumulative:** each interaction makes the next read sharper — the dossier is
  the running memory of the human, not a one-time snapshot.

> This "always do it the lean way — root not surface, touch only what changed"
> discipline is a standing rule (see [`../CLAUDE.md`](../CLAUDE.md)); Persona Forge
> is where it lives most literally.

## Output — one dossier per actor (`entities/<type>/<id>/actor-dossier.md`)

```
ACTOR DOSSIER — <entity> | <date>

## <ACTOR NAME> — <role>
HUMAN PROFILE (Public & Inferred): current role · background (cited) · visibility
WHAT WE KNOW — firm data: [verifiable, cited]
CORE DRIVER / THE WOUND (hypothesis): [[ INFERENCE: 1-5 ]] — what they protect,
  the formative pattern, what they'll never risk, what a deal must honor
INFERRED BEHAVIORAL BASELINE: operating + decision style [[ INFERENCE ]]
INCENTIVES & RISK POSTURE
VOICE & COMMUNICATION (if transcripts)
GAPS / UNKNOWNS: [[ HITL ]] / [[ FOUNDER ]]
HOW TO ENGAGE: what lands, what kills it (tie back to the wound)
LAST UPDATED: <date> — <what changed> (surgical-update log)
```
End with a **CAST SUMMARY**: who decides / influences / blocks + the single
highest-leverage relationship move.

## Core rules
- **Public vs inferred, always separated** — facts cited; psychology tagged
  `[[ INFERENCE ]]`; the wound is a hypothesis, never asserted as fact.
- **Zero confabulation** — no invented bios/quotes/motives; missing → a gap.
- **Decision-relevance over biography** — map the human to navigate the deal.
- **Surgical updates** — on new signal, edit the root, log it in LAST UPDATED,
  leave the rest untouched.

## Where it fits
Horizontal — part of full ingestion (`/momega-onboard`) for any deal with named
human counterparties. Feeds the smart-money lens (buyer/investor psychology), the
Trust-Building Sequencer (C11), and outreach (voice + what-moves-them).
