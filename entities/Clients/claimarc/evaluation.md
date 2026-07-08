# ClaimArc — Evaluation (Factory output)

> **Investment Evaluation OS** output. Consumes the canonical
> [`brain.md`](brain.md) (v1.1, 2026-06-24) per the Deliverable Sourcing Rule —
> every claim here traces to the Brain. Method:
> [`frameworks/business-evaluation.md`](../../../frameworks/business-evaluation.md).
> Date: 2026-06-24. **PROVISIONAL** — the Brain is thin (v1.1): the core
> economics (capital source, fee, loss model) are all open (§6, §13). Score what's
> known, mark the rest ⛔, and let the gates do the work.
> Re-run after `/momega-brain update claimarc Clients`.

**Frame:** ClaimArc is **not** a SaaS company. It is a **next-day claims-financing /
receivables-credit business** — it advances cash against submitted hospital claims
and collects from the payor on the backend (§0). It is sold *as* a SaaS-like
convenience ("get paid tomorrow"), but the P&L is a spread: per-claim fee minus
cost-of-advance-capital minus losses (§6, §10). It must be scored as a credit
business, not a software business.

## Scorecard (the 13 deck slots)

| # | Slot | State | Note |
|---|------|-------|------|
| 1 | One-liner / purpose | ✅ | "Next-day claims financing for hospitals — get paid tomorrow, not in 60 days" (§1). Clear and sharp. |
| 2 | Problem | ✅ | 60-day claim-payment cycles strangle hospital cash flow (§4). Real, acute, recurring pain for hospital finance/revenue-cycle leaders (§1). |
| 3 | Solution & 10x | 🟡 | Pay next-day on submitted claims, collect from payor later; pitched cheaper than factoring, hospital keeps upside / ClaimArc eats downside (§0). Genuinely 10x on *speed* — but "we eat it if it pays lower" is a balance-sheet liability, not a feature (§10). |
| 4 | Why now | 🟡 | Trigger noted: hospitals selecting new EHR (July 1 fiscal) as an entry wedge (§4). A sales trigger, not a structural "why now" — no tech/regulatory shift that makes the *financing* newly possible. [[ INFERENCE: 2 ]] |
| 5 | Market size | ⛔ | Hospitals + health systems, Medicare/Medicaid/commercial mix (§4). No TAM/SAM/SOM. [[ HITL: TAM, addressable claim volume ]] (§4). |
| 6 | Product | 🟡 | **Claim Payment Accelerator** described and credible; underwriting edge = claims-history + remittance data to predict payout (§3). **Xtract** is named but undefined (§3). Existence/maturity of the underwriting model unverified. [[ FOUNDER: what Xtract does; remittance-prediction accuracy at scale ]] (§3). |
| 7 | Business model | ⛔ | Small per-claim fee, cheaper than factoring (§0) — but **the entire P&L is the spread between fee and cost-of-capital-plus-losses, and none of those three numbers exist in the Brain** (§6). Cannot assess unit economics. The single most important slot for a credit business is empty. [[ HITL: per-claim fee, cost of capital, loss rate ]] (§6). |
| 8 | Moat / why you win | 🟡 | Claimed moat = remittance-prediction accuracy from claims/remit data (§3). Plausible but unconfirmed; "remittance-prediction accuracy at scale is the moat — confirm" is an open Brain item (§3). For a credit business, the real moat is also cheap capital — undisclosed (§13). |
| 9 | Go-to-market | 🟡 | Sales-led by Chris Coyne; cold-call + cold-email scripts exist (§2, §11). First named prospect: **Mission Community Hospital** — but the source doc is a placeholder holding only the name; no contact/stage (§4). One-pager target lwooten@pvhc.org (§1). Motion exists; pipeline unproven. |
| 10 | Traction | ⛔ | No customers, no revenue, no advance volume, no loss history (§0 lowest-confidence; §6). One named-but-unqualified prospect (§4). For a credit business with zero realized-loss data, traction *is* the underwriting proof — and it's absent. |
| 11 | Team | ⛔ | Chris Coyne (sales/founder; also HealthCues), Will Ogorek involved (§2). No capital partners, no credit/underwriting principal named — critical for a receivables-financing business. [[ FOUNDER: founders, roles, capital partners ]] (§2). |
| 12 | Financials | ⛔ | Empty (§6). No revenue, no spread, no loss reserves, no raise. [[ HITL: financial model + underwriting/capital docs ]] (§6, §11). |
| 13 | The ask | ⛔ | Not specified. Stage is `[[ FOUNDER ]]` (§1); Mo's engagement scope (deck/GTM vs raise) is an open advisor item (§13). [[ HITL: stage + ask + engagement scope ]] (§13). |

## Lens scores

| Lens | Score | Rationale |
|------|-------|-----------|
| **YC** ("make something people want") | **3/5** | Crisp, painful problem and a 10x-on-speed pitch hospital CFOs will understand instantly; a real sales motion with scripts (§11). But zero traction, no live metrics, and a complicated-story risk: the "convenience" framing hides a credit business (§10). [[ INFERENCE: 3 ]] |
| **First-principles** (do the numbers close?) | **1.5/5** | **The numbers cannot even be written down.** This is a spread business and the spread is undisclosed: per-claim fee − cost-of-advance-capital − loss rate = the whole P&L, and all three are blank (§6). "We eat it if it pays lower" only works if the underwriting model is accurate and the capital is cheaper than the fee — neither is evidenced (§3, §10). A business that only works if cost-of-capital is magically low "later" is the classic first-principles red flag. [[ INFERENCE: 2 ]] |
| **Smart-money** (will it return?) | **2/5 conditional** | The gating unknown is structural: **where does the advance capital come from?** (§0 single-highest-leverage question; §13 ⭐). Without the capital stack, loss reserves, and regulatory posture (factoring vs lending vs purchase-of-receivables, §10), this is un-underwritable. Capital-intensive + underwriting-dependent + thin Brain = track, don't lean in yet. [[ INFERENCE: 2 ]] |

**Overall: 2/5 — TRACK (provisional). Do not lean in until the capital + loss model is disclosed.**
ClaimArc has a sharp, real wedge into a genuine hospital pain and a working sales
motion — the front end is fundable. But it is a **receivables-credit business
wearing a SaaS pitch** (§0, §10), and on a credit business the entire decision is
the spread and the balance sheet, which the Brain does not yet contain (§6, §13).
This is not a flaw in the company so much as a flaw in what we *know*: the Brain is
v1.1 and the core is open. Score it honestly as un-underwritable today, and let the
gates convert it.

## The gates (must clear before any term sheet)

1. **Capital source + loss model (THE gate).** Where does the advance capital come
   from, at what cost, and what is the realized/modeled loss rate? (§0 single
   highest-leverage open question; §13 ⭐1). The spread between fee and
   cost-of-capital-plus-losses *is* the business (§6). Until this is disclosed,
   ClaimArc cannot be underwritten — every other question is secondary.
2. **Unit economics of one claim.** Per-claim fee, advance cost, expected loss,
   net spread, and the accuracy of the remittance-prediction model that makes
   "we eat the downside" survivable (§6, §3). Re-underwrite a single claim
   end-to-end.
3. **Regulatory posture.** Is this factoring, lending, or purchase-of-receivables,
   and does it clear healthcare claim-assignment rules? (§10 [[ HITL ]]). Different
   classifications carry very different capital, licensing, and enforceability risk.
4. **Product + team substance.** What is Xtract and how does it relate to the
   Accelerator (§3, §13 ⭐2)? Who are the founders, roles, and — critically for a
   credit business — the **capital partners / underwriting principal** (§2)?
5. **Stage + engagement scope.** Confirm stage, the ask (if any), Mo's engagement
   (deck/GTM vs raise), and qualify Mission Community Hospital + the full named
   pipeline (§4, §13 ⭐3).

## What's strong (don't lose sight of)

- A one-line value prop hospital CFOs grasp instantly: paid tomorrow, not in 60
  days (§1).
- A real, recurring, acute pain (60-day cycles strangling cash flow) with a clear
  buyer (§4).
- A working outbound sales motion with scripts already built (§11) and a first
  named prospect (§4).
- A plausible data/underwriting edge (claims + remittance history) *if* it proves
  out at scale (§3).

## Re-evaluate when

Capital source + loss model disclosed · single-claim unit economics provided ·
regulatory classification confirmed · Xtract defined + capital partners named ·
deck + financial model land → then `/momega-brain update claimarc Clients` and
re-score (§15).

## Forge notes (learning loop)

- **Business Forge:** for a **receivables-credit / financing** business, the
  scorecard's "Business model" and "Financials" slots collapse into a single
  load-bearing question — *the spread* (fee − cost-of-capital − losses). When the
  Brain lacks that triplet, the deal is un-underwritable regardless of how strong
  the front-end pitch is. Consider a credit-business sub-checklist (capital stack,
  loss reserves, regulatory classification) for the framework.
- **Persona Forge:** watch for the "SaaS pitch over a credit business" pattern
  (§0 asymmetry) — smart money's first move is to strip the convenience framing and
  price the balance-sheet risk.
