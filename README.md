# Momega

A git-backed entity system. Every person, company, prospect, or deal is a
**node** filed under `entities/<Type>/<id>/`. A node is "fully provisioned"
when it has three things:

1. **profile** (`profile.md`) — structured, at-a-glance facts about the node.
2. **brain** (`brain.md`) — the running memory: context, intel, history, and
   next actions. This is what you read before any interaction with the node.
3. **registry row** — a single line in [`registry/registry.md`](registry/registry.md)
   so the node is discoverable from the index.

For a company, "provisioned" also means it has been **evaluated** through an
investor lens and that we've **presented back what's still missing** — the
questions the brain needs answered before a real decision.

## Layout

```
entities/
  Prospects/
    <id>/
      profile.md          # structured facts
      brain.md            # running memory + intel + next actions
      evaluation.md       # scorecard vs the investor lenses
      missing-questions.md# the "present back what's missing" gap report
      materials/          # attachments (decks, plans, contracts)
        README.md
  Investors/
    <id>/profile.md       # investor + their thesis (what they look for)
frameworks/
  business-evaluation.md  # deck order + YC/first-principles/smart-money lenses
  brain-ator.md           # entity creation + gap detection method
registry/
  registry.md             # master index, one row per node
.claude/
  commands/
    momega-onboard.md     # /momega-onboard <id> — scrape, build, evaluate, gap
    momega-evaluate.md    # /momega-evaluate <id> — re-score after new material
```

## Onboarding a node

```
/momega-onboard <id>
```

Scrapes the early-phase conversation, builds `profile.md` + `brain.md`, scores
the business in `evaluation.md`, and produces the `missing-questions.md` gap
report — then adds the registry row. Re-run scoring later with
`/momega-evaluate <id>` once the deck/public data is in.

## The thinking behind evaluation

We evaluate companies the way smart money does — Y Combinator, first-principles
operators, and our own investor panel (Nevin, Hooman, Jordan) — in a deliberate
pitch-deck order. The frameworks are living documents: every business we run
through them should make them smarter (Persona Forge / Business Forge). See
[`frameworks/business-evaluation.md`](frameworks/business-evaluation.md) and
[`frameworks/brain-ator.md`](frameworks/brain-ator.md).
