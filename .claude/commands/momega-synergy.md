---
description: Cross-Bag Synergy Detector (C6) — read across all entity Brains + the bag graph to surface cross-entity synergies; every edge cites the two Brains it bridges.
argument-hint: [--node <id> | --type <Class> | all]
---

# /momega-synergy

Run the **Cross-Bag Synergy Detector** (C6) — surface the asymmetric
opportunities *between* nodes (shared buyers, warm-intro paths, complementary
offerings, portfolio plays, shared risks). Usage:
`/momega-synergy [--node <id> | --type <Class> | all]` (default `all`). Spec:
[`frameworks/mo-commas/c6-cross-bag-synergy.md`](../../frameworks/mo-commas/c6-cross-bag-synergy.md).

Argument: `$ARGUMENTS`

## Steps
1. **Read the bag first.** Load [`bag/synergy-graph.md`](../../bag/synergy-graph.md)
   (the live edge table + edge convention) and any `bag/*.md` companions. Sparse
   bag → say so (a thin graph yields weak hypotheses — the landmine).
2. **Build the node map.** From `registry/registry.md` + each Brain's §0/§1/§2/§4/§5,
   list live nodes with identity, ICP, and key people/partners. Cheap pass — pull
   only the sections the synergy types need, not whole Brains. Scope to `--node` /
   `--type` if given.
3. **Scan for edges** across the five synergy types (shared-buyer §4✕§4 ·
   warm-intro §2/§5✕§4/§2 · complementary §3✕§4 · portfolio thesis✕stage ·
   shared-risk §3-dependency✕§3-dependency).
4. **Source-gate (hard rule):** every claimed synergy MUST cite the **two Brain
   sections it bridges** (one per node). No two-sided cite → it's a `[[ HITL ]]`
   hypothesis, not a stated edge. Never invent an overlap or an intro path.
5. **Rank** by confidence (`[[ INFERENCE: 1-5 ]]`) × asymmetry value; cap at the
   material edges; pair each with a concrete next move + owner hint.
6. **Update the graph surgically** in [`bag/synergy-graph.md`](../../bag/synergy-graph.md):
   add new rows, edit moved rows (confidence/status), retire superseded edges
   (never delete). Write the run report to `bag/<date>-synergy-scan.md`. Create
   `bag/icp-library.md` / `bag/partners.md` only on first need; if a new synergy
   type needs a field, add the column and note it at the top of the graph file.
7. **Feed back** thin-data gaps → `/momega-brain ask` for the under-sourced node.
   Never write an entity Brain from here.

## Loop
Runs on every onboard (scan the new node against the bag, add candidate edges) and
on every Brain bump to §2/§4/§5 (re-scan only that node's edges — surgical).
`/momega-audit` flags registry nodes absent from the bag graph as **un-scanned →
due**. Bag completeness is the quality ceiling — keep it current.

Internal only — C6 surfaces edges and the next move; it does not write client-facing
intro copy (that's a Z-pipeline + checkpoint). Feeds `/momega-sequence` (warm-intro
paths) and the cross-bag section of the strategy memo.
