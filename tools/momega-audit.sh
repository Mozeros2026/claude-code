#!/usr/bin/env bash
# Momega coverage audit — answers "is the treatment run on every entity?"
# Scans entities/<Type>/<id>/ and reports, per node: Brain (+version), registry
# row, and which Factory artifacts exist. Flags gaps. Re-runnable; no deps beyond
# coreutils. Usage: tools/momega-audit.sh [--gaps-only] [--write]
set -euo pipefail
cd "$(dirname "$0")/.."

GAPS_ONLY=0; WRITE=0
for a in "$@"; do [ "$a" = "--gaps-only" ] && GAPS_ONLY=1; [ "$a" = "--write" ] && WRITE=1; done

REG="registry/registry.md"
has(){ [ -e "$1" ] && echo "✅" || echo "—"; }
glob_has(){ compgen -G "$1" >/dev/null 2>&1 && echo "✅" || echo "—"; }

rows=""; gaps=""; total=0; nobrain=0; persona_gaps=0
for d in entities/*/*/; do
  [ -d "$d" ] || continue
  id=$(basename "$d"); type=$(basename "$(dirname "$d")")
  total=$((total+1))
  if [ -f "${d}brain.md" ]; then
    ver=$(grep -oE 'v[0-9]+\.[0-9]+' "${d}brain.md" | head -1); [ -z "$ver" ] && ver="v?"
    brain="✅ $ver"
  else
    brain="❌ NONE"; nobrain=$((nobrain+1)); gaps="${gaps}- ❌ **${type}/${id}**: no brain.md — run \`/momega-onboard ${id} ${type}\`\n"
  fi
  reg=$([ -f "$REG" ] && grep -qiE "\b${id}\b" "$REG" && echo "✅" || echo "—")
  ev=$(has "${d}evaluation.md"); adv=$(has "${d}adversary.md"); pmf=$(has "${d}pmf-assessment.md")
  asy=$(glob_has "${d}insights/*asymmetr*"); opp=$(glob_has "${d}insights/*opportunit*")
  deck=$(glob_has "${d}collateral/*"); prop=$(glob_has "${d}drafts/*proposal*")

  # --- Persona Forge coverage (people are first-class; the audit MUST measure it) ---
  # Standalone person node (People / Investors) IS a person → psyche-profile.md in-dir.
  # Deal node (Prospects / Clients) maps its human counterparties → people/<slug>/psyche-profile.md.
  if [ "$type" = "People" ] || [ "$type" = "Investors" ]; then
    psy=$([ -e "${d}psyche-profile.md" ] && echo "✅" || echo "—")
    if [ -f "${d}brain.md" ] && [ ! -e "${d}psyche-profile.md" ]; then
      persona_gaps=$((persona_gaps+1))
      gaps="${gaps}- 🧠 **${type}/${id}**: no psyche-profile — Persona Forge not run on this person → run \`/momega-persona ${type} ${id}\`\n"
    fi
  else
    psy=$(glob_has "${d}people/*/psyche-profile.md")
    if [ -f "${d}brain.md" ] && { [ "$type" = "Prospects" ] || [ "$type" = "Clients" ]; } \
       && ! compgen -G "${d}people/*/psyche-profile.md" >/dev/null 2>&1; then
      persona_gaps=$((persona_gaps+1))
      gaps="${gaps}- 🧠 **${type}/${id}**: counterparties unmapped — no psyche-profiles → run \`/momega-persona ${id} <person> ${type}\` per named human\n"
    fi
  fi

  rows="${rows}| ${type}/${id} | ${brain} | ${reg} | ${ev} | ${adv} | ${pmf} | ${asy} | ${opp} | ${deck} | ${prop} | ${psy} |\n"
  # Definition of Done: deal-stage nodes need the assessment suite, not just a Brain
  if [ -f "${d}brain.md" ] && { [ "$type" = "Prospects" ] || [ "$type" = "Clients" ]; }; then
    miss=""
    [ -e "${d}evaluation.md" ]     || miss="${miss} evaluation"
    [ -e "${d}adversary.md" ]      || miss="${miss} adversary"
    [ -e "${d}pmf-assessment.md" ] || miss="${miss} pmf"
    [ -n "$miss" ] && gaps="${gaps}- ⚠️  **${type}/${id}**: partial onboarding — missing${miss} → run \`/momega-onboard ${id} ${type}\` (or the individual Factories)\n"
  fi
done

# ---- Persona roster + staleness (the FOREVER guarantee) ----
# Source of truth = the profile files themselves (no manifest to drift). Every
# psyche-profile.md is a roster row; every state read goes stale at >90 days so a
# profile can never silently rot. Regenerated each run; written to persona-roster.md.
proster=""; pcount=0; stale=0; STALE_DAYS=90
nowts=$(date +%s 2>/dev/null || echo 0)
while IFS= read -r pf; do
  [ -z "$pf" ] && continue
  pcount=$((pcount+1))
  fm(){ awk -F': ' -v k="$1" '$0 ~ "^"k":"{sub(/^[^:]*: */,"");gsub(/^"|"$/,"");print;exit}' "$pf"; }
  pslug=$(fm node_id); pname=$(fm display_name); pent=$(fm entity)
  pmat=$(fm maturity); pupd=$(fm updated)
  [ -z "$pslug" ] && pslug="$(basename "$(dirname "$pf")")"
  ststat="ok"
  if [ -n "$pupd" ] && [ "$nowts" != "0" ]; then
    updts=$(date -d "$pupd" +%s 2>/dev/null || echo 0)
    if [ "$updts" != "0" ]; then
      days=$(( (nowts - updts) / 86400 ))
      if [ "$days" -gt "$STALE_DAYS" ]; then
        ststat="⏳ STALE(${days}d)"; stale=$((stale+1))
        gaps="${gaps}- ⏳ **${pslug}** (${pent}): persona profile stale — updated ${pupd}, ${days}d ago (>${STALE_DAYS}d) → resync \`/momega-persona-sync ${pslug} --signal <new>\`\n"
      fi
    fi
  fi
  proster="${proster}| ${pslug} | ${pname} | ${pent} | ${pmat} | ${pupd} | ${ststat} | \`${pf}\` |\n"
done < <(find entities -name psyche-profile.md | sort)
clientgap=""
if [ -f "$REG" ]; then
  while IFS= read -r cid; do
    [ -z "$cid" ] && continue
    found=0; for d in entities/*/"$cid"/; do [ -d "$d" ] && found=1; done
    [ "$found" = "0" ] && clientgap="${clientgap}- ❌ **${cid}** (registry client): no entity dir/Brain — import materials, run \`/momega-onboard ${cid}\`\n"
  done < <(awk '/^## Clients/{f=1;next} /^## /{f=0} f && /^\| [a-z]/{gsub(/^\| /,"");split($0,a,"|");gsub(/ /,"",a[1]);print a[1]}' "$REG" 2>/dev/null || true)
fi

out=""
out="${out}# Momega Coverage Report\n\n"
out="${out}Generated by \`tools/momega-audit.sh\`. ${total} entity nodes; ${nobrain} missing a Brain.\n\n"
out="${out}**Universal guarantee:** every entity has a canonical \`brain.md\`; every PERSON (People/Investor node, and every named deal counterparty) has a Persona Forge \`psyche-profile.md\`. Factory outputs are on-demand per stage. ${persona_gaps} persona gap(s).\n\n"
out="${out}| Node | Brain | Reg | Eval | Advsy | PMF | Asym | Oppty | Deck | Prop | Persona |\n"
out="${out}|------|-------|-----|------|-------|-----|------|-------|------|------|---------|\n"
out="${out}${rows}\n"
out="${out}## Gaps\n\n"
if [ -n "$gaps$clientgap" ]; then out="${out}${gaps}${clientgap}"; else out="${out}None — every node has a Brain.\n"; fi

if [ "$GAPS_ONLY" = "1" ]; then
  printf "%b" "Momega coverage: ${total} nodes, ${nobrain} without a Brain, ${persona_gaps} without a Persona Forge profile, ${pcount} persona profiles (${stale} stale).\n"
  [ -n "$gaps$clientgap" ] && printf "%b" "${gaps}${clientgap}" || printf "All entities have a Brain + persona coverage; no stale profiles.\n"
else
  printf "%b" "$out"
fi

# Persona roster (the canonical who's-mapped index; source of truth = the files)
roster=""
roster="${roster}# Mo Mega — Persona Roster\n\n"
roster="${roster}Auto-generated by \`tools/momega-audit.sh --write\`. One row per \`psyche-profile.md\`.\n"
roster="${roster}**Every human we talk about or to is here.** Staleness flags at >${STALE_DAYS} days.\n\n"
roster="${roster}${pcount} profiles · ${stale} stale.\n\n"
roster="${roster}| Slug | Name | Entity | Maturity | Updated | State | Path |\n"
roster="${roster}|------|------|--------|----------|---------|-------|------|\n"
roster="${roster}${proster}"

if [ "$WRITE" = "1" ]; then
  printf "%b" "$out" > registry/coverage.md
  printf "%b" "$roster" > registry/persona-roster.md
  echo "(written to registry/coverage.md + registry/persona-roster.md)"
fi
exit 0
