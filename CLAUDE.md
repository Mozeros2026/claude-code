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
   **Every human is a Persona.** We map people the way we map businesses: every
   human we talk about or to gets a 7-layer `psyche-profile.md` (Persona Forge,
   `frameworks/persona-forge-schema.md`) — standalone person nodes in-dir, deal
   counterparties under `entities/<entity>/people/<slug>/`. Naming a human in a
   Brain without a profile is an incomplete artifact. The canonical index is
   `registry/persona-roster.md` (auto-generated); coverage **and staleness** (>90d)
   are enforced by `/momega-audit` + the SessionStart hook. This is permanent — it
   runs on everyone, forever, and the audit will not let it go dark.
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
8. **Do the next right thing — autonomously.** The default mode is *bias to action,
   loop engineering, agent swarming, constant improvement* — see
   [`frameworks/operating-doctrine.md`](frameworks/operating-doctrine.md). When the
   obvious, vision-aligned, internal next move presents itself, **do it; don't ask.**
   Only client-facing output gets a checkpoint (#4). Build loops, not one-shots; fan
   out subagents for breadth; run every skill through the four-beat (test → make
   better → ship → train how we build the next one). Don't end a turn with a menu of
   "want me to…?" when one option is clearly right — take it and chain to the next.

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
- **Persona Forge (map people like we map businesses):** `/momega-persona`
  (engine — build a person's 7-layer `psyche-profile.md`) · `/momega-persona-sync`
  (surgical loop — evolve it from one signal, ~10× cheaper). Schema:
  `frameworks/persona-forge-schema.md`.

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
  index), `coverage.md` (live audit), `persona-roster.md` (every human + profile +
  staleness — auto-generated), `vault-manifest.md` (Drive scrape record).
- `bag/` — cross-entity synergy graph. `tools/momega-audit.sh` — the audit.

## Working norms
- Operator-to-operator tone; no AI-voice, no flattery.
- Commit + push your work (branch: `claude/mo-mega-platform`). Keep the tree clean.
- Big external reads (Drive decks) → delegate to parallel subagents to protect
  context; they read + write, you commit centrally.
- The vault (Google Drive) is scraped via the Drive MCP; record results in
  `registry/vault-manifest.md`.
