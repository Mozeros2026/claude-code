# Persona Forge — map the wound, update surgically

> **PERSONA FORGE** — we don't just *remember* people, we **map the wound beneath
> the behavior** and update it **surgically**, so every conversation makes every
> future one sharper. **Touch only what changed; spend only where the signal
> lands.**

Persona Forge is to **people** what the Brain Builder is to **businesses**. It is
a **first-class, always-active** capability — not a CRM, not a contact note. Like
we build a client Brain for every company, we build a **psyche-profile** for every
person we develop real relationship depth with. Same source-discipline (public
cited / inference tagged / zero confabulation), same Library→Factory logic, same
living loop.

This file is the **overview**. The contract is the schema; two skills run it.

## The system in three parts

| Part | What | Skill / file |
|------|------|--------------|
| **Schema** (source of truth) | 7 layers + 3 lenses + the learning loop + routing table. Every profile inherits it, so depth is structural. | [`persona-forge-schema.md`](persona-forge-schema.md) |
| **Engine** (build / deep pass) | First build of a person, or a rare quarterly deep rebuild. Reads everything → synthesizes → writes the whole `psyche-profile.md`. | `/momega-persona` |
| **Loop** (continuous) | Every subsequent signal. Classify → route to affected sections → Edit (diff, not rewrite) → append the ledger → bump version. **~10× cheaper** than a rebuild; this is the default path. | `/momega-persona-sync` |

## The two things that make it Persona Forge (not a CRM)

### 1. The wound beneath the behavior
Surface persona (role, style, incentives) is table stakes. The leverage is the
**core driver** — what the person is *protecting*, the formative pattern that
predicts how they act under pressure, what they'll never risk, what a deal must
honor. Surface traits (legitimacy hunger, urgency, control, people-pleasing) are
**adaptations** — always trace them down to the wound (Layer 01). Map it as a
**hypothesis** (`[[ INFERENCE: 1-5 ]]`), grounded in observed evidence (career
moves, what they repeat, defend, avoid) — decision-relevant, never gratuitous
armchair diagnosis. **THE SOMATIC LENS** reads the nervous system beneath the
behavior (wartime / freeze / fawn) from how they move through pressure — and you
don't need a therapy transcript to sketch it, just enough behavior under stress.

### 2. Surgical, lean updates — root not surface
A persona is **living**. Every conversation sharpens it. But:
- **Fix at the root, everywhere.** A wrong name (*Neil vs Neal*), a flipped role, a
  disconfirmed driver — correct it at the source/slug and propagate; the wrong
  form survives only as a registered alias (so namecheck still catches it).
- **Touch only what changed.** Don't rebuild the profile; route the signal to the
  1–2 sections it moves and Edit those.
- **Spend only where the signal lands.** A deal transcript carries no wound
  evidence — it leaves all of Layer 01/02 byte-for-byte untouched.
- **Cumulative + self-grading.** Each interaction sharpens the next read; the
  Layer 07 ledger scores past predictions against what actually happened.

> This "always do it the lean way — root not surface, touch only what changed"
> discipline is a standing rule ([`../CLAUDE.md`](../CLAUDE.md) #7); Persona Forge
> is where it lives most literally.

## Where it fits
Horizontal — part of full ingestion (`/momega-onboard`) for any deal with named
human counterparties. A person crosses from a Brain §2 line to a full
`psyche-profile.md` once there's real 1:1 depth (**Ignition rule**, see schema).
Feeds the smart-money lens (buyer/investor psychology), the Trust-Building
Sequencer (C11), the pre-call brief, and outreach (voice + what-moves-them). The
deal-level **CAST SUMMARY** rolls up into the entity's `actor-dossier.md`.
