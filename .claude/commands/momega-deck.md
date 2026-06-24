---
description: Deck OS v2 — build a pitch deck + reading deck for an entity from its canonical Brain (11 beats, Sharp Investor Filter, two-deck).
argument-hint: <node-id> <outline|ship|slide N> [type]
---

# /momega-deck

Run **Deck OS v2** — the pitch-deck Factory. Usage:
`/momega-deck <node-id> <mode> [type]`. `type` defaults to `Prospects`.

Argument: `$ARGUMENTS`

## Steps

1. **Export from the Brain.** Pull the Deck OS Brain Export Package via
   `/momega-brain export <id> deck` (sections + tags listed in
   [`frameworks/deck-os.md`](../../frameworks/deck-os.md)). Validate completeness;
   carry any `MISSING FROM BRAIN` into slides as `[[ MISSING ]]`. **Zero-
   Hallucination:** every fact traces to the Brain or becomes a placeholder.
2. **Run the mode** per [`frameworks/deck-os.md`](../../frameworks/deck-os.md):
   - `outline` (default) — Cover + 11 beats + Bookend; per-beat section label,
     title, power sentence, flow, sniff-check; one Open Questions list. Stop.
   - `ship` — full Slide Output Spec for every slide; **both** pitch + reading
     decks by default; run all 15 Sharp Investor Filter traps + the 11-principle
     check before any slide is "done."
   - `slide N` — one slide, both versions.
3. **Honor the framework.** 11-beat spine (fixed order) · 11 Core Principles ·
   15-trap filter · one power sentence/beat · section label every slide · Cover +
   Bookend structural · capital-as-operational-fuel Ask.
4. **Hand off.** Emit the handoff block (Brain version, decks produced, gaps,
   recommended Brain updates, any Principle 8 reframes applied). File outputs to
   `entities/<type>/<id>/collateral/` and recommend a Brain UPDATE if gaps are
   material.

Rendering to `.pptx` is a pluggable runtime step (pitch deck carries speaker
notes in the notes pane). If `brain.md` doesn't exist, run `/momega-onboard`
first.
