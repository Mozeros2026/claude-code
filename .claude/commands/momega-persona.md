---
description: Persona Forge — build Actor Dossiers (public + inferred) for the key humans in an entity's deal. Horizontal; runs on the people across any entity.
argument-hint: <node-id> [actor] [type]
---

# /momega-persona

Run the **Persona Forge** (harvester, horizontal). Usage:
`/momega-persona <node-id> [actor] [type]`. `type` defaults to `Prospects`.

Argument: `$ARGUMENTS`

## Steps
1. **Load** the entity's Brain; take actor names from §2 People (or the named
   actor). No Brain → run `/momega-onboard` first.
2. **Harvest + infer** per [`frameworks/persona-forge.md`](../../frameworks/persona-forge.md):
   for each key human — public background (cited), firm data, inferred
   behavioral/psychological baseline `[[ INFERENCE ]]`, incentives & risk posture,
   voice (if transcripts), gaps `[[ HITL ]]/[[ FOUNDER ]]`, and how to engage.
   **Separate public (cited) from inferred (tagged); never present psychology as
   fact; no fabrication.**
3. **Write** `entities/<type>/<id>/actor-dossier.md`, ending with a CAST SUMMARY
   (who decides / influences / blocks + the highest-leverage relationship move).
4. **Feed** gaps into the Brain (§13/§14) and the dossier into the smart-money
   lens, Trust-Building Sequencer, and outreach.

Part of full ingestion for any deal with named human counterparties.
