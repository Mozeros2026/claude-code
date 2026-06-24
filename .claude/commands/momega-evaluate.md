---
description: Re-run a Momega node's business evaluation and gap report after new material (e.g. once the deck is ingested).
argument-hint: <node-id> [type]
---

# /momega-evaluate

Re-evaluate an existing Momega node. Usage: `/momega-evaluate <node-id> [type]`
(`type` defaults to `Prospects`). Use after new material lands — a deck, public
research, or a founder's answers to the previous gap report.

Argument: `$ARGUMENTS`

## Steps

1. **Load** the node: `entities/<type>/<id>/{profile,brain}.md`,
   `materials/`, and the prior `evaluation.md` / `missing-questions.md`.
2. **Ingest** any new material (deck, public presence, answered questions).
3. **Re-score** all 13 deck slots + 3 lenses per
   [`frameworks/business-evaluation.md`](../../frameworks/business-evaluation.md);
   give a real overall + recommendation (pass / track / lean-in) once enough is
   known.
4. **Refresh gaps** — move newly answered items to "Already answered", keep what
   remains open in `missing-questions.md`.
5. **Update** `brain.md` (history + next actions) and the `registry/registry.md`
   stage.
6. **Learn** — fold any new decision-relevant question or investor preference
   back into the frameworks / investor nodes.
7. **Report** — new scores, what changed, and the remaining gaps.
