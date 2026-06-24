#!/usr/bin/env bash
# Persona Forge validator — the "test" beat of the four-beat (operating-doctrine §4).
# Checks every psyche-profile.md against the schema invariants so quality is
# verified, not assumed. Exit 0 = all pass; exit 1 = at least one failure.
# Usage: tools/persona-validate.sh [--quiet]
set -uo pipefail
cd "$(dirname "$0")/.."

QUIET=0; [ "${1:-}" = "--quiet" ] && QUIET=1
fail=0; pass=0; total=0

# Required frontmatter keys + required section anchors (the schema contract).
FM_KEYS=(node_id display_name entity profile_version updated maturity somatic_fingerprint)
LAYERS=(L01 L02 L03 L04 L05 L06 L07)
APPENDIX=("§0 Confidence Map" "§ Source Log" "§ Evolution Log" "§ Maturity" "§ Unknowns" "§ What's New")

while IFS= read -r f; do
  [ -z "$f" ] && continue
  total=$((total+1)); errs=""
  # SECTION INDEX comment present
  grep -q 'SECTION INDEX' "$f" || errs="${errs}\n    - missing <!-- SECTION INDEX --> comment"
  # frontmatter keys
  for k in "${FM_KEYS[@]}"; do grep -qE "^${k}:" "$f" || errs="${errs}\n    - missing frontmatter: ${k}"; done
  # 7 layer anchors
  for L in "${LAYERS[@]}"; do grep -qE "^## ${L} " "$f" || errs="${errs}\n    - missing layer anchor: ${L}"; done
  # appendix sections
  for a in "${APPENDIX[@]}"; do grep -qF "$a" "$f" || errs="${errs}\n    - missing appendix: ${a}"; done
  # discipline: must carry at least one inference/HITL/FOUNDER tag OR an explicit
  # "insufficient signal" — a profile with zero epistemic tags is a confabulation smell.
  grep -qE '\[\[ *(INFERENCE|HITL|FOUNDER)' "$f" || grep -qiF 'insufficient signal' "$f" \
    || errs="${errs}\n    - no inference/HITL/FOUNDER tag and no 'insufficient signal' (discipline smell)"
  # temporal: any somatic/state read should be dated — require at least one as_of
  grep -qE 'as_of' "$f" || errs="${errs}\n    - no as_of date anywhere (temporal lens not applied)"

  if [ -n "$errs" ]; then
    fail=$((fail+1)); [ "$QUIET" = "0" ] && printf "✗ %s%b\n" "$f" "$errs"
  else
    pass=$((pass+1))
  fi
done < <(find entities -name psyche-profile.md | sort)

echo "persona-validate: ${pass}/${total} pass, ${fail} fail"
[ "$fail" = "0" ] || exit 1
