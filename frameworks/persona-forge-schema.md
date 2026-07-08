# Persona Forge — Schema v2.3 (the source of truth)

> **PERSONA FORGE** maps **people** the way the Brain Builder maps **businesses**.
> A business Brain answers *what is this company and how do we sell it?* A persona
> Brain answers *who is this human, what wound drives the behavior, and how do we
> navigate them?* Same rigor, same source-discipline, same living-document loop —
> pointed at a person instead of a company.
>
> This file is the **schema = the contract**. Every persona file inherits it, so
> depth is structural, not a one-off. Two skills consume it: the **engine**
> (`/momega-persona`, first build + rare deep pass) and the **loop**
> (`/momega-persona-sync`, continuous surgical updates). Output:
> `entities/<type>/<id>/people/<slug>/psyche-profile.md`.

Lifted from the original Persona Forge build (schema v2.3) via the **Lift Filter**:
the *logic* is kept verbatim in spirit; the *build-OS* (`~/.claude` skill paths,
`claude-shared` vault layout, `persona-ignition.sh` / `harvest-wire-run.sh` cron,
Apollo/Plaud bindings) is stripped and re-expressed as Claude Code skills over git.
The triggers it encoded are re-expressed as the **Ignition rule** and **Cadence
rule** below — run by judgment + `/momega-audit`, not a daemon.

---

## The 7 layers

A psyche-profile is built in seven layers, shallow-to-deep then back to applied.
Each layer is a `##` section with a stable anchor (the engine and loop both grep
these anchors to route surgical edits — **never rename them**).

| # | Layer | Maps | Key contents |
|---|-------|------|--------------|
| **01** | **Essence** | the soul | core wound · gift · ikigai · telos · the one-line "who they are when no one's watching" |
| **02** | **Architecture** | the build | Jungian cognitive functions · Big Five · Enneagram (+ wing/instinct) · Shadow · **Somatic fingerprint** (THE SOMATIC LENS) · archetypes |
| **03** | **Operating System** | the runtime | voice & register · power/status moves · influence pattern · SCARF profile · decision style · default drivers |
| **04** | **Capability** | the toolkit | aptitudes · skills · weaknesses · domains of mastery vs. bluff |
| **05** | **Crosswalk** | the network | pairwise relationship docs (`crosswalks/<a>__<b>.md`): SCARF + talk-track alignment **+ § NERVOUS SYSTEM COMPATIBILITY** (do the two wounds rhyme or clash?) |
| **06** | **Application** | the play | how to engage · what lands · what kills it · how we present the business to *this* person · **estimated current state** (this week's read, dated) |
| **07** | **Longitudinal** | the memory | append-only: session log · hypothesis ledger · predictions (scored against reality) · commitments · contact cadence · evolution log |

**Layer 01 is the foundation; Layer 07 is the spine.** Surface traits
(legitimacy hunger, urgency, control, people-pleasing) are **adaptations, not
wounds** — always trace them down to the wound in L01. Behavior is the symptom;
the wound is the cause; the deal must honor the wound.

---

## The 3 cross-cutting lenses

Lenses are not sections — they qualify *every* claim in *every* layer.

1. **Evidence / Confidence.** Public fact → cite the source. Inference → tag
   `[[ INFERENCE: 1-5 ]]`. The wound is always a **hypothesis**, never asserted.
   No transcript/observation behind a psych claim → it's a gap, not a finding.
2. **Temporal / State.** People change. Every somatic / relationship / state read
   carries an `as_of:` date and goes **stale at >90 days** (flag, don't silently
   trust). A "neutral" reading from six months ago is not current truth.
3. **Congruence / Truth.** Watch for the gap between stated and revealed — what
   they *say* they want vs. what their choices protect. Note contradictions
   (`[[ CONTRADICTION ]]`); the gap is itself signal.

---

## THE SOMATIC LENS (the 7th master in Layer 02)

The instrument that reads the **nervous system beneath the behavior** — wartime
(warrior/escalation), freeze (process/avoidance), fawn (people-pleasing),
collapse, etc. — from how a person *moves through pressure*, not from a diagnosis.

- **Source-agnostic and named after no one.** It is THE SOMATIC LENS — the
  forge's instrument. (It was seeded by a practitioner's method; that's a
  provenance note, not a name. Never call it "Jenn" / anyone's lens.)
- **Runs HIGH** on therapy/1:1 depth; **runs `[[ INFERENCE: LOW–MED ]]`** sketched
  from ordinary behavioral evidence — *any* node with enough 1:1 corpus gets a
  `§ SOMATIC HYPOTHESIS` block. (e.g. "controlled rage / Hulk" = warrior-mode;
  extreme process-orientation under stress = a freeze tell.) You don't need a
  couch to sketch it — you need enough observed behavior under pressure.
- Feeds the **wound-level crosswalk** (Layer 05): two wartime systems *amplify*
  under stress (neither decompresses the other); wartime + freeze can *spiral*.
  This is the highest-value question between any two people.

---

## The learning loop (how a persona stays alive)

```
new signal (transcript > email/text > voice-log > enrichment > public)
   │
   ├─ ENGINE  /momega-persona          first build, or rare quarterly deep pass
   │            reads everything → synthesizes → writes the whole profile
   │
   └─ LOOP    /momega-persona-sync     every subsequent signal (the default)
                classify → route → read only affected sections → Edit (diff) →
                append L07 ledger → bump version.   ~10× cheaper than a rebuild.
```

- **Signal hierarchy (highest → lowest):** 1:1 transcript > email/text >
  voice-log/notes > enrichment (e.g. Apollo) > public web. Higher signal can
  overwrite lower; never the reverse without a note.
- **`--update` rule — never overwrite blind.** Read the existing profile first,
  then **add / refine / contradict** with the new signal. Old readings are kept
  with their `as_of` so the evolution is auditable.
- **Predictions get scored.** L07 holds dated predictions; when the transcript
  that tests one arrives, mark it confirmed/revised — a brain that grades its own
  reads against reality. Revision that *sharpens* (narrows the condition) beats
  reversal.

### Signal → section routing table (the key artifact for surgical updates)

The loop routes a signal to **only** the layers it actually moves:

| Signal type | Routes to | Rationale |
|-------------|-----------|-----------|
| Therapy / deep-personal | L01, L02 (incl. SOMATIC) | wound-level evidence |
| Business / deal transcript | L03, L04, L05, L06, L07 | runtime + capability + network + play |
| Email / text | L06, L07 (+ L03 voice if rich) | state + ledger |
| Voice-log / notes | L06, L07 | current state |
| Enrichment / public | L04, L05 (facts only) | capability + network nodes |
| **Every signal, always** | **L07 session-log append** | the spine never skips |

**Escape hatch — widen when the signal demands it, then log the miss.** A signal
tagged `group` normally routes to session-log-only — but if the subject is the
*principal* and something material happened (a partnership struck), route the full
business path and **add the new branch to this table** so the next run handles it
automatically. The loop tunes its own routing.

**No stored line-index.** Section line numbers drift and a stale index is waste —
grep the anchors at runtime for live ranges. (The lean way: spend only where the
signal lands.)

---

## Ignition & cadence (lifted from the cron, run by judgment)

The original auto-fired builds via cron; here the same triggers are **rules the
operator + `/momega-audit` enforce** — no daemon, just discipline:

- **Ignition rule.** A person becomes a first-class node (gets a `psyche-profile.md`,
  not just a brain mention) once there's real 1:1 depth — **≥1 conversation of
  ~30min, or ≥2 conversations.** Below that, they live as a §2 People line in the
  entity Brain. `/momega-audit` flags nodes that have crossed the line without a
  profile.
- **Cadence rule.** Any profile whose source material is newer than its
  `updated:` date is **due a sync** — that's the loop's work queue. The engine's
  full deep pass is **quarterly or on-demand**, not routine.
- **Staleness rule (enforced).** Every profile carries `updated:` and every
  somatic/relationship/state read carries `as_of:`. `/momega-audit` flags any
  profile not refreshed in **>90 days** as STALE in `registry/persona-roster.md`
  and the SessionStart gap line — so a read can never silently rot into false truth.
- **Roster.** `registry/persona-roster.md` is the canonical index of every mapped
  human (auto-generated from the profile files — no manifest to drift). The audit
  regenerates it on `--write`.
- **Creation seam (the forever guarantee).** The forcing function lives at BOTH
  ends: `/momega-brain build|update` and `/momega-onboard` must create a profile for
  every human they name (a named human without a profile is an incomplete Brain),
  and the audit continuously verifies coverage + staleness. Nothing slips through
  either gate.

---

## Output contract — `psyche-profile.md`

Frontmatter (machine-readable; the loop bumps these):

```yaml
---
node_id: <slug>                 # canonical; misspellings kept ONLY as aliases
display_name: <Proper Name>     # the human's correct name — fix at the root
aka: [<alias>, ...]             # registered aliases so re-matching + namecheck survive
entity: <entity-id>             # the deal/company this person belongs to
profile_version: <vN.M>
updated: <YYYY-MM-DD>
source_count: <n>
somatic_fingerprint: <one-line, e.g. "warrior / escalation — [[ INFERENCE: LOW-MED ]]">
maturity: L<0-4>                # how complete the profile is
---
```

Body = the 7 layers (stable `##` anchors), then an appendix:
**§ 0 Confidence Map · § Source Log · § Evolution Log · § Maturity · § Unknowns
(`[[ HITL ]]`) · § What's New.** Begin each profile with a `<!-- SECTION INDEX -->`
comment listing the anchors (not line numbers) so surgical routing is deterministic.

### Deal-level rollup — `actor-dossier.md`
Per-person depth lives in `psyche-profile.md`. The **deal-facing CAST SUMMARY**
(who decides / influences / blocks + the single highest-leverage relationship move)
lives in the entity's `actor-dossier.md`, which *links to* each person's profile.
The dossier is the one-page deal read; the profile is the human's full brain.

---

## Core rules (non-negotiable)
- **Public vs. inferred, always separated** — facts cited, psychology tagged, the
  wound a hypothesis.
- **Zero confabulation** — no invented bios, quotes, or motives; missing → a gap.
- **Decision-relevance over biography** — map the human to navigate the deal, not
  to diagnose them.
- **Adaptations trace to the wound** — never stop at the surface trait.
- **Surgical updates** — Edit the cell that moved, append the ledger, leave the
  rest byte-for-byte untouched (the lean way, CLAUDE.md #7).
- **Names at the root** — a wrong name is fixed at the slug/source and propagated;
  the misspelling survives only as a registered alias so namecheck keeps catching
  it in outbound.
