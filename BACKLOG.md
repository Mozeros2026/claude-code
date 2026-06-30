# Mo Mega — BACKLOG

> The durable list of greenlit-but-unshipped OS work. Anything here is **designed
> and wanted**, not yet built (or built only in part). The four-beat governs
> promotion: a backlog item ships when it has a tool/skill + a test + a doctrine
> registration. "Greenlit in backlog" ≠ "live" — this file is where that
> distinction is kept honest.

## THE KEYSTONE — Brain-builder watcher

**Why it's the keystone:** the Brain is the founder-anchored, frozen source of
truth every downstream deliverable keys off. The build is deliberately gated —
**MANUAL, DELIBERATE, RARE, Opus-only, human-invoked**, never per-transcript,
never headless — to avoid burning Opus auto-building thin Brains on low-signal
nodes and to keep a human on the one artifact that's expensive to get wrong. The
cost of that gate is a gap: a node can accumulate materials (deck + plan + answers)
and just *sit there* because no one fired the build. wisdm sat exactly like that.
The watcher closes the gap **without** removing the gate.

**The design rule that makes it safe:** the watcher is a **detector + queue + nag,
never an executor.** It has no code path to a build. It surfaces "this node has
materials and no fresh Brain"; a human decides and runs `/momega-onboard` (Opus).
This is the same shape as `persona-sync-queue.md`, and it lives inside the
existing "enforced-by-visibility, not a daemon" boundary (`momega-os.md` §137).

### ✅ SHIPPED (v1 — 2026-06-30)
- `tools/brain-watch.sh` — detector. Pure bash, **no LLM/Opus at runtime**.
  Classifies every node: 🟢 ready-to-build (materials, no Brain) · 🟡 new-materials
  (Brain exists, README Status not ✅) · ✅ current · ⚪ cold. Tested on a 3-case
  fixture (ready / pending / current all classified correctly).
- `registry/brain-queue.md` — the durable cross-session queue (`--write`).
- **SessionStart hook** (`.claude/settings.json`) — prints the watcher line next
  to the coverage line, every session. The forcing function is now live.
- Material sources covered: **local** (`entities/<id>/materials/`) + **vault
  manifest** (`registry/vault-manifest.md` cross-ref). Freshness read from the
  materials README **Status column** (git-durable), not mtimes.

### 🔜 NEXT (this keystone, not yet shipped)
- **Live Drive-aware detection.** Today the watcher sees local files + whatever
  `vault-manifest.md` records. A richer pass would query the Drive MCP directly to
  catch materials that landed in the vault but were never logged to the manifest.
  Costs a connector call per run → gate behind an explicit `--vault` flag or a
  cadence, not the per-session hook.
- **Content-hash / true staleness.** mtimes are unreliable in this clone-fresh
  environment, so v1 uses the README Status column. A durable freshness marker
  (hash of ingested materials stored in the Brain's §Source Log, compared to
  current) would catch "material changed since ingest," not just "material added."
- **Signal-strength scoring.** Rank the 🟢 queue by how much real signal is waiting
  (a full deck+plan+16-answers node should sort above a single stray PDF) so the
  human builds the highest-leverage Brain first.

### 🚫 EXPLICIT NON-GOAL (do not "improve" into this)
- **No auto-build.** The watcher must never invoke `/momega-brain build` /
  `/momega-onboard` itself, never run a build headless, never run it on anything
  but Opus. If a future maintainer wants hands-off building, that is the
  **resurrect condition for the orchestrator (X1)** — and it would still run this
  same watcher as its gate, with the human checkpoint intact. Auto-building thin
  Brains on low-signal nodes is the exact failure this gate exists to prevent.

## Other greenlit-but-unshipped OS work

> Mirrors the `planned` rows in `registry/artifact-library.md`. Pulled here so the
> backlog is one place, not scattered across the Library table.

### Mo Zeros (execution) — planned modules
- **Z4 Deliverable Generator** — generic Brain→deliverable Factory.
- **Z5 ICP List Builder** — needs an enrichment integration (Apollo).
- **Z6 Outbound Sequencer** — needs a delivery integration (email).
- **Z7 Meeting Prep** · **Z8 Pipeline State Keeper** · **Z9 Collateral Patcher**.

### Mo Commas (judgment) — planned modules
- **C6 Cross-Bag Synergy Detector** — the `bag/` graph is scaffolded, the skill isn't.
- **C11 Trust-Building Sequencer**.

### Cross-cutting
- **X2 Monitoring / Self-Audit** — cost/drift watch. The brain-watcher is the first
  concrete piece of X2 to ship; the rest (token-cost tracking, profile-drift alarms)
  is still planned.
- **X1 Orchestrator Router** — Deferred/obviated; resurrect only at 8+ live
  specialists *and* documented dispatch friction (see non-goal above).

### Governance imports still owed (from artifact-library.md §Meta)
- Master Build Spec v3 · Decision Log + Open Questions v2 · Action Sequence v1 —
  not yet imported.

## Testing debt (the promotion gate)
Every skill is still **v1 Candidate** — none has passed the 3-real-input test
(`artifact-library.md` §Testing protocol). Promoting even one skill to **Tested**
(run on 3 real client packages, score % rewrite, document) is higher-leverage than
most new builds. This is backlog item zero.
