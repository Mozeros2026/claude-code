# Vault Manifest — Google Drive scrape (2026-06-24)

Record of the full deep sweep of the Drive ("the vault"), so coverage is auditable.
Entities below were built/updated into Brains; the rest is inventoried as feed
material or excluded as noise (per the Lift Filter).

## Entities found → Brains

| Entity | Type | Key vault materials | Brain |
|--------|------|---------------------|-------|
| **Equilibrium Labs** | Client (keystone) | EQL fundraising deck (Q3'25), EQ.Two.Companies restructure, Liver Company DD (Dec'25), de-liver-ance science (DLVR booklet, UCL studies), shareholder updates, financial models, CRO/GTM proposals | `Clients/equilibrium-labs/` v1.0 |
| **EAR Micro / Piearcings** | Client | Ear Micro Deck, Platform Pitch, H2'26, Investor Deck, KAITC Short, **EAR Micro Patents.pptx**, EGS retainer, GLS Capital NDA, StageEARS/UE Pro MOU | `Clients/ear-micro/` v1.0 |
| **ClaimArc** (Retrieve Remit) | Client | ClaimArc Cold Call & Email; "Mission community hospital" prospect | `Clients/claimarc/` v1.0 |
| **HealthCues** | Client | HealthCues cold scripts, Healthcues leads sheet, leave-behind flyers | `Clients/healthcues/` v1.0 |

## People found → nodes
- **Will Ogorek** — GTM/CRO at Equilibrium Labs (loveyourliver.com); wisdm evaluator; TeraCrunch affiliate → `People/will-ogorek/`.
- **Chris Coyne** — sales on ClaimArc + HealthCues → `People/chris-coyne/`.
- Captured inside entity §2 (not standalone): Siggi Clavien, Mimi Somerman, Chris Keeble, Cassandra Odqvist, Drs Morris-Stiff/Amati/Ajaz/Shah (EQL); Patsy Nigh, Bear Clark, Troy Calderwood + advisors (EAR Micro).
- Confirmed: **Hooman Fakki** = loveyourliver.com / EQL (node updated).

## Feed material (inventoried, not separate entities)
- **de-liver-ance® / The Liver Clinic** product collateral — feeds Equilibrium Labs (brochures, ingredient studies, product videos, science booklets, pro formas, "Master Global Deck" 124MB).
- EAR Micro deck variants + StageEARS — feed EAR Micro.

## Resolved / archived
- **"The Zoo" / "The Legion" / "Phoenix" + animal-emblem images** — confirmed by
  Mo (2026-06-24): a **separate entity, no longer being built. Archived — do not
  fold in.** Excluded from the OS.

## Whole-vault completeness pass (2026-06-24)
Swept the entire Drive (all folders, all-files, persona/skill/company keyword
searches). **Conclusion: the current-entity roster is complete** — no new active
Mo Mega client surfaced beyond EQL, EAR Micro, ClaimArc, HealthCues (+ wisdm +
investors/people). What else is in the vault:
- **Will's career history (not current entities):** KULE Partners consulting
  (MSAs/SOWs, producer agreements ~2021), TrackMy / TrackMySolutions, VeriVax
  vaccination-verification, OnSite Waste, Lightning Fit, FROG client MSA — old
  ventures/clients of Will's, archived as history (capture in `People/will-ogorek`
  if ever needed, do not spin up entities).
- **Conversation/voice-note `.md` exports** (Jan 2026, sales/strategy/personal) —
  raw founder ramblings; potential Brain feed for *Mo Mega itself*, not new entities.
- **TeraCrunch** — has an Introduction Deck + Will's affiliate agreement; an
  AI/ML **partner/vendor**, not a client. `[[ HITL: track TeraCrunch as a partner node? ]]`

## Persona skills — NOT in the vault
The "persona skills" (and any other old skill prompts) are **not in the Drive** —
they live in the original Claude Projects, like the brain-builder / deck-os /
adversary prompts were. **Action: paste them and they'll be lifted through the
Lift Filter** (KEEP logic, STRIP build-OS, TRANSLATE to `/momega-*`). Candidates
to add once provided: a Persona Forge (buyer/founder/investor persona builder)
feeding the smart-money lens + outreach.

## Flagged for review (still open)
- `[[ HITL: "Pitch deck Order_Speaker Frame_BabyBear.pptx" + "EQ pitch deck feedback" — deck-framework artifacts; reconcile with Deck OS? ]]`

## Excluded as build-OS / noise (per Lift Filter)
Installers + binaries: GoogleDriveSetup.exe ×2, VSCodeUserSetup.exe, Antigravity.exe,
node-v24 msi, *.zip exports, *.bin attachments. Stock/generated images. Not imported.

## Not deeply read (large/low-marginal-value; available on demand)
40–124MB decks (EAR Micro Investor Deck, EQL Master Global Deck), Keynote `.key`
files (not text-extractable via the connector), videos (.mp4), the
`data-export_2026-01-20` archive, the WhatsApp image set. Re-run a targeted read
on any of these if a Brain needs the detail.
