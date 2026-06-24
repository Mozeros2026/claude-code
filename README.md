# Momega

A git-backed entity system. Every person, company, prospect, or deal is a
**node** filed under `entities/<Type>/<id>/`. A node is "fully provisioned"
when it has three things:

1. **profile** (`profile.md`) — structured, at-a-glance facts about the node.
2. **brain** (`brain.md`) — the running memory: context, intel, history, and
   next actions. This is what you read before any interaction with the node.
3. **registry row** — a single line in [`registry/registry.md`](registry/registry.md)
   so the node is discoverable from the index.

## Layout

```
entities/
  Prospects/
    <id>/
      profile.md          # structured facts
      brain.md            # running memory + intel + next actions
      materials/          # attachments (decks, plans, contracts)
        README.md
registry/
  registry.md             # master index, one row per node
.claude/
  commands/
    momega-onboard.md     # /momega-onboard <id> — provision a node
```

## Onboarding a node

```
/momega-onboard <id>
```

This files the node as a prospect (or other type), generates `profile.md` and
`brain.md` from whatever intel has been gathered, adds the registry row, and
links any materials. See [`.claude/commands/momega-onboard.md`](.claude/commands/momega-onboard.md).
