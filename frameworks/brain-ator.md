# Brain-ator — entity creation + gap detection

> ⚠️ **Reconstructed.** This is rebuilt from a description of the original
> "brain-ator creator" prompt (the one used with **bear** in chat before we
> moved to code). Drop the real prompt in here to replace it — see
> [Reconcile](#reconcile).

The brain-ator turns raw, early-phase signal about a company into a Momega
entity **and**, just as importantly, tells you what's still missing.

## Inputs it ingests

1. **The initial prompt / conversation** — the email or chat that introduced the
   company (contacts, intent, stated next steps, social cues like "wants
   feedback before looping in X").
2. **Their deck** — pitch deck / business plan / investor materials.
3. **Their public presence** — website, socials, press, founder history,
   anything externally verifiable.

## What it produces

1. **Entity** — `profile.md` (structured facts) + `brain.md` (running memory),
   filed under `entities/<Type>/<id>/`, plus a registry row.
2. **Evaluation** — scored against [`business-evaluation.md`](business-evaluation.md).
3. **Gap report ("present back what was missing")** — the deliverable. For every
   deck slot and every lens, what do we *not* yet know? Phrase each gap as a
   concrete question we can put to the founder.

## Method

1. **Scrape** the conversation for every fact, contact, document, constraint,
   and social signal. Capture, don't infer; mark inferences as inferences.
2. **Map** what was captured onto the 13 deck slots + 3 lenses.
3. **Diff** the map against "what a confident decision needs". Each unfilled
   cell is a gap.
4. **Rank** gaps by decision-impact (a missing moat matters more than a missing
   logo).
5. **Present back** the ranked gaps as questions — grouped by who can answer
   them (founder vs public research vs our own panel).

## Output template (`missing-questions.md`)

```
# <Name> — Missing questions

## Blocking (need before any decision)
- [ ] <question> — (slot: <deck slot>, lens: <lens>)

## Important (need before lean-in)
- [ ] <question> ...

## Nice-to-have / verify publicly
- [ ] <question> ...

## Already answered (for the record)
- <fact> — source: <where>
```

## Reconcile

The original bear prompt should live here. When you paste it, keep whatever it
did better than this reconstruction and fold the rest in. Open questions for the
original:
- Did it score, or only gap-detect?
- Did it auto-pull public presence, or take it as input?
- What was its exact "present back" format?
