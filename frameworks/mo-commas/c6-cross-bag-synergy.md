# Cross-Bag Synergy Detector — C6 (Mo Commas)

> "The bag" is the cross-entity / portfolio layer: the asymmetric opportunities
> that live *between* nodes, not inside any one of them (cf. CS2 — bring partners,
> become the local). C6 reads **across all entity Brains + the `bag/` graph** and
> surfaces the edges: shared buyers, warm-intro paths, complementary offerings,
> and portfolio plays. The registry is the node index; the bag is the **edges**;
> C6 is the engine that proposes and maintains them. Consumes the Brains; never
> builds or updates them.

## Input
- **All** entity Brains (`entities/*/*/brain.md`, latest versions) — or a focus
  subset (`--node <id>`: edges touching one node; `--type Investors`: edges within
  a class).
- The existing bag graph: [`../../bag/synergy-graph.md`](../../bag/synergy-graph.md)
  (the live edge table) + any `bag/*.md` companion files (`icp-library.md`,
  `partners.md`) as they exist.
- No bag file yet → seed it (see "Wiring to the bag" below). Sparse bag → say so;
  a thin graph yields weak hypotheses (the landmine in `synergy-graph.md`).

Writes proposed/updated edges to [`../../bag/synergy-graph.md`](../../bag/synergy-graph.md)
and the run report to `bag/<date>-synergy-scan.md`.

## Synergy types (what to look for)
1. **Shared buyer** — two nodes sell to the same ICP / named account → bundle,
   co-sell, or one warms the other. (Cite each node's Brain §4 Customers & Market.)
2. **Warm-intro path** — node A's §2 People / §5 Partners reaches a person/org
   node B is chasing (its §4 named customers or §2 power network). The intro is the
   asset.
3. **Complementary offering** — A's §3 Product solves what B's buyers also need
   (adjacent, non-competing) → joint offer or referral. (Cf. C4 Adjacent Market
   Mapper for the single-node version.)
4. **Portfolio play** — capital/thesis fit: an Investor node's thesis (§ identity /
   positioning) matches a Prospect/Client node's stage + sector → aligned capital +
   distribution (the wisdm ↔ loveyourliver edge is the archetype).
5. **Shared dependency / risk** — two nodes lean on the same platform/partner →
   shared exposure (defensive synergy: a hedge or a joint negotiating position).

## Process
1. **Build the node map.** From the registry + Brain §0/§1, list the live nodes
   with their one-line identity, ICP (§4), and key people/partners (§2/§5). Cheap
   pass — don't ingest full Brains; pull the sections each synergy type needs.
2. **Scan for edges.** For each synergy type, cross-match nodes. A candidate edge
   exists only when **both** sides have a Brain fact that supports it.
3. **Source-gate every edge (the hard rule).** A claimed synergy MUST cite the
   **two Brain sections it bridges** (one per node). No two-sided cite → it's a
   hypothesis to verify with a `[[ HITL ]]`, not a stated edge. Never invent a buyer
   overlap or an intro path that isn't in a Brain.
4. **Score + rank.** Confidence (H/M/L, `[[ INFERENCE: 1-5 ]]`) × value (asymmetry
   size). Lead with the highest leverage; cap the report at the material edges.
5. **Emit the next move.** Each surfaced edge pairs with a concrete action (the
   intro to make, the bundle to pitch, the `[[ HITL ]]` to confirm) and an owner
   hint. An edge with no actionable next step is noise.
6. **Update the graph surgically.** New edge → add a row; an existing edge that
   moved → edit that row (confidence/status), leave the rest untouched (the lean
   way). Keep superseded edges with a `retired` status, don't delete.

## Output format (exact)
```
MODE: Cross-Bag Synergy · SCOPE: <all nodes | node <id> | type <T>> · <date>

## SYNERGIES (ranked)
1. <A> ⇄ <B> · TYPE: <shared-buyer|warm-intro|complementary|portfolio|shared-risk>
   - Hypothesis: <the play, one line>
   - Bridges: <A Brain §N: fact>  ✕  <B Brain §M: fact>     ← both cites required
   - Confidence: <H/M/L [[ INFERENCE ]]> · Value: <asymmetry size>
   - Next move: <intro / bundle / confirm> · Owner: <hint> · Status: <open|[[ HITL ]]>

## BAG GAPS
- Nodes with thin §4/§2 data → weak edges; route to /momega-brain ask.
- Candidate edges that need a fact to confirm → [[ HITL ]].

## GRAPH DELTA
Edges added / updated / retired this run (mirrors synergy-graph.md).
```

## Wiring to the bag
- The canonical edge table lives in [`../../bag/synergy-graph.md`](../../bag/synergy-graph.md)
  (`| From | To | Hypothesis | Confidence | Status |`, extended here with a **Type**
  column + the two-sided Brain cite in the Hypothesis cell). C6 reads it on entry
  and writes the delta on exit — the graph is the persistent state; the scan report
  is the run log.
- **Companion files** (create on first need, don't pre-build): `bag/icp-library.md`
  (ICPs reusable across nodes → feeds shared-buyer detection + Z4 list-building),
  `bag/partners.md` (the refer-in/out network → feeds warm-intro detection).
- **Convention extension** is allowed and logged: if a new synergy type needs a
  field, add the column to `synergy-graph.md` and note it at the top of that file
  (self-tuning, operating-doctrine §2). Never silently drop a node from the graph.

## Loop (not a one-shot)
Bag completeness *is* the quality ceiling (the landmine). So C6 runs as a loop:
**on every onboard**, scan the new node against the existing bag and add its
candidate edges; **on every Brain bump** to §2/§4/§5, re-scan only that node's
edges (surgical — spend where the signal lands). The audit flags nodes present in
the registry but absent from the bag graph as **un-scanned → due**.

## Core rules
- **Two-sided cite or it's not an edge** — the non-negotiable honesty gate.
- **Decision-relevance over completeness** — surface the edges that change a move,
  not every theoretical adjacency.
- **No fabrication** — no invented overlaps, intros, or theses; missing → `[[ HITL ]]`.
- **Surgical graph maintenance** — edit the row that moved; keep history.

## Never
Update an entity Brain (flag bag gaps → `/momega-brain ask`) · assert an edge with
a one-sided cite · delete a superseded edge (retire it) · produce client-facing
intro copy (that's a Z-pipeline + checkpoint) · let the registry and the bag drift.

## Relationship to neighbors
C6 is the **cross-node** view; [`c4-adjacent-market-mapper.md`](c4-adjacent-market-mapper.md)
is the single-node adjacency map (C6 generalizes it across the portfolio). It
feeds [`../mo-zeros/z2-strategy-memo.md`](../mo-zeros/z2-strategy-memo.md) (the
"cross-bag" section) and supplies the warm-intro paths that
[`c11-trust-sequencer.md`](c11-trust-sequencer.md) sequences into a touch-plan.
