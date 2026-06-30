# Mo Mega — Artifact Library

> Lifted from ARTIFACT LIBRARY v3. The **canonical index** of every Mo Mega
> artifact (frameworks + skills) and the **authoritative module numbering**. "The
> Library is truth — wild copy differing from the Library is wrong; sync it."
> Build-OS stripped: the Zapier Zap workflow artifacts (Zap 0–5), task budgets,
> and deployment-target plumbing (OpenClaw runtime / Zapier System Message / Build
> HQ Project) are **not** imported — here every artifact deploys as a Claude Code
> skill over git.

## Status taxonomy
**Draft** (written, untested) · **v1 Candidate** (sound, untested on real inputs)
· **Tested** (passed a 3-real-input test, documented) · **Production** (tested +
in daily use) · **Retired** (superseded) · **Deferred** (designed, paused).

## Versioning rules
Version suffix in the artifact; old versions never overwritten; a bump requires
documented test improvement **or** an explicit decision-log entry; chat-only
version inflation resets to v1 Candidate.

## Canonical module numbering (authoritative — supersedes Build Spec v1's C1–C7)

**Mo Commas (LEFT / judgment)**

| # | Module | Status | Spec / skill |
|---|--------|--------|--------------|
| C1 | Master Client Brain Builder *(the Library; `[[ INFERENCE ]]` on the C1 label)* | v1 Candidate | [`../frameworks/brain-builder.md`](../frameworks/brain-builder.md) · `/momega-onboard` |
| C2 | Shape Listener | v1 Candidate | [`../frameworks/mo-commas/c2-shape-listener.md`](../frameworks/mo-commas/c2-shape-listener.md) · `/momega-commas` |
| C3 | Pain Hypothesizer | v1 Candidate | [`../frameworks/mo-commas/c3-pain-hypothesizer.md`](../frameworks/mo-commas/c3-pain-hypothesizer.md) |
| C4 | Adjacent Market Mapper | v1 Candidate | [`../frameworks/mo-commas/c4-adjacent-market-mapper.md`](../frameworks/mo-commas/c4-adjacent-market-mapper.md) |
| C5 | Compressor (→ Deck OS) | v1 Candidate | [`../frameworks/deck-os.md`](../frameworks/deck-os.md) |
| C6 | Cross-Bag Synergy Detector | planned | [`../bag/`](../bag/) |
| C7 | Sales-Maturity Diagnoser *(merged into PMF, per Decision Log Q10)* | merged | [`../frameworks/pmf-assessment.md`](../frameworks/pmf-assessment.md) |
| C8 | Adversary | v1 Candidate | [`../frameworks/adversary.md`](../frameworks/adversary.md) · `/momega-adversary` |
| C9 | PMF Assessment | v1 Candidate | [`../frameworks/pmf-assessment.md`](../frameworks/pmf-assessment.md) · `/momega-pmf` |
| C10 | Brain Query | v1 Candidate | [`../frameworks/brain-query.md`](../frameworks/brain-query.md) · `/momega-query` |
| C11 | Trust-Building Sequencer | planned | — |
| C12 | Asymmetry Detector | v1 Candidate | [`../frameworks/asymmetry-detector.md`](../frameworks/asymmetry-detector.md) · `/momega-asymmetry` |
| C13 | Opportunities Brainstormer | v1 Candidate | [`../frameworks/opportunities-brainstormer.md`](../frameworks/opportunities-brainstormer.md) · `/momega-opportunities` |
| C14 | Proposal Generator *(client-facing)* | v1 Candidate | [`../frameworks/proposal-generator.md`](../frameworks/proposal-generator.md) · `/momega-proposal` |
| — | **Persona Forge** *(horizontal — maps people like the Brain maps businesses; 7-layer `psyche-profile.md`; "the wound beneath the behavior"; THE SOMATIC LENS; surgical loop)* | v1 Candidate | schema [`../frameworks/persona-forge-schema.md`](../frameworks/persona-forge-schema.md) · overview [`../frameworks/persona-forge.md`](../frameworks/persona-forge.md) · engine `/momega-persona` · loop `/momega-persona-sync` |

**Mo Zeros (RIGHT / execution)**

| # | Module | Status | Spec / skill |
|---|--------|--------|--------------|
| Z1 | Follow-Up Drafter | v1 Candidate | [`../frameworks/mo-zeros/z1-follow-up-drafter.md`](../frameworks/mo-zeros/z1-follow-up-drafter.md) · `/momega-zeros` |
| Z2 | Internal Strategy Memo | v1 Candidate | [`../frameworks/mo-zeros/z2-strategy-memo.md`](../frameworks/mo-zeros/z2-strategy-memo.md) |
| Z3 | Deck OS | v1 Candidate | [`../frameworks/deck-os.md`](../frameworks/deck-os.md) · `/momega-deck` |
| Z4 | Deliverable Generator | planned | — |
| Z5 | ICP List Builder | planned (needs enrichment integration) | — |
| Z6 | Outbound Sequencer | planned (needs delivery integration) | — |
| Z7 | Meeting Prep | planned | — |
| Z8 | Pipeline State Keeper | planned | — |
| Z9 | Collateral Patcher | planned | — |

**Cross-cutting**

| # | Module | Status |
|---|--------|--------|
| X1 | Orchestrator Router | **Deferred / obviated** — routing lives in the skills + `momega-os.md`; resurrect only at 8+ live specialists *and* documented dispatch friction. |
| X2 | Monitoring / Self-Audit | **partial** — first piece shipped: `tools/brain-watch.sh` (Brain-builder watcher, THE KEYSTONE; SessionStart hook + `registry/brain-queue.md`). Cost/drift tracking still planned. See [`../BACKLOG.md`](../BACKLOG.md). |
| X3 | Approval Gate | the human checkpoint (`/momega-zeros`, `/momega-proposal`, `/momega-deck`) |

> **Added beyond Mo's roster:** Investment Evaluation (`/momega-evaluate`,
> [`../frameworks/business-evaluation.md`](../frameworks/business-evaluation.md)).

## Testing protocol
Promote v1 Candidate → Tested: run on **3 real client packages** from different
industries; Mo scores % rewrite; pass = all 3 under **<50%** (Commas) / **<30%**
(Zeros/deliverables); document results + date. Tested → Production: in real daily
use. *A prompt chat-iterated 5× but never tested on real data is still v1
Candidate.* **Nothing here is Tested yet** — all v1 Candidate.

## Meta artifacts (governance — import status)
- **Master Build Spec v3** — ⛔ have v1 only ([`../frameworks/vision.md`](../frameworks/vision.md) lifted from it); request v3.
- **Decision Log + Open Questions v2** — ⛔ not imported (resolves e.g. C7→PMF merge, numbering).
- **Action Sequence v1** — ⛔ not imported (12 steps to "Patient Zero").
- **This Artifact Library** — ✅ imported here.

## Not imported (build-OS)
Zap 0–5 workflow specs, task budgets, Plaud/PDF.co/Apollo/Instantly/Gmail
bindings, OpenClaw/Zapier/Build-HQ deployment targets. The orchestration they
encoded is replaced by Claude Code skills + the [`../frameworks/momega-os.md`](../frameworks/momega-os.md)
operating model.
