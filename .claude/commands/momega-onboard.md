---
description: Provision a Momega node from early-phase conversation — scrape, build entity, evaluate, and present back what's missing.
argument-hint: <node-id> [type]
---

# /momega-onboard

Provision a Momega node end-to-end from the early-phase conversation. Usage:
`/momega-onboard <node-id> [type]` (`type` defaults to `Prospects`).

Argument: `$ARGUMENTS`

The core of this skill is **scraping early-phase conversation** (the email/chat
that introduced the node) for everything the brain needs downstream, then
running the business through the evaluation lenses and **presenting back what's
still missing**. Be idempotent — update in place, never duplicate.

Frameworks this command uses:
- [`frameworks/business-evaluation.md`](../../frameworks/business-evaluation.md)
  — deck order + YC / first-principles / smart-money lenses + scorecard.
- [`frameworks/brain-ator.md`](../../frameworks/brain-ator.md) — entity creation
  + gap detection ("present back what was missing").

## Steps

1. **Scrape** the current conversation for every fact, contact, document,
   constraint, and social signal (e.g. "wants feedback before looping in X").
   Capture, don't infer; mark inferences as inferences.
2. **Entity** — write `entities/<type>/<id>/profile.md` (structured facts) and
   `brain.md` (running memory + intel + next actions).
3. **Materials** — `entities/<type>/<id>/materials/`. If a binary isn't in the
   session, reserve the slot in `materials/README.md` (filename, size, source).
4. **Evaluate** — `evaluation.md`: score the 13 deck slots and the 3 lenses per
   `business-evaluation.md`. Pre-deck, score what's known and mark the rest ⛔.
5. **Gap report** — `missing-questions.md`: the brain-ator deliverable. Rank the
   holes by decision-impact, phrase each as a question, route to founder /
   public research / our investor panel.
6. **Registry** — add/update one row in `registry/registry.md`.
7. **Learn** — if the conversation revealed a new question that mattered or an
   investor preference, update the relevant framework / investor node (Persona
   Forge / Business Forge loop).
8. **Report** — paths created/updated + the ranked gap list + any binaries still
   needed.

## Related

- `/momega-evaluate <id>` — re-run evaluation + gap report after new material
  (e.g. once the deck is ingested).
