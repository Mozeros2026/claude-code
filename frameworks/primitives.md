# Primitives — the encoded skills

> Mo's skill is not one move; it's a judgment loop of discrete operations. Each is
> encoded as its own skill, grounded in [`case-studies.md`](case-studies.md). The
> infra from Build Spec v1 (n8n workflows, OpenClaw) is dropped; the **primitive
> logic** is what we lift. Each primitive reads/writes the canonical Brain
> ([`brain-builder.md`](brain-builder.md)).

## How primitives map to our architecture

- **Library** = Brain Builder — the knowledge layer both loops use.
- **Mo Commas (LEFT / judgment)** = C1–C7, plus the **Investment Evaluation**
  specialist ([`business-evaluation.md`](business-evaluation.md), an addition
  beyond Mo's original 15). Run with `/momega-commas <id> <primitive>`.
- **Mo Zeros (RIGHT / execution)** = Z1–Z8. Run with `/momega-zeros <id> <pipeline>`.
- Client-facing Mo Zeros outputs pass a **human checkpoint** before sending.

## Mo Commas — LEFT loop (7 primitives)

| ID | Primitive | Purpose | Status | Spec |
|----|-----------|---------|--------|------|
| C1 | **Shape Listener** | Extract what the speaker over-explains, omits, defends, takes pride in — vs what actually generates revenue | ✅ built | [`mo-commas/c1-shape-listener.md`](mo-commas/c1-shape-listener.md) |
| C2 | **Pain Hypothesizer** | From a buyer conversation, rank hypotheses about what they actually pay to solve, in their language | ✅ built | [`mo-commas/c2-pain-hypothesizer.md`](mo-commas/c2-pain-hypothesizer.md) |
| C3 | **Adjacent Market Mapper** | From product + current uses, generate 5–10 lateral market hypotheses with reasoning | ✅ built | [`mo-commas/c3-adjacent-market-mapper.md`](mo-commas/c3-adjacent-market-mapper.md) |
| C4 | **Compressor** | Founder's full materials → investor-grade deck (the "$1 → $15" thesis) | ✅ built | [`deck-os.md`](deck-os.md) (Deck OS v2) |
| C5 | **Cross-Bag Synergy Detector** | Read the bag graph; propose asymmetric opportunities across the portfolio | ⏳ planned | [`../bag/`](../bag/) |
| C6 | **Sales-Maturity Diagnoser** | Classify where a client sits on the sales-sophistication spectrum; recommend which Mo Zeros pipelines to activate | ⏳ planned | — |
| C7 | **Trust-Building Sequencer** | Design a multi-touch trust sequence by buyer profile (the "become a local" mechanism) | ⏳ planned | — |
| — | **Investment Evaluation** | Score a deal through YC / first-principles / smart-money lenses (addition) | ✅ built | [`business-evaluation.md`](business-evaluation.md) |

## Deployable specialists (canonical, from System Brain v1.2)

Beyond the cognitive primitives below, Mo's live system defines deployable
specialist prompts that consume a Brain. Built here:

| Specialist | Module | Skill | Spec |
|------------|--------|-------|------|
| Adversary (red-team) | C8 | `/momega-adversary` | [`adversary.md`](adversary.md) |
| PMF Assessment | C9 | `/momega-pmf` | [`pmf-assessment.md`](pmf-assessment.md) |
| Brain Query (cited Q&A) | C10 | `/momega-query` | [`brain-query.md`](brain-query.md) |
| Deck OS | Z3 | `/momega-deck` | [`deck-os.md`](deck-os.md) |
| Asymmetry Detector | C13 | (stub) | [`asymmetry-detector.md`](asymmetry-detector.md) |
| Opportunities Brainstormer | C14 | (stub) | [`opportunities-brainstormer.md`](opportunities-brainstormer.md) |
| Proposal Generator | — | (stub) | [`proposal-generator.md`](proposal-generator.md) |

> ⚠️ The C8/C9/C10/C13/C14 numbers (System Brain v1.2) overlap the C1–C7 scheme
> below (Build Spec v1). Different granularities — *specialists* vs *cognitive
> primitives*. `[[ HITL: canonicalize into one scheme or an explicit two-layer
> map ]]`. See [`momega-os.md`](momega-os.md) roster.

## Mo Zeros — RIGHT loop (8 pipelines)

| ID | Pipeline | Purpose | Status | Spec |
|----|----------|---------|--------|------|
| Z1 | **Follow-Up Drafter** | Client-facing follow-up email in Mo's voice from any transcript (checkpoint before send) | ✅ built | [`mo-zeros/z1-follow-up-drafter.md`](mo-zeros/z1-follow-up-drafter.md) |
| Z2 | **Internal Strategy Memo** | Internal-only memo on what we think we can sell this client | ✅ built | [`mo-zeros/z2-strategy-memo.md`](mo-zeros/z2-strategy-memo.md) |
| Z3 | **Deliverable Generator** | Approved one-pagers, talk tracks, narratives, proposals, demo scripts | ⏳ partial | decks ✅ via [`deck-os.md`](deck-os.md); other formats planned |
| Z4 | **ICP List Builder** | Target lists from approved ICP (needs an enrichment integration — logic only for now) | ⏳ logic-only | — |
| Z5 | **Outbound Sequencer** | Configure/run cold outbound (needs a delivery integration — logic only) | ⏳ logic-only | — |
| Z6 | **Calendar + Meeting Prep** | Schedule next meeting; pre-meeting brief from prior context (calendar integration deferred; brief is buildable now) | ⏳ partial | — |
| Z7 | **Pipeline State Keeper** | Lightweight CRM in the repo — accounts, interactions, next steps | ⏳ planned | — |
| Z8 | **Collateral Patcher** | Read existing collateral; propose improvements / hole-punches | ⏳ planned | — |

> **Integration note:** Z4/Z5/Z6 originally bound to Apollo/Instantly/Gmail/
> Calendar. Per the Lift Filter those bindings are dropped — we lift the *logic*
> (what list, what sequence, what brief) and leave the delivery mechanism as a
> pluggable step, decided per runtime, not hardcoded.

## Phasing (lifted from the spec, runtime-agnostic)

- **Phase 1 — minimum loop:** C1, C2, C3, Z1, Z2. Conversation → shape + pain +
  adjacency → strategy memo + drafted follow-up → human checkpoint. *(built)*
- **Phase 2:** C4, C5, C6, Z3, Z4, Z5, Z6. *(planned)*
- **Phase 3:** C7, Z7, Z8. *(planned — need Phase 1/2 in real use to design right)*

## Primitive prompt design pattern (author every skill this way)

```
ROLE:    one sentence — what this primitive does
INPUT:   exact format expected (usually: a Brain export or a transcript)
PROCESS: numbered cognitive moves, each referencing the relevant case study
OUTPUT:  exact structured output, writable to the Brain / an insight file
DO NOT:  failure modes — hallucinating buyer psychology, generic frameworks,
         confabulating signal instead of saying "ask the human"
EXAMPLES: case-study input → output (see case-studies.md), 2–3 worked
```
