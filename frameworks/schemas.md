# Schemas — metadata standard

> Lifted + translated from Build Spec v1's vault frontmatter. The Obsidian-vault-
> on-VPS is **not** carried over; the **metadata discipline is** — it's how
> knowledge and provenance live in the brain and how skills (and, later, agents)
> pull the right context and route work. "Bad metadata = bad context = bad
> outputs."

## Frontmatter standard

Every artifact file in `entities/` carries YAML frontmatter:

```yaml
---
node_id: wisdm                 # stable slug; matches the entity folder
entity_type: Prospect          # Prospect | Investor | Person | Company
type: brain                    # brain | profile | insight | draft | deliverable | pipeline | system
loop: library                  # library | commas | zeros  (which half produced it)
status: processed              # raw | processed | pending-approval | approved | sent | archived
source: deck                   # conversation | email | deck | public | agent | manual
brain_version: v1.1            # for brain/insight artifacts
created: 2026-06-24
updated: 2026-06-24
tags: []                       # free tags
linked_to: []                  # related file paths
---
```

## Inline knowledge tags (in Brain prose)

The Brain Builder tag system carries provenance and routing *inside* the text:
`[[ SOURCE ]]`, `[[ PUBLIC ]]`, `[[ HITL ]]`, `[[ FOUNDER ]]`,
`[[ CONTRADICTION ]]`, `[[ INFERENCE ]]`, `[[ ASYMMETRY ]]`, `[[ VALUE LEAK ]]`,
`[[ RISK ]]`, `[[ DRAFT ]]`, `[[ DEPENDENCY ]]`, `[[ REFRAME ]]`. Defined in
[`brain-builder.md`](brain-builder.md).

## Node identity

Each entity gets a stable `node_id` (slug, e.g. `wisdm`, `regional-staffing`)
created when it's added. Used in all paths and frontmatter. The folder is
`entities/<entity_type-plural>/<node_id>/`.

## Why frontmatter (not just prose)

It makes the corpus queryable (which brains are Deck-ready? which artifacts are
pending approval? what did Mo Zeros send last week?) without a database — the same
role Dataview played over the vault, now served by git + grep/agents over
structured headers.

`[[ HITL: confirm this schema matches the original vault frontmatter conventions
so imported artifacts line up exactly. ]]`
