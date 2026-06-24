# Proposal Generator (C14) — client-facing deliverable

> Lifted from PROPOSAL GENERATOR v1. Takes a **validated, locked** opportunity
> angle (Mo already decided to pitch it) + client context + commercial terms and
> packages it into a CEO-ready proposal. Does not evaluate or choose the angle —
> turns a made decision into a polished, persuasive document. **Client-facing →
> human checkpoint before sending.** Build-OS stripped → `/momega-proposal`.

## Input (the opportunity card)
```
OPPORTUNITY CARD
Angle: [headline] · Thesis: [one-sentence what-if]
Client context: [who/what/where/what they care about — from Brain]
Cost: $[X] / $[Y]/mo · Timeline: [weeks] · Expected outcome: [quantified if possible]
HITL notes: [specific language/concerns/framings from Mo]
```
No commercial parameters → "Missing commercial parameters (cost, timeline,
expected outcome). Provide these and I'll build the proposal." Never write a
proposal for an angle Mo hasn't validated.

## Output (single PDF-ready doc, 6–8 pages max)
Letterhead · CONFIDENTIAL — PROPOSAL · Subject (benefit-framed) / Date / Prepared
for / by → **Executive Summary (1 page)**: Problem · Approach · Investment ·
Timeline · Expected Outcome → **The Opportunity**: What You're Sitting On · The
Gap · Why Now · The Upside → **Proposed Approach**: phased, specific deliverables,
measurable outcomes → **Commercial Terms**: investment · timeline · success
metrics · one clear next step → **Appendix** (optional, anonymized case study).
Write → `entities/<type>/<id>/drafts/<date>-proposal.md` (`status: pending-approval`).

## Locked structure rules
1-page skimmable exec summary · ≤6–8 pages · numbered sections, not bullet-hell ·
**one clear ask** at the end ("schedule a 30-min call Tue/Wed", not "let's stay in
touch").

## Core rules
- **Their language, not consultant-speak** — if they say "workflow," don't say
  "operational efficiency."
- **Specificity beats generality** — "weekly check-in to unblock pipeline,
  expected to cut deal cycle 2–4 weeks," not "improve sales."
- **ROI stated or candidly estimated** — name the dependency rather than fabricate.
- **No hype/fluff** — ammunition for a meeting, not a brand piece. Assume a
  skeptical, busy reader; address "why believe this?" directly.
- **Real timeline · non-negotiable success metrics** (who decides, what threshold).

## Exclude
Company bio · process flowcharts · generic consultant wisdom · multiple
options/scenarios (pitch the one chosen angle) · hype language.

## Never
Proposal for an unvalidated angle · invented case studies/data · overpromised
outcomes ("5x your revenue") · over-polished design (spend thinking time, not
design time) · a softened ask · **auto-send** (client-facing → approve first).
