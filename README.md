# Mo Mega

A modular agentic AI sales platform that **systematizes and scales high-judgment
consultative selling** — encoding the skill of listening to founders/buyers,
translating what they have vs what buyers pay for, and finding asymmetric
synergies across a portfolio. Vision & the two-loop model:
[`frameworks/vision.md`](frameworks/vision.md).

It runs as an **infinity-loop flywheel** over a shared Brain:

- **Mo Commas** (LEFT loop) — judgment: listening, translation, hypotheses.
  `/momega-commas` · primitives C1–C7 in [`frameworks/primitives.md`](frameworks/primitives.md).
- **Mo Zeros** (RIGHT loop) — execution: drafting, lists, collateral, pipeline.
  `/momega-zeros` · pipelines Z1–Z8.
- Joined at **human checkpoints** (machines execute, humans approve). The
  **Bridge** feeds every new conversation back into the Brain.

Underneath is a **Library → Factory** model for the knowledge itself.

- **Library** = the **Brain Builder**. It ingests raw materials + public research
  and produces one **canonical Brain** per entity — zero-hallucination, fully
  tagged, asset-classified, asymmetry-hunted. The Brain is the single source of
  truth. See [`frameworks/brain-builder.md`](frameworks/brain-builder.md).
- **Factory** = downstream specialists that **consume** a Brain Export Package and
  produce a deliverable (deck, outreach, call prep, ICP, PMF, adversary,
  **investment evaluation**). Factories never invent facts — per the **Deliverable
  Sourcing Rule**, every claim traces to the Brain.

The Brain is the architectural choke point for truth: if a Factory's output
contradicts the Brain, the Factory is wrong until the Brain is updated.

See [`frameworks/momega-os.md`](frameworks/momega-os.md) for the full operating
model — the standard intake after a first conversation, the backfill status, and
the import queue for original-project material still to fold in.

## The Brain

Each entity has a canonical Brain at `entities/<Type>/<id>/brain.md` in a **fixed
16-section structure** (0 Confidence Map … 15 Metadata). It carries an inline tag
system (`[[ SOURCE ]]`, `[[ PUBLIC ]]`, `[[ HITL ]]`, `[[ FOUNDER ]]`,
`[[ ASYMMETRY ]]`, `[[ DEPENDENCY ]]`, `[[ REFRAME ]]`, …), a primary-asset-class
classification, an asymmetry dashboard, and — critically — **Section 13 (advisor
questions)** and **Section 14 (founder follow-up email)**, each ⭐-prioritized.
Section 0 ends with an **Export Readiness manifest**: which Factories the Brain can
feed right now.

### Brain lifecycle (4 modes)

| Mode | Command | Output |
|------|---------|--------|
| BUILD  | `/momega-onboard <id>` | Brain v1.0 + registry row |
| UPDATE | `/momega-brain update <id>` | full Brain re-output, version bumped |
| ASK    | `/momega-brain ask <id>` | affected sections + changelog (v.X.5) |
| EXPORT | `/momega-brain export <id> <deliverable>` | package for a Factory |

## Factories (Mo Commas + Mo Zeros skills)

Each consumes a Brain Export Package and produces a deliverable — the LEFT-loop
(judgment) and RIGHT-loop (execution) skills are the Factories. Full inventory +
status: [`frameworks/primitives.md`](frameworks/primitives.md). Live today:

- **Mo Commas Phase-1 core** — `/momega-commas <id> <c1|c2|c3>`: Shape Listener,
  Pain Hypothesizer, Adjacent Market Mapper.
- **Investment Evaluation** — `/momega-evaluate <id>` →
  [`frameworks/business-evaluation.md`](frameworks/business-evaluation.md): scores
  the 13-slot deck order through three lenses (YC / first-principles / smart-money).
- **Mo Zeros Phase-1 core** — `/momega-zeros <id> <z1|z2>`: Follow-Up Drafter,
  Internal Strategy Memo.
- **Deck OS v2** — `/momega-deck <id> <outline|ship>` →
  [`frameworks/deck-os.md`](frameworks/deck-os.md): pitch deck + reading deck from
  the Brain (11 beats, 11 principles, 15-trap Sharp Investor Filter, two-deck).
  This is the Compressor (C4) + deck Deliverable Generator (Z3).

Planned: C5–C7, Z4–Z8 (Cross-Bag Synergy, Sales-Maturity, Trust Sequencer, ICP,
Outbound, Pipeline, Collateral). The cross-entity synergy layer ("the bag") lives
in [`bag/`](bag/).

## Layout

```
entities/
  Prospects/<id>/
    brain.md             # CANONICAL Brain (Library) — source of truth
    profile.md           # quick index → points to brain.md
    evaluation.md        # Investment Evaluation Factory output
    missing-questions.md # pointer → Brain §13/§14
    materials/           # decks, plans, contracts
  Investors/<id>/        # investor nodes (thesis = the learning loop)
frameworks/
  vision.md              # vision/mission/why + the two-loop model
  momega-os.md           # operating model, lift filter, import log
  brain-builder.md       # the Library (Master Client Brain Builder v2.1-momega)
  primitives.md          # C1–C7 + Z1–Z8 inventory + prompt design pattern
  business-evaluation.md # Investment Evaluation Factory method
  deck-os.md             # Deck OS v2 — pitch + reading deck Factory
  case-studies.md  schemas.md  falsifiers.md
  mo-commas/             # LEFT-loop primitive specs (c1, c2, c3, …)
  mo-zeros/              # RIGHT-loop pipeline specs (z1, z2, …)
bag/synergy-graph.md     # cross-entity synergy ("the bag") — feeds C5
registry/registry.md     # master index (per node: Brain version + readiness)
.claude/commands/
  momega-onboard.md  momega-brain.md  momega-evaluate.md
  momega-commas.md   momega-zeros.md  momega-deck.md
```

## The learning loop (Persona Forge / Business Forge)

Investor nodes (`entities/Investors/`) capture *what each investor looks for*;
business patterns accrue in the frameworks. Per the Brain Builder's **iteration
design**, every Brain and every evaluation should teach the system something —
folded back as a new BUILD step, a new tag, a new Brain section, or a sharpened
lens. Momega is meant to get smarter with every entity it processes.
