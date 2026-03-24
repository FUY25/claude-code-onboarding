# 2.2: CLAUDE.md — Teaching Claude About Your Project

> "CLAUDE.md is a file you put in your project folder. Claude reads it automatically every time it starts. It's like a briefing document — 'here's what this project is, here's how we work, here's what to watch out for.'"

## Explain

CLAUDE.md is a special file that Claude reads automatically at the start of every session. You put it in the root of your project folder, and it tells Claude everything it needs to know — what the project is, how you like to work, what conventions to follow, and what to avoid.

Unlike conversation history, CLAUDE.md **persists across sessions**. It doesn't get compacted or forgotten. This is where you put instructions that should always apply: coding styles, naming conventions, project structure notes, or warnings about fragile areas.

You don't have to write one from scratch. The `/init` command scans your project and generates a starter CLAUDE.md automatically. It's a great first step for any new project.

**Adaptive framing (choose based on profile.ai_experience):**
- **never used AI:** Think of CLAUDE.md as a briefing document you leave on your assistant's desk every morning. It says "here's what we're working on, here's how I like things done." Claude reads it before you even say hello.
- **browser chat:** In ChatGPT, you use "Custom Instructions" to tell it about yourself. CLAUDE.md is similar, but it lives in your project folder — so different projects get different instructions. And it's just a text file you can edit anytime.
- **Cursor IDE:** Like `.cursorrules` — project-level instructions the AI reads automatically. CLAUDE.md works the same way but extends beyond code to any kind of project.
- **local agent / multiple:** Project-level config for the agent. Three levels: global (`~/.claude/CLAUDE.md`), project root, subdirectories. Inner overrides outer. Auto-generated via `/init`.

Concepts:
- CLAUDE.md goes in your project root — the filename must be uppercase
- Put project context, conventions, preferences, and anti-patterns in it
- It persists across sessions — unlike conversation history, it never gets compacted
- `/init` — Claude scans your project and generates a starter CLAUDE.md automatically
- **Auto memory (MEMORY.md):** Claude can also save things it learns across sessions to `~/.claude/MEMORY.md`. This happens automatically — Claude notices patterns and saves them. You can also ask Claude to remember things explicitly ("remember that I prefer bullet points over paragraphs").
- **Three levels of CLAUDE.md:** Global (`~/.claude/CLAUDE.md` — applies everywhere), project root (applies to this project), and subdirectories (applies to that part of the project). Claude reads all of them; inner files override outer ones.

## Try

Ask me to show you this project's CLAUDE.md. See how it already shaped my behavior before you said a word.

After the user completes the try (or types "skip"/"next"), show this debrief:

> See those instructions? I've been following them this entire time — since the moment you started the course! 🤯 CLAUDE.md is loaded automatically before every conversation. That's why it's so powerful: you write the rules once, and Claude follows them forever. No repeating yourself.

## Knowhow

The best CLAUDE.md files are short and specific. Don't write an essay — write rules. "Always use bullet points for summaries." "Never delete files without asking first." "This project uses British English." These small instructions compound across every session.

## Reference

- This project's CLAUDE.md is at the project root — it's a working example
- `/init` generates a starter CLAUDE.md by scanning your project
- Auto memory is stored at `~/.claude/MEMORY.md`
- Official docs on CLAUDE.md: `reference/` directory
