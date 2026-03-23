#!/usr/bin/env bash
set -euo pipefail

# Claude Code Onboarding — Bootstrap Script
# Usage: curl -fsSL https://anthropics.github.io/claude-code-onboarding/start.sh | sh

REPO_URL="https://github.com/FUY25/claude-code-onboarding"
ZIP_URL="${REPO_URL}/archive/refs/heads/main.zip"
INSTALL_DIR="${HOME}/claude-code-onboarding"

# --- Helpers ---

blue()  { printf '\033[1;34m%s\033[0m\n' "$1"; }
green() { printf '\033[1;32m%s\033[0m\n' "$1"; }
red()   { printf '\033[1;31m%s\033[0m\n' "$1"; }
yellow(){ printf '\033[1;33m%s\033[0m\n' "$1"; }

die() {
  red "Error: $1"
  echo ""
  echo "  $2"
  echo ""
  exit 1
}

# --- Check internet ---
if ! curl -fsSL --max-time 5 --output /dev/null "https://github.com" > /dev/null 2>&1; then
  die "No internet connection detected." \
      "Please connect to the internet and run this command again."
fi

# --- Check Node.js is installed (required for Claude Code) ---
if ! command -v node > /dev/null 2>&1; then
  red "Node.js is not installed."
  echo ""
  echo "  Claude Code requires Node.js 18 or higher."
  echo "  Install it from: https://nodejs.org"
  echo ""
  echo "  After installing Node.js, run this script again."
  exit 1
fi

# --- Check Claude Code is installed ---
if ! command -v claude > /dev/null 2>&1; then
  yellow "Claude Code is not installed yet. Installing now..."
  echo ""

  if npm install -g @anthropic-ai/claude-code; then
    green "Claude Code installed successfully!"
    echo ""
  else
    red "Installation failed."
    echo ""
    echo "  Try running this manually:"
    echo ""
    yellow "  npm install -g @anthropic-ai/claude-code"
    echo ""
    echo "  If you get a permissions error, try:"
    yellow "  sudo npm install -g @anthropic-ai/claude-code"
    echo ""
    echo "  (Need help? See: https://docs.anthropic.com/en/docs/claude-code )"
    exit 1
  fi
fi

# --- Already installed? ---
if [ -d "${INSTALL_DIR}" ]; then
  yellow "Folder ~/claude-code-onboarding already exists — skipping download."
  echo ""
else
  blue "Downloading onboarding materials..."
  TMP=$(mktemp -d)
  trap 'rm -rf "${TMP}"' EXIT

  if ! curl -fsSL --max-time 60 -o "${TMP}/repo.zip" "${ZIP_URL}"; then
    die "Download failed." \
        "Check your internet connection and try again."
  fi

  unzip -q "${TMP}/repo.zip" -d "${TMP}"
  mv "${TMP}/claude-code-onboarding-main" "${INSTALL_DIR}"
  green "Downloaded to ~/claude-code-onboarding"
  echo ""
fi

# --- Copy skill into ~/.claude/skills/ ---
SKILL_SRC="${INSTALL_DIR}/.claude/skills/learn"
SKILL_DST="${HOME}/.claude/skills/learn"

if [ -d "${SKILL_DST}" ]; then
  yellow "Skill /learn already installed — skipping."
else
  mkdir -p "${HOME}/.claude/skills"
  cp -r "${SKILL_SRC}" "${SKILL_DST}"
  green "Installed /learn skill"
fi
echo ""

# --- Launch ---
blue "Opening Claude Code with your onboarding folder..."
echo ""
echo "  Once Claude Code opens:"
echo ""
echo "    1. Wait for it to load"
echo "    2. Type:  /learn"
echo "    3. Press Enter"
echo ""
green "Starting now..."
echo ""

cd "${INSTALL_DIR}"
claude
