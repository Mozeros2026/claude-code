# Business Evaluation Framework

How Momega evaluates a company. The goal is to look at a business the way
**smart money** looks at it — Y Combinator, first-principles operators (Elon),
and seasoned angels (our own investor panel: Nevin, Hooman, Jordan) — and to
surface not just a score but **what we still don't know**.

This framework is a living document. Every evaluation should teach it something
(see [Persona Forge / Business Forge](#persona-forge--business-forge)).

---

## 1. The deck order (Momega canonical)

We believe pitch decks have a *correct order*, because the order mirrors how an
investor's brain de-risks a deal. Evaluate each slot in this sequence; a strong
business answers them in this order without making you skip ahead.

| # | Slot | The question it answers |
|---|------|-------------------------|
| 1 | **One-liner / purpose** | What is this, in one sentence? |
| 2 | **Problem** | Whose pain, how acute, how often? |
| 3 | **Solution** | Why does this solve it, and why is it 10x not 10%? |
| 4 | **Why now** | What changed (tech, regulation, behavior) that makes this possible/urgent today? |
| 5 | **Market size** | TAM / SAM / SOM — bottom-up, not "1% of a huge number". |
| 6 | **Product** | Show it. Does it actually exist and work? |
| 7 | **Business model** | How money is made; unit economics (CAC, LTV, margin). |
| 8 | **Moat / why you win** | Defensibility: network effects, IP, data, distribution, brand. |
| 9 | **Go-to-market** | How the first 1,000 and next 100k customers are reached. |
| 10 | **Traction** | Growth rate, retention, revenue, the slope of the line. |
| 11 | **Team** | Founder-market fit. Why *this* team wins. |
| 12 | **Financials** | Projections grounded in unit economics, not hope. |
| 13 | **The ask** | How much, at what, and use of funds. |

---

## 2. The lenses

Score the business through three lenses. Each lens weights the deck slots
differently.

### YC lens — "Make something people want"
- **Growth rate** is the single number that matters. ~5–7%/week at early stage.
- **Do users love it?** Retention curves that flatten high; organic word of mouth.
- **Founder-market fit** and ability to explain the company simply.
- Default-alive vs default-dead: can they reach ramen profitability?
- Red flag: a complicated story for why there's no traction yet.

### First-principles lens (Elon) — "Is the hard thing actually solved?"
- Reason from physics / unit economics, not analogy. Do the numbers close?
- Is there a genuinely hard technical or structural problem, and is it solved
  (or is the plan to solve it credible)?
- 10x improvement on the thing that matters, not incremental.
- Vertical integration / cost curve: does it get cheaper as it scales?
- Red flag: a business that only works if a cost magically drops "later".

### Smart-money lens (angels: Nevin / Hooman / Jordan) — "Will this return the fund?"
- Defensibility and timing. Why won't an incumbent crush this?
- Capital efficiency: how much cash to the next meaningful milestone?
- Distribution advantage — the thing most decks under-weight.
- Clean cap table, coachable founders, realistic ask.
- Each named investor's specific thesis lives in `entities/Investors/<id>/`.

---

## 3. Scorecard

For each deck slot, record: **state** (✅ strong / 🟡 thin / ⛔ missing) and a
one-line note. Then a verdict per lens (1–5) and an overall.

```
| Slot          | State | Note |
|---------------|-------|------|
| One-liner     |       |      |
| Problem       |       |      |
| ... (all 13)  |       |      |

Lens scores:  YC _/5   First-principles _/5   Smart-money _/5
Overall:      _/5   — recommendation: pass / track / lean-in
```

An evaluation done before we have the deck/public data is **provisional**:
score what's known, mark the rest ⛔, and let the gap report drive the asks.

---

## 4. The gap report (the most important output)

Smart evaluation is mostly knowing what you don't know. After scoring, produce
the **missing-questions** list: the specific things the brain needs before a
real decision. This is the artifact we hand back to the founder — exactly like
the "bear" exercise (ingest prompt + deck + public presence → present back the
holes). See [`brain-ator.md`](brain-ator.md).

---

## Persona Forge / Business Forge

Persona Forge (what *founders/investors* are like) and Business Forge (what
*good businesses* look like) are the learning loops behind this framework. Every
evaluation should:
1. Note any new question that turned out to matter → add it to the deck order /
   lens checklists here.
2. Note any investor-specific preference observed → update that investor's node.

This file is meant to get smarter with every business we run through it.
