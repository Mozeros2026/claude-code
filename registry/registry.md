# Momega Registry

Master index of all entity nodes. One row per node. Each node has a canonical
Brain at its path. Onboard with `/momega-onboard <id>`.

## Prospects

| ID    | Name                 | Brain | Export-ready Factories | Evaluation | Primary contact | Owner | Path |
|-------|----------------------|-------|------------------------|------------|-----------------|-------|------|
| wisdm | wisdm™ Wellness, PBC | v1.1 (§14 sent) | Deck, Call Prep, Evaluation | 2.8/5 — TRACK → conditional lean-in ($4M seed) | Shad Groverland | Will / loveyourliver.com | `entities/Prospects/wisdm/` |
| hitl | HITL (Healthcare IT Leaders) | v0.5 | Persona Forge: psyche-profiles (Ben Hilmes, Bob Bailey) + crosswalk + cast dossier | M&A/advisory target — eval/adversary/pmf pending | Ben Hilmes (CEO) · Bob Bailey (Founder) | Will / Mo | `entities/Prospects/hitl/` |

## Investors

| ID     | Name         | Affiliation        | Brain | Persona | Thesis captured | Path                          |
|--------|--------------|--------------------|-------|---------|-----------------|-------------------------------|
| hooman | Hooman Fakki | loveyourliver.com  | v0.1  | v1.0 (L1) | ⛔ no            | `entities/Investors/hooman/`  |
| nevin  | Nevin        | —                  | v0.1  | v1.0 (L0) | ⛔ no            | `entities/Investors/nevin/`   |
| jordan | Jordan       | capital deployer / syndicator | v0.2 | v1.0 (L0) | partial — Sharp Investor Filter calibrator | `entities/Investors/jordan/` |
| aj     | AJ           | capital deployer / syndicator | v0.1 | v1.0 (L0) | partial — Sharp Investor Filter calibrator | `entities/Investors/aj/` |

## People

| ID    | Name  | Role                              | Brain | Persona | Path                      |
|-------|-------|-----------------------------------|-------|---------|---------------------------|
| will-ogorek | Will Ogorek | GTM/CRO @ Equilibrium Labs; network hub; wisdm evaluator | v0.5 | v1.0 (L1) | `entities/People/will-ogorek/` |
| chris-coyne | Chris Coyne | Sales — ClaimArc + HealthCues | v0.3 | v1.0 (L1) | `entities/People/chris-coyne/` |
| randy | Randy | Senior pitch-narrative advisor (Deck OS calibrator) | v0.1 | v1.0 (L0) | `entities/People/randy/` |

## Clients

Partial Brains built from in-context system memory; primary materials still to
import to promote past v0.x.

| ID | Name | Domain | Brain | Path |
|----|------|--------|-------|------|
| equilibrium-labs | Equilibrium Labs | Liver health — de-liver-ance® + The Liver Clinic (loveyourliver.com) | v1.0 | `entities/Clients/equilibrium-labs/` |
| ear-micro | EAR Micro (Piearcings LLC) | Hearables / ear-computing IP (enforceable IP) | v1.0 | `entities/Clients/ear-micro/` |
| claimarc | ClaimArc (Retrieve Remit, LLC) | Next-day hospital claims financing | v1.0 | `entities/Clients/claimarc/` |
| healthcues | HealthCues | Section 125 employer FICA-savings benefits | v1.0 | `entities/Clients/healthcues/` |
| mo-mega | Mo Mega | GTM consultancy (this platform) | v0.5 | `entities/Clients/mo-mega/` |

> Vault scrape (2026-06-24) sourced these from Google Drive. Still to scrape:
> Equilibrium Labs (Will's org), the EAR Micro deck variants, and deeper folders.
> New people surfaced: Chris Coyne (ClaimArc + HealthCues), the EAR Micro team
> (Patsy Nigh, Bear Clark, Troy Calderwood) + advisors — captured in node §2.

## Persona Forge coverage (2026-06-24)

**Every human we talk about or to is mapped.** 48 `psyche-profile.md` files exist —
7 standalone People/Investor nodes + 39 deal counterparties under
`entities/<entity>/people/<slug>/` + the 2 HITL principals. Maturity is honest to
signal: **10 at L2** (real wound reads where the corpus supports it — Siggi, Bear,
Patsy, Troy, Dan Hesse, Susan Paley, John Ferrie, Shad, Ben, Bob), **21 at L1**,
**17 at L0** (honest stubs that hold the slot + inventory `[[ HITL ]]` gaps; no
confabulated wounds). The audit enforces this every session; deepen any profile
with `/momega-persona-sync <slug> --signal <path>` as transcripts/emails arrive.
Open identity flags: `randy-foliente` vs `People/randy` (same person?), `viv-unknown`
(HITL access point), `mo-founder` (the founder — personal depth is a `[[ FOUNDER ]]`
gap), `neil-hilton` (ClaimArc vs HealthCues same person?).
