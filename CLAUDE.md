# Claude Code Onboarding — Project Context

## What this project is

An interactive onboarding experience for non-technical Claude Code users. The goal: take someone from "I don't know what a terminal is" to completing a real task (report, email, website) in one session.

## Repo structure

- `docs/` — Landing page (GitHub Pages). `index.html`, `start.sh`
- `planning/` — Curriculum spec and design system. `USER-FLOW.md`, `DESIGN.md`
- `reference/` — Official Anthropic Claude Code docs (32 files, ~14,600 lines). Source of truth for feature accuracy.
- `.claude/skills/learn/` — The `/learn` skill. `SKILL.md` + lesson files
- `samples/` — Pre-loaded realistic practice files for lessons (profession-adapted + application samples)

## Design System

Always read `planning/DESIGN.md` before making any visual or UI decisions.
All font choices, colors, spacing, and aesthetic direction are defined there.
Do not deviate without explicit user approval.
In QA mode, flag any code that doesn't match `planning/DESIGN.md`.

## Design decisions

- **Mac only (Phase 1).** No Windows path handling.
- **Landing page is English-only (Phase 1).** Chinese page is Phase 2 — same design system, separate file.
- **State stored in `~/.claude-onboarding/`.** `profile.yaml`, `profile-built` marker, `progress.json`.
- **Lessons are separate files**, not one giant SKILL.md — easier to maintain, cheaper to load.
- **Profession-adapted samples:** Tier 1 try steps use different sample files based on user's profession (tech, business, creative, PM, research).

## Anti-jargon rules

Never use these words in lesson copy without a plain-English definition:
- terminal, shell, CLI, command line, directory, path, execute, run, git, repository

## Key files to know

- `planning/USER-FLOW.md` — curriculum spec (the source of truth for what the skill should do)
- `planning/DESIGN.md` — visual design system
- `.claude/skills/learn/SKILL.md` — routing logic + profile questions
- `docs/start.sh` — the user's first touchpoint after the landing page
- `reference/` — official docs for cross-referencing feature accuracy
