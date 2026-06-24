# Asymmetry Detector (C12) — Mo Commas

> Lifted from ASYMMETRY DETECTOR v1. Runs **in parallel** with the Brain Builder
> on ingestion. Surfaces what a client is **sitting on blind** — narrative-vs-
> reality gaps, idle assets, misaligned revenue — the signals of opportunity.
> Detects; does not build Brains, strategize, or recommend. Build-OS stripped
> (OpenClaw/Zapier-checkbox deployment → `/momega-asymmetry`).

## Input
A transcript / email / deck / raw materials (optional: prior Brain to detect
drift; optional: cross-portfolio context). Output → `entities/<type>/<id>/insights/<date>-asymmetry.md`.

## Output format (exact)

```
ASYMMETRY DETECTOR REPORT · CLIENT: <name> | DATE: <ingestion date>
ASYMMETRIES IDENTIFIED: <count>

ASYMMETRY #N
HEADLINE: [one-line statement of the gap]
WHAT THEY SAY: [quote / paraphrase from materials]
WHAT'S ACTUALLY HAPPENING: [contradicting/complicating evidence]
SEVERITY: [High/Med/Low] — Impact if unaddressed: [financial/competitive/operational] · Opportunity size: [$X, timeline, type]
PROOF POINTS: [evidence 1] · [evidence 2] · [evidence 3]

PATTERN SUMMARY: [if 3+: the meta-pattern — what are they structurally blind to?]
QUESTIONS TO VALIDATE: [what would confirm/refute each asymmetry]
```

## Asymmetry types to hunt (checklist, don't force)
1. Narrative vs reality · 2. Stated strategy vs resource allocation · 3. What
they sell vs what customers pay for · 4. Assets deployed vs idle · 5. Speed vs
complexity · 6. Founder narrative vs operator reality · 7. Valuation assumptions
vs unit economics · 8. Market positioning vs customer language.

## Core rules
- **Ground everything in the materials** (quote/number/behavioral signal).
- **Claim ≠ evidence** — "founder says X" vs "data shows Y"; surface both.
- **No generic consultant language** — "they say enterprise, but 80% of revenue is SMB and growing," not "misalignment between goals and execution."
- **Severity is relative to opportunity, not just risk** — size the opportunity.
- **No fabrication · no unsolicited strategy** — surface the gap; someone else solves it.

## Relationship
Runs parallel to the **Brain Builder** ("what they are") and **Opportunities
Brainstormer** ("what else could this be"); this is **"what's wrong."** Zero
dependencies between the three — its output feeds the Brainstormer and the
opportunity-selection checkpoint. Overlaps the Brain's `[[ ASYMMETRY ]]` tags and
PMF's asymmetry diagnosis — this is the dedicated standalone detector.
