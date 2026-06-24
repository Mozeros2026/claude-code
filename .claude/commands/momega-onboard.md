---
description: Onboard a new Momega entity — run Brain Builder BUILD on the early-phase materials, then register the node.
argument-hint: <node-id> [type]
---

# /momega-onboard

Onboard a new entity. Usage: `/momega-onboard <node-id> [type]` (`type` defaults
to `Prospects`). This is **Brain Builder BUILD + register** — the front door to
the Library.

Argument: `$ARGUMENTS`

## Steps

1. **Load the Brain Builder.** Follow
   [`frameworks/brain-builder.md`](../../frameworks/brain-builder.md) in BUILD
   mode. Scrape the early-phase conversation/email **and** ingest any attached
   materials (decks, plans, financials).
2. **Run the full BUILD protocol** (read everything → classify asset classes →
   charitable reading → public research + per-partner press cross-check →
   dependency audit → revenue audit → map to the 16-section structure with
   rigorous tags → asymmetry detection → reframe → impersonation self-review →
   Sections 13/14 with ⭐ → Export Readiness → Section 0 → self-review checklist).
3. **Write the Brain** to `entities/<type>/<id>/brain.md` (canonical, v1.0).
4. **Add the node index** `profile.md` (quick reference; points to the Brain).
5. **Register** — add/update one row in `registry/registry.md` (Brain version +
   Export Readiness highlights).
6. **Report** — the Brain's Section 0 (Confidence Map) + the ⭐ questions, and
   which Factories are READY.

Do **not** produce Factory deliverables here (decks, outreach, evaluation). Those
are separate commands that consume the Brain via Export Packages.

## Lifecycle

- `/momega-brain update|ask|export <id>` — maintain the Brain.
- `/momega-evaluate <id>` — run the Investment Evaluation Factory.
