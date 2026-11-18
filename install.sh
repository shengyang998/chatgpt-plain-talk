#!/usr/bin/env bash
# Install the chatgpt-plain-talk skill for Codex.
set -euo pipefail

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST="$HOME/.codex/skills/chatgpt-plain-talk"

mkdir -p "$HOME/.codex/skills"
rm -rf "$DEST"
mkdir -p "$DEST"
cp "$SRC/SKILL.md" "$SRC/chatgpt-instructions.md" "$DEST/"

echo "installed → $DEST"
echo "Codex picks it up automatically; start a new session to use it."
