# Mo Mega — Vision, Mission, Why

> Lifted from Build Spec v1. The **vision/mission/why** and the **two-loop model**
> are kept verbatim in spirit; the build-OS (n8n, OpenClaw, VPS, Telegram, Plaud,
> specific vendors) is deliberately **not** carried over — see the Lift Filter in
> [`momega-os.md`](momega-os.md). Here Mo Mega runs as Claude Code agents + skills
> over git, not as a fixed infrastructure stack.

## Vision

Mo Mega is a modular agentic AI sales platform that **systematizes and scales
high-judgment consultative selling.**

It exists because Mo has a rare, valuable skill: he listens to founders, owners,
and buyers and **translates** between what they have, what they *think* they
have, what buyers actually pay for, and what asymmetric synergies exist across a
portfolio of seemingly unrelated companies. He compresses 150-page founder
pitches into 8-slide investor decks. He sits with C-suite buyers and finds
$50–100M of latent opportunity that has nothing to do with what the seller walked
in to sell. He turns sellers into trusted advisors by becoming "a local."

That skill is bottlenecked by Mo's time and presence. **Mo Mega's purpose is to
encode the skill** so the platform does most of the work autonomously, keeping
humans in the loop only at high-leverage moments.

## Mission

Encode each discrete operation of Mo's judgment into a reusable skill, ground
each in real case studies, and wire them into a flywheel where every conversation
makes the system smarter — so a new client can go from first conversation to
active engagement in days, with the human approving rather than producing.

## The two-loop model (the infinity-loop sales engine)

Two halves connected at human checkpoints.

### Mo Commas — the LEFT loop (judgment-heavy, low-volume, high-leverage)

The work that historically required Mo in the room. Takes **unstructured human
inputs** (voice/transcripts, emails, raw docs, decks, websites) and produces
**structured insight**. Its encoded primitives: Asymmetric Listening, Adjacent
Market Mapping, Buyer-Pain Hypothesizing, Compression/Translation, Cross-Bag
Synergy Detection, Sales-Maturity Diagnosis, Trust-Building Sequencing. See
[`primitives.md`](primitives.md) (C1–C7).

Outputs: buyer-pain hypotheses, repositioning recommendations, compressed pitch
narratives, asymmetric synergy maps, internal strategy memos, approved
client-facing deliverables.

### Mo Zeros — the RIGHT loop (execution-heavy, high-volume, automatable)

The work that historically required hours of manual production and orchestration.
Takes **approved insight** and operationalizes it: top-of-funnel lead gen, ICP
list building, outbound sequencing, collateral at scale, follow-up drafting,
meeting prep, lightweight pipeline state-keeping, and re-triggering Mo Commas when
new conversations occur. See [`primitives.md`](primitives.md) (Z1–Z8).

### The Bridge (the flywheel)

Every conversation — Mo on a discovery call, or a prospect replying to outbound —
is captured and fed back into Mo Commas. Mo Commas processes it into the next
round of insight + deliverables and hands them to Mo Zeros to execute. Round and
round.

In this repo: the **canonical Brain** ([`brain-builder.md`](brain-builder.md)) is
the knowledge layer both loops read and write; the **agent** (Claude Code +
Opus) is the brain that runs the loops; **git** is the system of record. No
separate orchestration stack is assumed.

## Non-negotiable principles (logic, not infra)

- **Humans approve, machines execute.** Every client-facing artifact passes a
  human checkpoint before it goes out. Internal-only work (memos, list building,
  draft prep) runs autonomously.
- **Reason only when judgment is required.** Don't spend a high-judgment pass on
  mechanical work.
- **The Brain is the source of truth.** Everything that happens is logged to the
  entity's Brain with structured metadata ([`schemas.md`](schemas.md)).
- **Platform-agnostic logic, per-entity state.** Skills and prompts are universal;
  per-entity data lives in `entities/<Type>/<id>/`; the cross-entity synergy graph
  lives in [`../bag/`](../bag/).
- **Ground every primitive in case studies, not abstractions.**
  ([`case-studies.md`](case-studies.md)).
- **Say "I don't have signal — ask the human" instead of confabulating.** Highest
  guardrail; baked into every primitive.
