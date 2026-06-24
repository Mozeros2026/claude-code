# Momega OS — operating model

How Mo Mega runs, end to end. The principle: **run what we have, make it better,
always.** Every entity gets a Brain; every Brain gets sharper with each pass;
every pass teaches the system. The vision and the two-loop model live in
[`vision.md`](vision.md); the encoded skills in [`primitives.md`](primitives.md).

## The two-loop flywheel

Mo Mega = **Mo Commas** (LEFT loop, judgment) + **Mo Zeros** (RIGHT loop,
execution), joined at human checkpoints, over a shared **Brain** (the Library).

```
                       ┌──────────── THE BRAIN (Library) ────────────┐
                       │   brain-builder.md → entities/<t>/<id>/brain.md
                       └──────────────────────────────────────────────┘
   conversation/email/deck                                   approved insight
            │                                                       │
            ▼   MO COMMAS (judgment)              MO ZEROS (execution)  ▼
   /momega-onboard  →  /momega-commas  ──[human checkpoint]──▶  /momega-zeros
   (BUILD the Brain)   c1 shape · c2 pain          z1 follow-up · z2 memo
                       c3 adjacency · c5 bag       z3 deliverable · z4 ICP …
                       eval (investment)                  │
            ▲                                             ▼
            └──────────── the Bridge: every new conversation ───────────┘
                          feeds back into the Brain (the flywheel)
```

- **Library:** `/momega-onboard`, `/momega-brain build|update|ask|export`.
- **Mo Commas:** `/momega-commas <id> <c1|c2|c3|…|eval>` — produces insight.
- **Human checkpoint:** client-facing artifacts are approved, never auto-sent.
- **Mo Zeros:** `/momega-zeros <id> <z1|z2|…>` — operationalizes approved insight.
- **Bridge:** new conversations re-enter the Brain → next round of insight.

Learnings from every pass flow back into the Builder + primitives (iteration loop).

## What happens after the first conversation (the standard intake)

This is the canonical "after our first convo" path — run it on every new entity:

1. `/momega-onboard <id>` — scrape the conversation + ingest any materials, run
   the full BUILD protocol, write the canonical Brain, register the node.
2. Read **Section 0** (Confidence Map) and the **⭐ Section 13/14** questions.
3. Send **Section 14** (founder email) — that's the first outbound.
4. As answers/materials arrive: `/momega-brain ask` (partial) then `update`
   (full), bumping the version.
5. When a deliverable is needed and the Export Readiness manifest says READY,
   `export` to the relevant Factory.

## Runtime brain & specialist roster (from System Brain v1.2)

Mo Mega has a **runtime brain** — the agent that operators talk to, leads
aggressively, defaults to critic mode when something's suboptimal, distinguishes
**Built / Spec'd / Hypothesized / In-Production**, grounds every client
conversation in the latest Brain version (forces a BUILD if none exists), and
**never sends anything client-facing without explicit approval**. It delegates to
specialists; it doesn't duplicate their work. (Build-OS stripped: the original ran
on OpenClaw + n8n + Telegram + a Hetzner VPS with an Obsidian/Logseq vault — here
it's Claude Code agents + skills over git.)

### Parallel ingestion (the discovery pattern)

On a new transcript/material, **three specialists run simultaneously** (not
sequential, zero dependencies) — then a human checkpoint, then proposal:

```
new transcript ─┬─▶ Master Client Brain Builder   "what they are"   → brain.md
                ├─▶ Asymmetry Detector             "what's wrong"    → asymmetry report
                └─▶ Opportunities Brainstormer     "what else"       → GTM angles
                          │
                  [Mo picks an angle + locks terms]   ← human checkpoint
                          │
                          ▼
                  Proposal Generator → CEO-ready proposal → [approve] → send
```

### Specialist roster (canonical names → our skills)

| Specialist | Module | Role | Status here |
|------------|--------|------|-------------|
| Master Client Brain Builder | Library | canonical Brain | ✅ `brain-builder.md` |
| Asymmetry Detector | C13 | what they're sitting on blind | ⚠️ stub `asymmetry-detector.md` |
| Opportunities Brainstormer | C14 | what else could this be | ⚠️ stub `opportunities-brainstormer.md` |
| Proposal Generator | — | opportunity → proposal | ⚠️ stub `proposal-generator.md` |
| Brain Query | C10 | cited Q&A | ✅ `brain-query.md` (`/momega-query`) |
| Adversary | C8 | red-team | ✅ `adversary.md` (`/momega-adversary`) |
| PMF Assessment | C9 | strategy/PMF | ✅ `pmf-assessment.md` (`/momega-pmf`) |
| Deck OS | Z3 | pitch + reading deck | ✅ `deck-os.md` (`/momega-deck`) |
| Investment Evaluation | (added) | score the deal | ✅ `business-evaluation.md` (`/momega-evaluate`) |

> ⚠️ **Numbering reconciliation needed.** Two schemes collide: Build Spec v1 used
> C1–C7 / Z1–Z8 (Shape Listener … Collateral Patcher); System Brain v1.2 uses
> C8 Adversary, C9 PMF, C10 Brain Query, C13/C14 discovery. They're different
> granularities (cognitive *primitives* vs deployable *specialists*) that overlap.
> `[[ HITL: canonicalize the module numbers — one scheme, or an explicit two-layer
> map (primitives vs specialists). ]]`

### Operator commands (canonical → ours)

`@brain build` → `/momega-onboard` · `@brain query`/`@ask` → `/momega-query` ·
`@brain adversary`/`@redteam` → `/momega-adversary` · `@brain assess`/`@strategy`
→ `/momega-pmf` · `@asymmetry` / `@opportunities` / `@proposal` → (stubs;
`/momega-commas`/`/momega-zeros` until full prompts land) · `@deck` →
`/momega-deck` · `@status` → read the registry · `@approve` → the human checkpoint.

## Everything is a Brain

Prospects, companies, investors, people — each is an entity node with a canonical
`brain.md` in the fixed 16-section structure (re-pointed per
[entity-type variant](brain-builder.md#entity-type-variants-iteration-v21-momega1)).
`profile.md` is a thin index; the Brain is the source of truth. Metadata tags
(`[[ SOURCE ]]`, `[[ PUBLIC ]]`, `[[ HITL ]]`, `[[ FOUNDER ]]`, `[[ ASYMMETRY ]]`,
`[[ DEPENDENCY ]]`, `[[ REFRAME ]]`, …) are how knowledge and its provenance live
in the brain — and how Factories (and, later, agents) route work.

## Backfill: scrape every existing entity

When this OS is adopted, re-run the Brain Builder against everything already in
`entities/` so each node reaches the current standard. Status:

| Node | Brain | Notes |
|------|-------|-------|
| Prospects/wisdm | v1.1 | reconciled; §14 sent; awaiting founder answers |
| Investors/hooman | v0.1 | stub; thesis HITL |
| Investors/nevin | v0.1 | stub; identity + thesis HITL |
| Investors/jordan | v0.1 | stub; identity + thesis HITL |

## The LIFT FILTER (apply to every imported file)

We are lifting **skills and logic into agents** — not porting the old build OS.
The original Projects assumed an infrastructure we are not building. When folding
in any imported MD / custom instruction, run it through this filter:

**KEEP — the thinking** (this is the whole point):
- Methodology, structure, fixed section layouts, rubrics, checklists
- Tag systems, asset-class frameworks, question discipline, caps
- Evaluation lenses, asymmetry detection, charitable-reading / reframe discipline
- The Library/Factory pattern and the per-deliverable Export Requests

**STRIP — the build-OS scaffolding** (do NOT integrate):
- Named infra we thought we'd need: **n8n, OpenClaw, Zapier, Make, Airtable**,
  webhooks, queues, external DBs, automation routers
- Deployment assumptions: "load as system prompt in a Project", "sub-session",
  JSON-export-for-automation framing, agent-orchestration plumbing
- Anything describing *plumbing* rather than *thinking*

**TRANSLATE — re-point to our runtime** (Claude Code agents + skills + git):
- `@brain build|update|ask|export` → `/momega-onboard`, `/momega-brain …`
- "Project" / "specialist Project" → a skill (`.claude/commands/`) or subagent
- "Export Package for n8n routing" → Export Package consumed by a Factory skill
- system-prompt deployment → a Momega skill or agent definition

If a file is purely build-OS (no transferable logic), log it as *not imported*
and say why — don't silently drop it.

## IMPORT LOG

### Build Spec v1 — imported 2026-06-24

**Lifted (KEEP):** vision/mission/why + two-loop model → [`vision.md`](vision.md);
the 7 Mo Commas primitives + 8 Mo Zeros pipelines → [`primitives.md`](primitives.md)
(+ Phase-1 specs in `mo-commas/` & `mo-zeros/`); the primitive prompt design
pattern; Mo's case studies → [`case-studies.md`](case-studies.md); frontmatter +
tag standard → [`schemas.md`](schemas.md); falsifiers + logic landmines →
[`falsifiers.md`](falsifiers.md); the "bag" → [`../bag/`](../bag/). New commands:
`/momega-commas`, `/momega-zeros`.

**Stripped (NOT imported — build-OS, per the Lift Filter):** n8n, OpenClaw,
Hetzner VPS, Tailscale, Telegram bot, Plaud, AssemblyAI, the Apollo/Instantly/
Gmail/Calendar *bindings* (logic kept, delivery left pluggable), GPT-4o-mini,
the stack table, the 14-day sprint plan, "current state," and the tool-selection
"open decisions." Z4/Z5/Z6 kept as **logic-only** until a runtime delivery step
is chosen.

**Translated:** Obsidian-vault-on-VPS → git repo + `entities/`; `/clients/{id}/`
→ `entities/<Type>/<id>/`; `/system/prompts` → `frameworks/` + `.claude/commands`;
`/bag/` → `bag/`; Telegram approval → runtime-agnostic human checkpoint;
"OpenClaw+Opus brain / n8n nervous system" → Claude Code agents + skills over git.

### Deck OS v2 (THE_FRAMEWORK_v2.md) — imported 2026-06-24

**Lifted (KEEP — almost all of it):** the 11-beat spine + Cover/Bookend, the 11
Core Principles, the 15-trap Sharp Investor Filter, Zero-Hallucination, the
Two-Deck Principle, power-sentence craft, the Outline/Slide specs, beat-by-beat
guidance, and the Brain Export Request → [`deck-os.md`](deck-os.md) + the
`/momega-deck` command. Marks **C4 Compressor** built and **Z3** deck-type built
in [`primitives.md`](primitives.md). Calibration people captured as nodes: Randy
(People), Jordan (enriched v0.2), AJ (new). Client nodes registered for import:
EAR Micro, ClaimARC, Mo Mega.

**Stripped:** "paste into a Claude Project as custom instructions" deployment;
the exact PptxGenJS `content.js/design.js/build.js` + `NODEPATH` invocation (kept
as a *pluggable* rendering note); the `deck-os-factory` project naming; the
"no JSON/XML because it leaks in Project environments" rationale.

**Translated:** "this Project is a Factory / client Project is the Library" → our
existing Library/Factory model (Deck OS = C4 + Z3 deck); Brain "Section 0–12"
refs → our 16-section `brain.md`; the EXPORT REQUEST → `/momega-brain export <id>
deck`.

### Specialist prompts batch — imported 2026-06-24

**Lifted whole:** Adversary v1 (C8) → [`adversary.md`](adversary.md) +
`/momega-adversary`; PMF Assessment v1 (C9) → [`pmf-assessment.md`](pmf-assessment.md)
+ `/momega-pmf`; Brain Query v1 (C10) → [`brain-query.md`](brain-query.md) +
`/momega-query`. **Reconciled:** Deck OS v1 (Z3) — superseded by v2; grafted its
Brain-anchor field into [`deck-os.md`](deck-os.md). **Logic-lifted:** Mo Mega
System Brain v1.2 → the runtime brain + parallel-ingestion pattern + specialist
roster + command map above (stripped OpenClaw/n8n/Telegram/VPS/Obsidian).
**Stubs created** (named but prompts not yet provided): Asymmetry Detector (C13),
Opportunities Brainstormer (C14), Proposal Generator.

## IMPORT QUEUE — original-project material still to fold in

Bring the rest over; each is run through the **Lift Filter** above:

- [ ] **Asymmetry Detector / Opportunities Brainstormer / Proposal Generator** —
      the full prompts (currently stubs from the System Brain description).
- [ ] **Client Brains/materials** — EAR Micro, ClaimARC, Mo Mega (and others), so
      the named clients become real Brains, not registry placeholders.
- [ ] **Module-numbering decision** — canonicalize C1–C7/Z1–Z8 vs C8/C9/C10/C13/C14.

- [ ] **Other Factory prompts** — Deck OS, Outreach OS, Call Prep, ICP, PMF,
      Adversary/Red-Team (and any others). Each becomes `frameworks/<name>.md` +
      a `/momega-<name>` command with a defined Brain Export Request.
- [ ] **Any Brains already built** for other entities (so they're stored, not lost).
- [ ] **Naming / taxonomy / tag conventions** from the original system, so this
      repo matches your established standard rather than my reconstruction.
- [ ] **The Brain Builder's own change history** (so we version it correctly
      going forward).

`[[ HITL: paste the original-project MD + custom instructions; until then these
Factories are declared in Export Readiness but not yet implemented. ]]`
