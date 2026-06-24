---
description: Persona Forge LOOP — surgically update a person's psyche-profile.md from ONE new signal. Route → read only affected sections → Edit (diff, not rewrite) → append ledger. ~10× cheaper than a rebuild.
argument-hint: <person-slug> --signal <path-or-quote>
---

# /momega-persona-sync  (the surgical loop — the default update path)

Evolve a `psyche-profile.md` from **one new signal**, spending tokens **only where
the signal lands**. This is the everyday path; the full engine (`/momega-persona`)
is for first builds and rare deep passes. Schema + routing table:
[`frameworks/persona-forge-schema.md`](../../frameworks/persona-forge-schema.md).

Usage: `/momega-persona-sync <person-slug> --signal <path-or-quote>`
Argument: `$ARGUMENTS`

## The loop (do not read the whole profile)
0. **Locate** the profile and read **only** its `<!-- SECTION INDEX -->`,
   frontmatter, and L07 tail — not the 70KB body. Confirm identity is clean (one
   node, canonical name; no Neil/Neal-style drift) before compounding anything.
1. **CLASSIFY** (tiny pass): who is this about? what signal type? Map type →
   affected layers via the routing table:
   - therapy / deep-personal → **L01, L02 (incl. SOMATIC)**
   - business / deal transcript → **L03, L04, L05, L06, L07**
   - email / text → **L06, L07** (+ L03 voice if rich)
   - voice-log / notes → **L06, L07**
   - enrichment / public → **L04, L05** (facts only)
   - **every signal, always → L07 session-log append**
   *Escape hatch:* if the signal is tagged `group` but the subject is the
   **principal** and something material happened, **widen** to the right path and
   **add the new branch to the routing table** in the schema (the loop tunes its
   own routing — log the miss).
2. **LOAD** — grep the routed section anchors for live line ranges; **Read only
   those** (5–10KB), plus a bounded slice of the signal (don't ingest a 50K
   transcript whole if its summary/hints carry the delta).
3. **SYNTHESIZE** — what does this signal *add* to those sections? Never overwrite
   blind: add / refine / contradict against what's there. Higher-signal source can
   override lower; keep the old read with its `as_of`. Score any L07 prediction
   this signal tests (confirmed / revised — a sharpening revision beats a reversal).
4. **EDIT** — surgical **Edit** calls (diff), **never Write** (rewrite). Touch only
   the routed sections. Leave everything else byte-for-byte untouched.
5. **APPEND** — one L07 session-log line (always), plus any hypothesis/prediction
   status moves and new commitments/contacts.
6. **BUMP** — frontmatter `profile_version`, `updated`, `source_count`; refresh
   `somatic_fingerprint` / `maturity` only if this signal moved them.
7. **VERIFY surgical** — confirm anchors unchanged (none added/removed) and the
   first content change sits in a routed section (deep-psych untouched for a deal
   signal). Then mark the signal processed so the cadence check won't re-fire it.

## Report (Step-5 style)
```
persona-sync · <slug>   vN.M → vN.M+1
  signal:  <type> — <one line>
  touched: <layers/sections actually edited>
  delta:   <what changed: predictions scored, hypotheses moved, facts added>
  flags:   <none | ⚑ DECISION needed | routing-table miss logged+fixed>
```

## Guardrails
- **Token efficiency is a guardrail, not a nicety.** Reading the whole profile to
  change one section is the failure mode this skill exists to prevent.
- **Names at the root** — fix slug/source + keep the wrong form as an alias.
- **No stored line-index** — grep anchors at runtime (a stale index is waste).
