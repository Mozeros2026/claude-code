---
description: Meeting Prep (Z7) — one-page walk-in brief for a node from its Brain open items + the counterparties' psyche-profiles + latest deliverables.
argument-hint: <node-id> [person-slugs] [type] [--purpose "<agenda>"]
---

# /momega-prep

Run **Meeting Prep** (Z7) — the pre-meeting walk-in brief. Usage:
`/momega-prep <node-id> [person-slugs] [type] [--purpose "<agenda>"]`. `type`
defaults to `Prospects`; counterparties default to everyone with a profile under
the node's `people/`. Spec:
[`frameworks/mo-zeros/z7-meeting-prep.md`](../../frameworks/mo-zeros/z7-meeting-prep.md).

Argument: `$ARGUMENTS`

## Steps
1. **Load** the canonical Brain (`entities/<type>/<id>/brain.md`). No Brain → tell
   the user to run `/momega-onboard` first.
2. **Resolve the room.** Gather counterparty `psyche-profile.md` files (named
   slugs, else all under `entities/<type>/<id>/people/`). A named attendee with no
   profile → flag the gap, fall back to the Brain §2 People line, and note it.
3. **Pull the Export Package (only this):** Brain **§13/§14** (open asks/unknowns),
   **§8** Locked Decisions, **§12** Call Sheet; latest deliverables if present
   (`adversary.md` traps, `pmf-assessment.md`/`evaluation.md` thesis,
   `opportunities.md` angle — cite, don't re-derive); per counterparty L01 wound,
   L02 somatic fingerprint, L03 SCARF + voice, L06 how-to-engage / what-lands /
   what-kills-it + state (`as_of`). Honor staleness: a read `as_of` >90d is flagged
   STALE, not presented as current.
4. **Composite the one-page brief** per the spec: who's in the room · what they
   care about · the asks · the traps · settled (do-not-reopen) · the single
   next-step. Every line cites a Brain § **or** a profile §; reads of the room are
   tagged `[[ INFERENCE: 1-5 ]]`; the wound is a hypothesis. No fabrication — no
   invented attendees or motives.
5. **Write** to `entities/<type>/<id>/prep/<date>-<meeting-slug>.md`, ending with
   `MISSING FROM BRAIN / PROFILES` + a `SOURCE MANIFEST` (Brain version §s,
   profile versions + `as_of`, deliverables used).
6. **Feed back** gaps: Brain unknowns → `/momega-brain ask`; stale/missing persona
   reads → `/momega-persona` or `/momega-persona-sync`. Never write the Brain or a
   profile from here.

## Loop
Re-run before every meeting — cheap, because it only composites pre-built inputs.
When a fresh signal lands, route it first through `/momega-persona-sync` (profile)
and `/momega-brain ask` (§13/§14), **then** re-prep from the now-current libraries.
`/momega-audit` flags a node with an upcoming meeting and no current-Brain-version
prep as **due**.

Internal only — this includes the unvarnished trap analysis; it never ships to the
counterparty. Pairs with `/momega-sequence` (the run-up of touches before the ask).
