# Momega

A git-backed **Library → Factory** system for understanding and acting on
entities (prospects, companies, deals, investors).

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

## Factories

Each consumes a Brain Export Package. Live today:

- **Investment Evaluation** — `/momega-evaluate <id>` →
  [`frameworks/business-evaluation.md`](frameworks/business-evaluation.md). Scores
  the 13-slot deck order through three lenses (YC / first-principles / smart-money)
  and names the gates that must clear. The Brain Builder deliberately doesn't
  score deals — this Factory does.

Planned (Brain structure already supports their Export Requests): Deck OS, Outreach
OS, Call Prep, ICP Builder, PMF Assessment, Adversary/Red-Team.

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
  brain-builder.md       # the Library (Master Client Brain Builder v2.1-momega)
  business-evaluation.md # the Investment Evaluation Factory method
registry/registry.md     # master index (per node: Brain version + readiness)
.claude/commands/
  momega-onboard.md  momega-brain.md  momega-evaluate.md
```

## The learning loop (Persona Forge / Business Forge)

Investor nodes (`entities/Investors/`) capture *what each investor looks for*;
business patterns accrue in the frameworks. Per the Brain Builder's **iteration
design**, every Brain and every evaluation should teach the system something —
folded back as a new BUILD step, a new tag, a new Brain section, or a sharpened
lens. Momega is meant to get smarter with every entity it processes.
