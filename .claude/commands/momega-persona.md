---
description: Persona Forge ENGINE — build (or deep-rebuild) a person's psyche-profile.md across the 7-layer schema. Maps people the way the Brain Builder maps businesses.
argument-hint: <entity-id> <person-slug> [type]
---

# /momega-persona  (the engine — first build / deep pass)

Build a full **psyche-profile** for a person — the wound beneath the behavior,
across all 7 layers. This is the **engine**: first build, or a rare quarterly deep
rebuild. For everyday signal-by-signal updates use **`/momega-persona-sync`** (the
surgical loop) — it's ~10× cheaper. Schema is the contract:
[`frameworks/persona-forge-schema.md`](../../frameworks/persona-forge-schema.md).

Usage: `/momega-persona <entity-id> <person-slug> [type]` (`type` defaults to
`Prospects`). Argument: `$ARGUMENTS`

## Steps
1. **Load context.** Read the entity Brain (the deal this person belongs to) and
   take the actor from §2 People, or the named person. No Brain → `/momega-onboard`
   first. Confirm the **canonical name at the root** (correct spelling = slug;
   misspellings become `aka:` aliases only).
2. **Gather all sources, ranked by signal.** 1:1 transcript > email/text >
   voice-log/notes > enrichment > public web. List what you have; missing high-
   signal sources become `[[ HITL ]]` gaps. Big reads → delegate to subagents.
3. **Synthesize the 7 layers** (apply the 3 lenses to every claim):
   - **01 Essence** — core wound (hypothesis) · gift · ikigai · telos · the
     who-they-are-unwatched line. Trace every surface adaptation down to the wound.
   - **02 Architecture** — Jung functions · Big Five · Enneagram · Shadow ·
     **§ SOMATIC fingerprint (THE SOMATIC LENS)** — HIGH on 1:1 depth, else a
     `[[ INFERENCE: LOW–MED ]]` sketch from behavior under pressure · archetypes.
   - **03 Operating System** — voice & register · power/status · influence · SCARF
     · decision style · default drivers.
   - **04 Capability** — aptitudes · skills · weaknesses · mastery vs. bluff.
   - **05 Crosswalk** — for each key relationship, a `crosswalks/<a>__<b>.md` with
     SCARF + talk-track alignment **+ § NERVOUS SYSTEM COMPATIBILITY** (do the
     wounds rhyme or clash?).
   - **06 Application** — how to engage · what lands / what kills it · how we
     present the business to *this* person · **estimated current state** (dated).
   - **07 Longitudinal** — session log · hypothesis ledger · predictions ·
     commitments · contact cadence · evolution log (append-only spine).
4. **Discipline:** public (cited) vs. inferred (`[[ INFERENCE ]]`) always
   separated; the wound is a hypothesis, never fact; zero confabulation; every
   somatic/state read gets an `as_of:` and goes stale >90d.
5. **Write** `entities/<type>/<id>/people/<slug>/psyche-profile.md` per the output
   contract (frontmatter + 7 layer anchors + appendix + the `<!-- SECTION INDEX -->`
   anchor list). Roll the deal-facing **CAST SUMMARY** into the entity's
   `actor-dossier.md` (who decides / influences / blocks + highest-leverage move).
6. **Feed back:** gaps → the entity Brain §13/§14; the profile → smart-money lens,
   Trust-Building Sequencer (C11), the pre-call brief, and outreach.

## Definition of Done
A person with real 1:1 depth (Ignition rule) has a `psyche-profile.md` with all 7
layer anchors present, the wound mapped as a tagged hypothesis, a somatic line in
frontmatter, and a live L07 ledger. Thereafter `/momega-persona-sync` keeps it
current — the engine only re-fires for a deep pass.
