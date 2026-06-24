# CLAUDE.md — Mo Mega operating instructions

> Auto-loaded every session in this repo. If you are an AI assistant working
> here, **this is the operating system. Follow it.** Mo Mega systematizes
> high-judgment consultative selling: encode the judgment, run it as skills over
> git, keep humans at the high-leverage checkpoints.

## First move every session
The SessionStart hook prints a coverage line. Read it. If any entity lacks a
Brain, that's the gap to close. Orient with `registry/registry.md` (the index)
and `frameworks/momega-os.md` (the operating model).

## The non-negotiables
1. **Everything is a Brain.** Every entity (prospect, client, investor, person)
   has a canonical `entities/<Type>/<id>/brain.md` in the fixed 16-section
   structure. The Brain is the single source of truth. Build/maintain it with the
   **Master Client Brain Builder** → `frameworks/brain-builder.md`.
2. **Zero hallucination.** Every fact traces to a source (cite the Brain section,
   or the file). Unknowns become `[[ HITL ]]` / `[[ FOUNDER ]]` questions — never
   guesses. Judgments are tagged `[[ INFERENCE: 1-5 ]]`.
3. **Library → Factory.** The Brain (Library) feeds Factories (deliverables).
   Factories consume a Brain Export Package; they never invent facts
   (Deliverable Sourcing Rule). If a Factory needs a missing fact, file it as a
   Brain gap.
4. **Humans approve, machines execute.** Nothing client-facing ships without a
   human checkpoint. Internal work (Brains, memos, lists) runs autonomously.
5. **The Lift Filter.** When importing outside material: KEEP the logic/skill,
   STRIP the build-OS (n8n, OpenClaw, Zapier, vendor bindings), TRANSLATE to our
   runtime. Never silently drop something — log it (`frameworks/momega-os.md`).
6. **Run on everything, always.** New entity → `/momega-onboard`. Maintain
   coverage with `/momega-audit`. Definition of Done is in `frameworks/momega-os.md`.
7. **The lean way — root, not surface.** When something changes, fix it at the
   source and propagate everywhere; **touch only what changed; spend only where
   the signal lands.** Don't rebuild what didn't move. This is how every artifact
   (Brains, dossiers, deliverables) is updated — surgically, cumulatively. Lives
   most literally in [`frameworks/persona-forge.md`](frameworks/persona-forge.md).

## The skills (slash commands)
- `/momega-onboard <id>` — new entity: build Brain v1.0 + register.
- `/momega-brain build|update|ask|export <id>` — Brain lifecycle.
- `/momega-audit [--backfill]` — coverage: who has a Brain + which deliverables.
- **Mo Commas (judgment):** `/momega-commas` · `/momega-asymmetry` (C12) ·
  `/momega-opportunities` (C13) · `/momega-evaluate` (investment score) ·
  `/momega-adversary` (C8 red-team) · `/momega-pmf` (C9 strategy) ·
  `/momega-query` (C10 cited Q&A).
- **Mo Zeros (execution):** `/momega-zeros` · `/momega-deck` (Deck OS v2, Z3) ·
  `/momega-proposal` (C14, client-facing → checkpoint).

Canonical numbered roster + status: `registry/artifact-library.md`
("the Library is truth").

## Standard flow after a first conversation
`/momega-onboard <id>` does the **full ingestion** in one shot: builds the Brain
**and** auto-runs the standard deliverable suite for the entity type (companies:
asymmetry + opportunities + evaluation + adversary + pmf, then surfaces the §14
founder email). Every new entity gets the same depth — no entity stops at a bare
Brain. Then as answers/materials arrive, `/momega-brain ask`/`update` and re-run
the affected Factories. Every new conversation feeds back into the Brain (the
flywheel). **Definition of Done for a deal-stage company = Brain ≥v1 + evaluation
+ adversary + pmf**, enforced by `/momega-audit`.

## Repo map
- `entities/<Type>/<id>/` — `brain.md` (canonical) + `profile.md` (index) +
  deliverables (`evaluation.md`, `adversary.md`, `pmf-assessment.md`, …) +
  `insights/`, `materials/`.
- `frameworks/` — the methodology (vision, brain-builder, deck-os, primitives,
  mo-commas/, mo-zeros/, lenses, falsifiers, schemas, momega-os).
- `registry/` — `registry.md` (entity index), `artifact-library.md` (module
  index), `coverage.md` (live audit), `vault-manifest.md` (Drive scrape record).
- `bag/` — cross-entity synergy graph. `tools/momega-audit.sh` — the audit.

## Working norms
- Operator-to-operator tone; no AI-voice, no flattery.
- Commit + push your work (branch: `claude/mo-mega-platform`). Keep the tree clean.
- Big external reads (Drive decks) → delegate to parallel subagents to protect
  context; they read + write, you commit centrally.
- The vault (Google Drive) is scraped via the Drive MCP; record results in
  `registry/vault-manifest.md`.
