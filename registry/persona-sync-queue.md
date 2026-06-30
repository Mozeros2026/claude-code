# Persona Forge — Sync Queue (pending deepening jobs)

> The **queue** of `/momega-persona-sync` jobs with confirmed vault signal. Built by
> the signal-scout pass (2026-06-24); **worked through 2026-06-30.** Loop discipline:
> route to the moved layers, Edit not rewrite, append L07, bump version + `as_of`,
> raise maturity only as far as evidence earns.

## Status: ✅ ALL ACTIONABLE JOBS PROCESSED (2026-06-30)

The one captured corpus (Jan 14–16 2026 **Equilibrium Labs offsite**, Will Ogorek's
Limitless pendant — `personal.md` + `1gqIo3w_clean.txt`, now stored at
`entities/Clients/equilibrium-labs/materials/transcripts/`) has been fully mined.

### Confirmed jobs — DONE
| Person | Result | Maturity |
|--------|--------|----------|
| **siggi-clavien** | wound CONFIRMED (mentor loss + COVID×4 + long-COVID → climb back); voice + somatic captured | L2 → **L4** |
| **cassandra-clavien** | placeholder wound killed; steward/"one-organism" identity emerged; nervous-system match w/ Siggi | L1 → **L4** |
| **will-ogorek** | essence → strategic orchestrator; poverty wound; scope-control anxiety; voice captured | L1 → **L4** |
| **randy** | strategy method captured (clinical-study-as-marketing-leverage; "burn the boats") | L0 → **L3** |

### Conditional jobs — RESOLVED (verified against transcript; no deepen)
| Person | Gate | Verdict (2026-06-30) |
|--------|------|----------------------|
| **michael-murphy** | Does "Murph" substantively SPEAK? | **NO — mentioned-only** ("Murph's going to decompress", "bond with Murph"); never a substantive line of his own. **Leave L0.** |
| **mo-founder** | Positively identify Mo as a distinct speaker? | **NO — "founder" appears only as a common noun** ("founder of bulletproof"); no positive speaker ID. **Leave L0.** |

## Stuck until NEW signal is created (no vault 1:1 — honest)
41 of 47 profiles (all EAR Micro, ClaimArc, HealthCues, wisdm people, the investors,
and the mentioned-only/absent EQL + standalone people) do **not** deepen until a real
captured conversation with them lands in the vault. Not a gap in the system — a gap in
the data. The cadence rule on each profile + the SessionStart staleness check will
re-fire automatically when such signal arrives.

## How a new job enters this queue
Drop a captured transcript/lifelog/call-note into the relevant
`entities/<…>/materials/transcripts/`, then run
`/momega-persona-sync <slug> --signal <path>`. The audit's >90-day staleness flag and
each profile's L07 cadence rule surface who is due.
