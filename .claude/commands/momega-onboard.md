---
description: Onboard a new Momega entity — FULL ingestion: build the Brain, then auto-run the standard deliverable suite for its type. Every new entity gets the same depth.
argument-hint: <node-id> [type]
---

# /momega-onboard

Onboard a new entity to the **full standard depth** — the same level every entity
gets, no exceptions. Usage: `/momega-onboard <node-id> [type]` (`type` defaults to
`Prospects`). This is the single front door; it runs the whole pipeline.

Argument: `$ARGUMENTS`

## Phase 1 — Build the Brain (the Library)
1. Follow [`frameworks/brain-builder.md`](../../frameworks/brain-builder.md) BUILD
   mode: scrape the conversation/email **and** ingest all materials (decks, plans,
   financials) — including a **vault sweep** if a Drive folder is named.
2. Run the full BUILD protocol (read everything → classify asset classes →
   charitable reading → public research + per-partner press cross-check →
   dependency audit → revenue audit → 16-section map with rigorous tags →
   asymmetry detection → reframe → impersonation self-review → §13/§14 with ⭐ →
   Export Readiness → §0 → self-review checklist).
3. Write `entities/<type>/<id>/brain.md` (canonical) + `profile.md` (index);
   add the `registry/registry.md` row.

## Phase 2 — Run the standard deliverable suite (the Factories)
**This is the part that makes onboarding "full ingestion." Do not stop at the
Brain.** Run the suite appropriate to the entity type, each grounded in the Brain
(Deliverable Sourcing Rule, cite-by-section):

- **Prospects / Clients / Companies (deal or GTM nodes):** the full set —
  `/momega-asymmetry` (C12) + `/momega-opportunities` (C13) → insights;
  `/momega-evaluate` + `/momega-adversary` (C8) + `/momega-pmf` (C9) →
  `evaluation.md`, `adversary.md`, `pmf-assessment.md`. **If the deal has named
  human counterparties (decision-makers/owners), also run the Persona Forge** —
  `/momega-persona <id> <person>` for each, building a 7-layer `psyche-profile.md`
  (map the wound beneath the behavior; THE SOMATIC LENS), then roll the deal-facing
  CAST SUMMARY into `actor-dossier.md`. Thereafter `/momega-persona-sync` keeps each
  profile current from new signal. Then surface the Brain **§14 founder email** as
  the first outbound.
- **Investors:** capture the thesis/mandate (Investor Brain variant); no
  investment deliverables — the Brain *is* the artifact.
- **People:** capture expertise/track-record/network; the Brain is the artifact.

Run independent Factories in parallel (subagents) to protect context; they write,
you commit centrally.

## Phase 3 — Register, verify, report
4. Update the registry row + run `bash tools/momega-audit.sh --write`.
5. Report: the Brain §0 (Confidence Map), the ⭐ §13/§14 questions, and the
   headline of each deliverable (verdict / biggest exposure / top lever).

## Definition of Done (the bar every entity clears)
- **Any node:** canonical Brain + registry row.
- **Deal-stage Prospect/Client:** Brain ≥ v1 **+ evaluation + adversary + pmf**
  (+ asymmetry/opportunities insights). This is enforced by `/momega-audit`.
- **Investor/Person:** Brain with thesis/expertise captured.

## Lifecycle
`/momega-brain update|ask|export <id>` · re-run any Factory as new material lands.
