---
description: Fully provision a Momega node (brain, registry row, profile) from gathered intel.
argument-hint: <node-id> [type]
---

# /momega-onboard

Provision a Momega node end-to-end. Usage: `/momega-onboard <node-id> [type]`
(`type` defaults to `Prospects`).

Argument: `$ARGUMENTS`

When invoked, do the following in order. Be idempotent — if a node is already
partially filed, update in place rather than duplicating.

## 1. Resolve the node
- Parse `<node-id>` (e.g. `wisdm`) and optional `[type]` (default `Prospects`).
- Target directory: `entities/<type>/<node-id>/`.
- Gather intel for the node from the current session: the triggering email /
  message, attachments, contacts, and any stated next steps. If material is
  missing, note it as a gap rather than inventing it.

## 2. Profile (`entities/<type>/<node-id>/profile.md`)
Structured facts only — name, type, stage, primary + secondary contacts
(name, email, phone), source, owner, created date, and links to materials.

## 3. Brain (`entities/<type>/<node-id>/brain.md`)
The running memory: a summary, the intel gathered so far, open threads, and a
**Next actions** checklist. This is the file to read before any interaction.

## 4. Materials (`entities/<type>/<node-id>/materials/`)
Drop attachments here. If the binary isn't available in-session, record the
expected filename, size, and source in `materials/README.md` so the slot is
reserved.

## 5. Registry row (`registry/registry.md`)
Add or update exactly one row for the node in the master table. Never duplicate
an existing id.

## 6. Report
Summarize what was provisioned (paths created/updated), then list any gaps
(e.g. binaries not in-session) so the human can fill them.
