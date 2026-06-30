---
description: Deliverable Generator (Z4) — generic Brain→deliverable Factory; pull a Brain Export Package, emit a structured internal deliverable, route missing facts to Brain gaps.
argument-hint: <node-id> <deliverable-type> [type]
---

# /momega-deliverable

Run the **Deliverable Generator** (Z4) — the parent Brain→deliverable Factory.
Usage: `/momega-deliverable <node-id> <deliverable-type> [type]`. `type` (entity
type) defaults to `Prospects`. Spec:
[`frameworks/mo-zeros/z4-deliverable-generator.md`](../../frameworks/mo-zeros/z4-deliverable-generator.md).

Argument: `$ARGUMENTS`

## Steps
1. **Load** the canonical Brain (`entities/<type>/<id>/brain.md`, latest version).
   No Brain → tell the user to run `/momega-onboard` first.
2. **Route by type — specialize before generalize.** If `<deliverable-type>` maps
   to a dedicated Factory, defer to it and stop (don't reimplement):
   adversary→`/momega-adversary`, pmf→`/momega-pmf`, evaluation→`/momega-evaluate`,
   asymmetry→`/momega-asymmetry`, opportunities→`/momega-opportunities`,
   deck→`/momega-deck`, follow-up→`/momega-zeros z1`, meeting-prep→`/momega-prep`,
   proposal→`/momega-proposal` (client-facing, checkpoint). Only when **no**
   dedicated type fits, generate directly with the Z4 protocol.
3. **Assemble the Export Package.** Pull **only** the Brain sections the
   deliverable needs (per the EXPORT rule in
   [`frameworks/brain-builder.md`](../../frameworks/brain-builder.md)), verbatim
   with cites; mark empty sections `[Empty in Brain — see §N]`.
4. **Produce** the structured internal deliverable. Facts cite the Brain §;
   judgment is tagged `[[ INFERENCE: 1-5 ]]`. Lead with the decision it serves.
   **Deliverable Sourcing Rule (hard):** a needed fact the Brain lacks becomes a
   Brain gap (§13 advisor / §14 founder), never a guess; a draft that contradicts
   the Brain is wrong until the Brain is updated.
5. **Write** to `entities/<type>/<id>/<deliverable-slug>.md` (canonical filename if
   the type owns one, else `<date>-<slug>.md`), ending with `MISSING FROM BRAIN`
   + a one-line `SOURCE MANIFEST` (Brain version + sections used).
6. **Feed back** any surfaced gaps into the Brain via `/momega-brain ask` —
   never write to the Brain from here.

## Loop
Re-run is cheap and incremental: on a Brain bump, re-export only the sections that
moved and re-emit only the deliverable sections they feed. The artifact carries
the Brain version it sourced; `/momega-audit` flags a deliverable older than its
Brain as **stale → due a re-run**.

Internal only. Anything client-facing routes to the typed Factory that carries the
human checkpoint (`/momega-zeros z1`, `/momega-proposal`, `/momega-deck`).
