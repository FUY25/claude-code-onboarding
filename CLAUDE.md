# Claude Code Onboarding — Project Context

## What this project is

An interactive onboarding experience for non-technical Claude Code users. The goal: take someone from "I don't know what a terminal is" to completing a real task (report, email, website) in one session.

## Repo structure

- `docs/` — Landing page (GitHub Pages). `index.html`, `style.css`, `start.sh`
- `.claude/skills/learn/` — The `/learn` skill. `SKILL.md` + lesson files
- `samples/` — Pre-loaded realistic practice files for lessons
- `prompts/` — Reusable prompt fragments
- `test.sh` — Smoke test

## Design decisions

- **Mac only (Phase 1).** No Windows path handling.
- **Bilingual entry points.** Hero, comparison table, README are EN+CN. Skill content is English-first.
- **State stored in `~/.claude-onboarding/`.** `profile.yaml`, `profile-built` marker, `progress.json`.
- **Lessons are separate files**, not one giant SKILL.md — easier to maintain, cheaper to load.
- **Track A only in Phase 1.** Writing interest → `samples/writing/`.

## Anti-jargon rules

Never use these words in lesson copy without a plain-English definition:
- terminal, shell, CLI, command line, directory, path, execute, run, git, repository

## Key files to know

- `.claude/skills/learn/SKILL.md` — routing logic + profile questions
- `.claude/skills/learn/lessons/fundamentals/lesson-1-terminal.md` — most important lesson
- `samples/writing/notes.txt` — used in Lesson 3 (report generation)
- `docs/start.sh` — the user's first touchpoint after the landing page
