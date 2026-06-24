# Falsifiers — how we know it's working

> Lifted from Build Spec v1. Acceptance bars for the platform and per skill. Run
> them as a check after meaningful changes. The infra-specific landmines from the
> spec are dropped; the **logic** landmines are kept below.

## Platform falsifiers

**Succeeds when:**
- **Mo Commas:** primitive outputs need **<50% rewrite** by Mo before they're
  usable, across 3+ industries.
- **Mo Zeros:** the end-to-end loop (conversation → outbound running) needs
  **<30 min** of human attention per client per week beyond approvals.
- **Cross-bag synergy:** **≥1 in 5** synergy hypotheses is actionable enough that
  Mo would actually pursue it.
- **Overall:** a new client goes from first conversation to active engagement
  within **7 days**, with zero spreadsheet work.

**Failing when:**
- Outputs sound smart but miss what Mo would catch in the room.
- The humans do *more* manual work because they're babysitting the agent.
- The corpus is a graveyard — full of files, nothing queryable.
- The approval queue grows faster than approvals happen.

## Per-skill bar

Each primitive in [`primitives.md`](primitives.md) ships only when its output
clears the <50%-rewrite bar on at least one real case from
[`case-studies.md`](case-studies.md).

## Logic landmines (kept) — design against these

- **Hallucinated buyer psychology** — the highest-risk failure. Every primitive
  must prefer "I don't have signal here — ask the human" over confabulation.
- **"Memory" is structured-note loading, not real memory.** The agent only knows
  what the Brain gives it. Metadata discipline ([`schemas.md`](schemas.md)) is
  everything.
- **Cross-bag synergy quality depends on bag completeness.** A sparse/stale
  [`../bag/`](../bag/) graph yields weak hypotheses. Keep it current.
- **Approval bottleneck.** If the human can't keep up, the system stalls. Define
  "auto-approve for [low-risk internal action types]" rules; never auto-send
  client-facing artifacts.

> Dropped (infra landmines, not our concern here): OpenClaw lock-in, Telegram
> operator-scaling, cold-email deliverability/domain-warmup, VPS/bus-factor.
