#!/usr/bin/env bash
# Mo Mega — GLOBAL INSTALL
# Makes the OS available in EVERY Claude Code session on this machine by
# installing into ~/.claude: the /momega-* skills, a global CLAUDE.md note, and
# the coverage SessionStart hook (conditional — a silent no-op outside a Mo Mega
# repo). Idempotent; re-run anytime. The DURABLE artifact is this script in git —
# run it on any machine (esp. your local Claude Code) for permanent global reach.
# Note: in the ephemeral web/remote container, ~/.claude is wiped on reclaim;
# only the git repo persists, so re-run there after a fresh clone if needed.
set -euo pipefail
REPO="$(cd "$(dirname "$0")/.." && pwd)"
DEST="${HOME}/.claude"
mkdir -p "$DEST/commands"

# 1) Skills
cp "$REPO"/.claude/commands/momega-*.md "$DEST/commands/"
echo "✓ skills: $(ls "$REPO"/.claude/commands/momega-*.md | wc -l | tr -d ' ') installed → $DEST/commands/"

# 2) Global CLAUDE.md (marker-guarded; never clobbers existing instructions)
MARK="MO-MEGA-OS"
if [ ! -f "$DEST/CLAUDE.md" ]; then
  cp "$REPO/install/CLAUDE.global.md" "$DEST/CLAUDE.md"
  echo "✓ wrote $DEST/CLAUDE.md"
elif ! grep -q "$MARK" "$DEST/CLAUDE.md"; then
  { echo; cat "$REPO/install/CLAUDE.global.md"; } >> "$DEST/CLAUDE.md"
  echo "✓ appended Mo Mega section to existing $DEST/CLAUDE.md"
else
  echo "• $DEST/CLAUDE.md already has the Mo Mega section; skipped"
fi

# 3) SessionStart coverage hook (conditional → no-op outside a Mo Mega repo)
HOOKCMD='[ -f tools/momega-audit.sh ] && bash tools/momega-audit.sh --gaps-only 2>/dev/null; true'
S="$DEST/settings.json"
[ -f "$S" ] || echo '{}' > "$S"
if grep -q "momega-audit" "$S" 2>/dev/null; then
  echo "• coverage hook already in $S; skipped"
else
  tmp="$(mktemp)"
  jq --arg cmd "$HOOKCMD" \
    '.hooks.SessionStart = ((.hooks.SessionStart // []) + [{"hooks":[{"type":"command","command":$cmd}]}])' \
    "$S" > "$tmp" && mv "$tmp" "$S"
  echo "✓ added coverage hook → $S"
fi

echo "DONE — Mo Mega is globally available on this machine ($DEST)."
