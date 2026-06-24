# Momega OS — operating model

How Momega runs, end to end. The principle: **run what we have, make it better,
always.** Every entity gets a Brain; every Brain gets sharper with each pass;
every pass teaches the system.

## The loop

```
first contact ──▶ /momega-onboard <id>        (Brain Builder BUILD → Brain v1.0)
                      │
                      ├─▶ §14 founder email sent  (the asks)
                      │
answers/materials ──▶ /momega-brain ask|update   (Brain v1.5 → v2.0)
                      │
need a deliverable ─▶ /momega-brain export <id> <deliverable>
                      │                          (Brain → Export Package)
                      └─▶ Factory (/momega-evaluate, deck, outreach, …)
                                                  (Package → deliverable)
learnings ──────────▶ iteration log              (Builder + lenses get smarter)
```

## What happens after the first conversation (the standard intake)

This is the canonical "after our first convo" path — run it on every new entity:

1. `/momega-onboard <id>` — scrape the conversation + ingest any materials, run
   the full BUILD protocol, write the canonical Brain, register the node.
2. Read **Section 0** (Confidence Map) and the **⭐ Section 13/14** questions.
3. Send **Section 14** (founder email) — that's the first outbound.
4. As answers/materials arrive: `/momega-brain ask` (partial) then `update`
   (full), bumping the version.
5. When a deliverable is needed and the Export Readiness manifest says READY,
   `export` to the relevant Factory.

## Everything is a Brain

Prospects, companies, investors, people — each is an entity node with a canonical
`brain.md` in the fixed 16-section structure (re-pointed per
[entity-type variant](brain-builder.md#entity-type-variants-iteration-v21-momega1)).
`profile.md` is a thin index; the Brain is the source of truth. Metadata tags
(`[[ SOURCE ]]`, `[[ PUBLIC ]]`, `[[ HITL ]]`, `[[ FOUNDER ]]`, `[[ ASYMMETRY ]]`,
`[[ DEPENDENCY ]]`, `[[ REFRAME ]]`, …) are how knowledge and its provenance live
in the brain — and how Factories (and, later, agents) route work.

## Backfill: scrape every existing entity

When this OS is adopted, re-run the Brain Builder against everything already in
`entities/` so each node reaches the current standard. Status:

| Node | Brain | Notes |
|------|-------|-------|
| Prospects/wisdm | v1.1 | reconciled; §14 sent; awaiting founder answers |
| Investors/hooman | v0.1 | stub; thesis HITL |
| Investors/nevin | v0.1 | stub; identity + thesis HITL |
| Investors/jordan | v0.1 | stub; identity + thesis HITL |

## IMPORT QUEUE — original-project material to fold in

Earlier Momega work (MD files + custom instructions in the original Projects)
predates this repo and isn't here yet. To finish integrating the OS, paste or
drop these so they become first-class:

- [ ] **Other Factory prompts** — Deck OS, Outreach OS, Call Prep, ICP, PMF,
      Adversary/Red-Team (and any others). Each becomes `frameworks/<name>.md` +
      a `/momega-<name>` command with a defined Brain Export Request.
- [ ] **Any Brains already built** for other entities (so they're stored, not lost).
- [ ] **Naming / taxonomy / tag conventions** from the original system, so this
      repo matches your established standard rather than my reconstruction.
- [ ] **The Brain Builder's own change history** (so we version it correctly
      going forward).

`[[ HITL: paste the original-project MD + custom instructions; until then these
Factories are declared in Export Readiness but not yet implemented. ]]`
