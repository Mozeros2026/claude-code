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

## Flagged for review (possible entities / unclear)
- `[[ HITL: "The Zoo" / "The Legion Personnel Synthesis" / "Phoenix Data Synthesis" + animal-emblem images (Gorilla M&A, Orca, Wolfpack, Elephant statesman) — looks like a prior AI-agent-team concept of Will's. Is this a Mo Mega precursor to fold in, a separate project, or archive? ]]`
- `[[ HITL: "TeraCrunch Sales Affiliate Agreement (William Ogorek)" — is TeraCrunch a client/partner to track? ]]`
- `[[ HITL: "Pitch deck Order_Speaker Frame_BabyBear.pptx" + "EQ pitch deck feedback" — deck-framework artifacts; reconcile with Deck OS? ]]`

## Excluded as build-OS / noise (per Lift Filter)
Installers + binaries: GoogleDriveSetup.exe ×2, VSCodeUserSetup.exe, Antigravity.exe,
node-v24 msi, *.zip exports, *.bin attachments. Stock/generated images. Not imported.

## Not deeply read (large/low-marginal-value; available on demand)
40–124MB decks (EAR Micro Investor Deck, EQL Master Global Deck), Keynote `.key`
files (not text-extractable via the connector), videos (.mp4), the
`data-export_2026-01-20` archive, the WhatsApp image set. Re-run a targeted read
on any of these if a Brain needs the detail.
