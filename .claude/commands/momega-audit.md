---
description: Audit Momega coverage — which entities have a Brain + which Factory outputs, and what's missing. Optionally backfill the gaps.
argument-hint: [--backfill]
---

# /momega-audit

Answer "is the treatment run on everything?" Usage: `/momega-audit [--backfill]`.

Argument: `$ARGUMENTS`

## Steps
1. **Run the audit:** `bash tools/momega-audit.sh --write`. It scans
   `entities/<Type>/<id>/`, writes the coverage matrix to
   [`registry/coverage.md`](../../registry/coverage.md), and lists gaps (nodes
   with no Brain; registry clients with no entity dir).
2. **Report** the matrix + the gap list to the user.
3. **If `--backfill`:** work the gaps in priority order, honoring the
   **Definition of Done** in [`frameworks/momega-os.md`](../../frameworks/momega-os.md):
   - Any node missing `brain.md` → `/momega-onboard <id> <type>` (needs materials;
     if none, create a flagged stub Brain rather than fabricate).
   - Deal-stage Prospects/Clients without `evaluation.md`/`adversary.md` → run
     `/momega-evaluate` and `/momega-adversary`.
   - Investor/People stubs (v0.x) → flag for `/momega-brain ask` to capture thesis.
   Re-run the audit after backfilling and report the new state.

The audit is also wired to **SessionStart** (`.claude/settings.json`) so coverage
gaps surface at the top of every session — that's the forward guarantee.
