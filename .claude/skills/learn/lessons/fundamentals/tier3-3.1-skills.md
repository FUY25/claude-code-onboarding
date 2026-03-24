# 3.1: Teach Claude New Abilities (Skills)

> "A skill is a markdown file that gives Claude specialized instructions. It's like giving your assistant a playbook for a specific type of task."

## Explain

Skills are how you teach Claude to do specialized tasks. A skill is just a markdown file (`.md`) with instructions — what to do, how to do it, and what format to use. When you invoke a skill, Claude follows those instructions like a playbook.

Here's what a real skill looks like — this is a Writing Reviewer skill that reviews documents for quality:

```markdown
---
name: Writing Reviewer
description: Reviews any written document for clarity, tone,
  structure, and grammar.
---

## Steps

1. Read the document the user provides
2. Assess four areas (1-2 bullets each):
   - Clarity: Is the main point obvious?
   - Tone: Appropriate for the audience?
   - Structure: Does it flow logically?
   - Grammar: Typos, run-on sentences?
3. Give an overall verdict in one sentence
4. Provide a revised version
```

That's it — just plain instructions in a text file. No code, no programming.

**How skills are organized — progressive disclosure:**

Skills use a smart loading system so Claude doesn't get overwhelmed:

```
┌─────────────────────────────────────────────┐
│        PROGRESSIVE DISCLOSURE               │
│                                             │
│  Level 1: Name + Description (~1 sentence)  │
│     → Always visible to Claude              │
│     → Decides when to activate the skill    │
│                                             │
│  Level 2: SKILL.md body (~1 page)           │
│     → Loaded when the skill triggers        │
│     → The main instructions                 │
│                                             │
│  Level 3: Reference files (unlimited)       │
│     → Loaded only when needed               │
│     → Detailed docs, templates, scripts     │
└─────────────────────────────────────────────┘
```

Claude only reads what it needs, when it needs it. A short description tells it when to activate. The full instructions load when it does. Extra reference files load only if the task requires them.

Claude comes with **bundled skills** built in — like `/simplify`, which reviews code for quality. But the real power is **custom skills**: markdown files you create and install.

Skills can be **project-scoped** (in your project's `.claude/skills/` folder — only available in that project) or **user-scoped** (in `~/.claude/skills/` — available everywhere, like the `/learn` skill you're using right now).

**Adaptive framing (choose based on profile.ai_experience):**
- **never used AI:** A skill is like a recipe card for your assistant. Instead of explaining "how to review a document" every time, you write the instructions once. Then you just say "follow the recipe." (In Chinese: 技能就像给助手的操作手册。你不用每次都从头解释"怎么审查文件"，写一次说明书就行了。以后只要说"按手册来"就好。)
- **browser chat:** In ChatGPT, you'd copy-paste the same detailed prompt every time you wanted a specific task done. A skill saves that prompt permanently — invoke it with one command, and Claude follows those exact instructions.
- **Cursor IDE:** Like Cursor's custom rules or prompts, but more structured — each skill is a named, reusable instruction set scoped to the project.
- **local agent / multiple:** Declarative task instructions in markdown. Project-scoped or user-scoped, version-controlled, shareable. Built-in skills + custom skills in `.claude/skills/`.

Concepts:
- A skill is a markdown file with instructions for Claude
- Progressive disclosure: name → full instructions → reference files (loaded on demand)
- Bundled skills come built-in (e.g., `/simplify` for code quality review)
- Custom skills are `.md` files you create in `.claude/skills/`
- Project-scoped (`.claude/skills/` in project) vs user-scoped (`~/.claude/skills/`)

## Try

Let's install a custom skill and use it. This project has a sample skill called "Writing Reviewer" — let's install it to your global skills folder so you can use it anywhere.

**Step 1:** Tell Claude:

> "Copy the sample skill from this project to my global skills: copy `.claude/skills/sample-skill/` to `~/.claude/skills/sample-skill/`"

(This teaches a real skill: installing a skill is just copying a folder!)

**Step 2:** Now use it — ask Claude:

> "/sample-skill Review `@meeting-notes.txt` for clarity, tone, and structure."

Watch how Claude follows the skill's instructions to give structured feedback.

**Step 3:** Open the skill file to see what's inside:

> "Show me what's in `~/.claude/skills/sample-skill/SKILL.md`"

After the user completes the try (or types "skip"/"next"), show this debrief:

> You just installed and used a custom skill! 🛠️ That entire review — the structure, the criteria, the format — came from a simple markdown file. No code, no plugins, no app store. Just instructions in plain English that you copied to a folder. Imagine writing one for your weekly report, your team's review checklist, or your data quality checks. One command, consistent every time.

## Knowhow

The best skills are specific and repeatable. "Review writing" is good. "Do everything" is too vague. Think about tasks you do over and over — weekly reports, document reviews, data checks — and write a skill for each one. A good skill is 20-40 lines of markdown. You can also find and install skills others have shared!

## Reference

- Sample skill in this repo: `.claude/skills/sample-skill/SKILL.md`
- Custom skills go in: `.claude/skills/your-skill-name/SKILL.md` (project) or `~/.claude/skills/your-skill-name/SKILL.md` (global)
- Bundled skill example: `/simplify` (code quality review)
- Official docs on skills: `reference/` directory
