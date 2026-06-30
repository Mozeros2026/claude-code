# Z4 — Deliverable Generator (Mo Zeros)

> The **generic Brain→deliverable Factory** — the parent pattern every specific
> Factory specializes. Adversary, PMF, Evaluation, Opportunities, Deck and the
> rest are all *typed* instances of this move: pull a Brain Export Package for the
> named deliverable, run the type's logic, emit a structured **internal**
> artifact, and route any missing fact back to the Brain as a gap. When a
> deliverable type has no dedicated Factory yet, this is the one that runs.
> Consumes the Brain; never builds or updates it.

**ROLE:** Take a `(node, deliverable-type)` pair, assemble the right Export
Package, and produce a structured internal deliverable that honors the
**Deliverable Sourcing Rule** — every fact traces to a Brain section; nothing is
invented.

## Input
- The node id + entity type (`entities/<type>/<id>/brain.md`, latest version).
- A **deliverable type** — either a registered Factory type (route to its spec)
  or a free-form internal deliverable (one-pager, briefing, comparison, objection
  sheet, scope outline, FAQ, etc.).
- No Brain → `"No Brain loaded for <id>. Run /momega-onboard first."`

Writes to `entities/<type>/<id>/<deliverable-slug>.md` (a deliverable that already
owns a canonical filename — `adversary.md`, `pmf-assessment.md`,
`evaluation.md` — writes there; ad-hoc ones write to `<date>-<slug>.md`).

## Routing — specialize before you generalize
If the requested type maps to a dedicated Factory, **defer to it** rather than
re-implementing:

| Type | Route to |
|------|----------|
| adversary / red-team | [`../adversary.md`](../adversary.md) · `/momega-adversary` |
| pmf / strategy | [`../pmf-assessment.md`](../pmf-assessment.md) · `/momega-pmf` |
| evaluation / score | [`../business-evaluation.md`](../business-evaluation.md) · `/momega-evaluate` |
| asymmetry | [`../asymmetry-detector.md`](../asymmetry-detector.md) · `/momega-asymmetry` |
| opportunities | [`../opportunities-brainstormer.md`](../opportunities-brainstormer.md) · `/momega-opportunities` |
| deck | [`../deck-os.md`](../deck-os.md) · `/momega-deck` |
| follow-up (client-facing) | [`z1-follow-up-drafter.md`](z1-follow-up-drafter.md) · `/momega-zeros z1` |
| strategy-memo (internal) | [`z2-strategy-memo.md`](z2-strategy-memo.md) |
| meeting prep | [`z7-meeting-prep.md`](z7-meeting-prep.md) · `/momega-prep` |
| proposal (client-facing) | [`../proposal-generator.md`](../proposal-generator.md) · `/momega-proposal` — **checkpoint** |

Only when **no** dedicated type fits does Z4 generate directly with the protocol
below.

## Process (the parent pattern)
1. **Resolve the type.** Registered → route (above) and stop. Unregistered →
   continue; name the deliverable's *job* in one line (who reads it, what decision
   it serves) so the structure follows the job, not a template.
2. **Assemble the Export Package.** Pull **only** the Brain sections the
   deliverable needs (per the EXPORT rule in [`../brain-builder.md`](../brain-builder.md)),
   verbatim, with their cites. Mark any empty section `[Empty in Brain — see §N]`.
   Don't ingest the whole Brain when three sections carry the job.
3. **Produce the deliverable.** Structured output (headed sections, scannable).
   Facts cite the Brain section; synthesis/judgment is tagged
   `[[ INFERENCE: 1-5 ]]`. Lead with the decision the reader has to make.
4. **Source-gate (the hard rule).** A needed fact the Brain lacks is **not**
   invented — it becomes a Brain gap (§13 advisor / §14 founder) surfaced in the
   output's MISSING-FROM-BRAIN block and routed via `/momega-brain ask`. If the
   draft would contradict the Brain, the draft is wrong until the Brain is updated.
5. **Close with the gap block + provenance.** End every deliverable with
   `MISSING FROM BRAIN` (the gaps this surfaced) and a one-line source manifest
   (which Brain version + sections fed it).

## Output format (exact)
```
MODE: Deliverable · NODE: <name> | BRAIN v<date> · TYPE: <deliverable-type>

[Job line: who reads this, what decision it serves.]

<structured body — sections scoped to the deliverable's job; facts cite §N;
 judgments tagged [[ INFERENCE ]]>

## MISSING FROM BRAIN
- GAP: <fact needed> → routed to §13 (advisor) | §14 (founder)

## SOURCE MANIFEST
Brain v<date> · sections used: <§ list> · type: <registered Factory | ad-hoc>
```

## Loop (not a one-shot)
Re-run is cheap and **incremental**: on a Brain bump, re-export only the sections
that moved and re-emit only the deliverable sections they feed (the lean way —
spend where the signal lands). The deliverable carries the Brain version it was
built from; the audit flags any deliverable older than the Brain it sources as
**stale → due a re-run**. That staleness flag is the forcing function.

## Core rules
- **Deliverable Sourcing Rule is absolute** — facts trace to the Brain; missing →
  a gap, never a guess (CLAUDE.md #2/#3).
- **Specialize before generalize** — if a dedicated Factory exists, route to it;
  Z4 never reimplements a typed Factory's logic.
- **Internal only** — Z4 emits internal artifacts. Anything client-facing (z1,
  proposal, deck send) routes to the typed Factory that carries the human
  checkpoint; Z4 itself never produces send-ready outbound.
- **Honest to signal** — thin Brain → an honest stub with explicit gaps, never a
  padded read.

## Never
Update the Brain (flag gaps in §13/§14) · invent a fact to fill a section ·
re-implement a registered Factory · skip the MISSING-FROM-BRAIN block · ship a
client-facing artifact without the typed checkpoint.

## Relationship to neighbors
Z4 is the **trunk**; the typed Factories (C8/C9/C12/C13, Eval, Deck) are
**branches**. [`z2-strategy-memo.md`](z2-strategy-memo.md) is a typed internal
deliverable; [`z7-meeting-prep.md`](z7-meeting-prep.md) is a typed internal
deliverable that *composites* Brain + persona. When in doubt about a new
deliverable type, build it as a Z4 ad-hoc first; promote it to its own Factory
only once it earns a stable schema (the four-beat, operating-doctrine §4).
