# Persona Forge — Sync Queue (pending deepening jobs)

> The **queue** of `/momega-persona-sync` jobs with confirmed vault signal, waiting
> to run. Built by the signal-scout pass (2026-06-24). Workers were launched but hit
> an account-wide session limit (resets ~04:00 UTC) before writing — one half-edit
> (cassandra) was reverted to keep the tree coherent. **Re-run these when limits
> clear.** Loop discipline: route to the moved layers, Edit not rewrite, append L07,
> bump version + `as_of`, raise maturity only as far as evidence earns.

## The corpus (one source)
Jan 14–16 2026 **Equilibrium Labs offsite** captured on Will Ogorek's Limitless
pendant — ~51 diarized first-person markdown lifelog files. Drive folders:
- **A** `1DxAr0H8Lva1L1LjcROqpCNimkQrP4no0` — 35 files, Jan 15/16 (EQL strategy + personal/family + financial).
- **B** `1wp0BtxP8BNZ3yLoeJQIx9qieHtFdPkfs` — 16 files, Jan 14 (AI/VC/startup philosophy + the cross-client mega-file).

**Attribution caveat (critical):** Limitless speaker numbers are NOT stable across
files — attribute by content/voiceprint, never by number. Large files
(`1xPN4IW…` 120KB, `1fEck8W…` 157KB, `1gqIo3w…` 130KB) need chunked reads.

## Confirmed jobs (real signal — run these)
| # | Person | Profile | Key source files (Drive id prefix) | Moves | Maturity |
|---|--------|---------|-----------------------------------|-------|----------|
| 1 | **siggi-clavien** | `entities/Clients/equilibrium-labs/people/siggi-clavien/` | A: 1Uxufw5, 1sO6jIM, 1MVGW6b, 18wR5JF + B liver files | L03–L07 + L01/02 (COVID/Kennedy-mentor-loss wound) | L2 → **L4** |
| 2 | **cassandra-clavien** | `entities/Clients/equilibrium-labs/people/cassandra-clavien/` | A: 18wR5JF, 1sO6jIM, 1MVGW6b, 1Uxufw5 | L03–L07 + strong L01/02 (only deep personal corpus she has; kills the placeholder wound) | L1 → **L4** |
| 3 | **will-ogorek** | `entities/People/will-ogorek/` | omnipresent (pendant-wearer); richest 184kYX9, 1Uxufw5, 1sO6jIM | L03–L06 + first real L01/02 | L1 → **L4** |
| 4 | **randy** | `entities/People/randy/` | A: 1Gkbmiu, 1Uxufw5, 184kYX9 + B sales-philosophy | L03–L07 (his actual sales method; today rests on one quote) | L0 → **L3/L4** |

## Conditional jobs (verify speaker FIRST; do not deepen on assumption)
| # | Person | Gate | If confirmed |
|---|--------|------|--------------|
| 5 | **michael-murphy** | Does "Murph" substantively SPEAK (B: 1AK5fh, 1U5ceA9, 1gqIo3w)? Mentioned-only → leave L0. | L0 → L2 |
| 6 | **mo-founder** | Positively identify Mo as a distinct speaker (B AI/agent-vision files, not Randy/not Will). Can't confirm → leave L0. | L0 → L3; personal facts not in evidence stay `[[ FOUNDER ]]` |

## Stuck until NEW signal is created (no vault 1:1 — honest)
41 of 47 profiles: all EAR Micro, ClaimArc, HealthCues, wisdm people, the investors,
and EQL/standalone people who are mentioned-only or absent from the corpus. These do
not deepen until a real conversation with them is captured. Not a gap in the system —
a gap in the data.

## After running
Re-run `bash tools/persona-validate.sh` (must stay 47/47) + `bash tools/momega-audit.sh --write`
(refreshes the roster + maturity), commit centrally, then delete the completed rows
from this queue.
