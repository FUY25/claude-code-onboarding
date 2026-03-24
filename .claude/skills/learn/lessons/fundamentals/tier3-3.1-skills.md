# 3.1: Teach Claude New Abilities (Skills)

> "A skill is a markdown file that gives Claude specialized instructions. It's like giving your assistant a playbook for a specific type of task."

## Explain

Skills are how you teach Claude to do specialized tasks. A skill is just a markdown file (`.md`) with instructions — what to do, how to do it, and what format to use. When you invoke a skill, Claude follows those instructions like a playbook.

Claude comes with **bundled skills** built in — like `/simplify`, which reviews code for quality and efficiency. But the real power is **custom skills**: markdown files you (or anyone) create and drop into `.claude/skills/` in your project folder.

Skills are **project-scoped** — they live in your project and only apply when you're working in that project. This means they're safe by default: a skill in one project can't affect another project.

Creating your own skill is simple: write a markdown file that describes what Claude should do, put it in `.claude/skills/your-skill-name/SKILL.md`, and use it by typing `/your-skill-name`. That's it. No code, no configuration, no installation.

**Adaptive framing (choose based on profile.ai_experience):**
- **never used AI:** A skill is like a recipe card for your assistant. Instead of explaining "how to review a document" every time, you write the instructions once. Then you just say "follow the recipe."
- **browser chat:** In ChatGPT, you'd copy-paste the same detailed prompt every time you wanted a specific task done. A skill saves that prompt permanently — invoke it with one command, and Claude follows those exact instructions.
- **Cursor IDE:** Like Cursor's custom rules or prompts, but more structured — each skill is a named, reusable instruction set scoped to the project.
- **local agent / multiple:** Declarative task instructions in markdown. Project-scoped, version-controlled, shareable. Built-in skills + custom skills in `.claude/skills/`.

Concepts:
- A skill is a markdown file with instructions for Claude
- Bundled skills come built-in (e.g., `/simplify` for code quality review)
- Custom skills are `.md` files you create in `.claude/skills/`
- Skills are project-scoped — they only apply to the project they're in
- Creating your own: write a `SKILL.md` file describing what Claude should do

## Try

This project has a custom skill called `/sample-skill` — a Writing Reviewer. It lives in `.claude/skills/sample-skill/` inside this project folder (Claude Code automatically finds skills in your project's `.claude/skills/` folder). Try it:

1. Open the file `samples/writing/meeting-notes.txt`
2. Type `/sample-skill` and ask Claude to review those meeting notes for clarity, tone, and structure
3. Look at the feedback — that's a skill in action

Now open `.claude/skills/sample-skill/SKILL.md` and read it. It's just a markdown file with instructions. You could make your own skill for any repeatable task.

After completion, explain what happened. Type "skip" or "next" to move on.

## Knowhow

The best skills are specific and repeatable. "Review writing" is good. "Do everything" is too vague. Think about tasks you do over and over — weekly reports, code reviews, data checks — and write a skill for each one. A good skill is 20-40 lines of markdown.

## Reference

- Sample skill in this repo: `.claude/skills/sample-skill/SKILL.md`
- Custom skills go in: `.claude/skills/your-skill-name/SKILL.md`
- Bundled skill example: `/simplify` (code quality review)
- Official docs on skills: `reference/` directory
