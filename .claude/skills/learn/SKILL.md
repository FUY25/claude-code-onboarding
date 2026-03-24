---
name: learn
version: 1.0.0
description: |
  Interactive onboarding course for Claude Code. Teaches non-technical users
  by doing — fundamentals (3 tiers, 14 concepts), then real-world applications (10 tasks).
  Use when asked to "learn", "teach me", "onboarding", "tutorial", "how do I use Claude Code",
  "I don't know where to start", or "help me get started".
  Proactively suggest when a user appears new to Claude Code, asks basic questions
  about how it works, or seems lost.
---

# /learn — Claude Code Onboarding

## First-time reassurance

Before running the preamble, say:

> "Starting the course — I'll run a few quick setup commands first. You'll see some permission prompts pop up. These are normal — I'm just checking your progress and setting up your profile folder. It's safe to approve them."

## Preamble (run first)

```bash
mkdir -p ~/.claude-onboarding

# Skill directory (where lesson files live)
_SKILL_DIR="$HOME/.claude/skills/learn"
echo "SKILL_DIR: $_SKILL_DIR"

# Language
_LANG=$(cat ~/.claude-onboarding/language 2>/dev/null || echo "NONE")
echo "LANGUAGE: $_LANG"

# Repo check — verify course materials are present
_REPO_ROOT="$(git rev-parse --show-toplevel 2>/dev/null)" || _REPO_ROOT=""
_HAS_SAMPLES=$([ -d "${_REPO_ROOT}/samples" ] && echo "yes" || echo "no")
_HAS_REFERENCE=$([ -d "${_REPO_ROOT}/reference" ] && echo "yes" || echo "no")
echo "REPO_ROOT: ${_REPO_ROOT:-MISSING}"
echo "HAS_SAMPLES: $_HAS_SAMPLES"
echo "HAS_REFERENCE: $_HAS_REFERENCE"

# One-time intro
_INTRO_SEEN=$([ -f ~/.claude-onboarding/intro-seen ] && echo "yes" || echo "no")
echo "INTRO_SEEN: $_INTRO_SEEN"

# Profile
_PROFILE_BUILT=$([ -f ~/.claude-onboarding/profile-built ] && echo "yes" || echo "no")
echo "PROFILE_BUILT: $_PROFILE_BUILT"
if [ "$_PROFILE_BUILT" = "yes" ]; then
  _PROFILE_CONTENT=$(cat ~/.claude-onboarding/profile.yaml 2>/dev/null || echo "PROFILE_CORRUPT")
  echo "PROFILE_CONTENT_START"
  echo "$_PROFILE_CONTENT"
  echo "PROFILE_CONTENT_END"
fi

# Progress (project-local)
_HAS_PROGRESS=$([ -f .learn-progress.json ] && echo "yes" || echo "no")
echo "HAS_PROGRESS: $_HAS_PROGRESS"
if [ "$_HAS_PROGRESS" = "yes" ]; then
  _PROGRESS=$(cat .learn-progress.json 2>/dev/null || echo "PROGRESS_CORRUPT")
  echo "PROGRESS_START"
  echo "$_PROGRESS"
  echo "PROGRESS_END"
fi
```

---

## Routing (read preamble output, then follow the first matching step)

**Step 1 — Repo check.**
If `HAS_SAMPLES` is "no" OR `HAS_REFERENCE` is "no":
Tell the user the course materials are missing. Say: "I can't find the course files. Make sure you're in the onboarding project folder — the one with `samples/` and `reference/` inside." STOP.

**Step 2 — Language.**
If `LANGUAGE` is "NONE": go to **Stage 0: Language Selection**.

**Step 3 — Welcome.**
If `INTRO_SEEN` is "no": go to **Stage 1: Welcome**.

**Step 4 — Profile.**
If `PROFILE_BUILT` is "no": go to **Stage 2: Profile Collection**.
If `PROFILE_BUILT` is "yes" but profile content contains `role:` or `comfort_level:` (old schema): treat as not built — delete old profile, go to **Stage 2: Profile Collection**.

**Step 5 — Progress validation.**
If `HAS_PROGRESS` is "no": create a fresh `.learn-progress.json` (see schema below), then route to Tier 1 Lesson 1.1.
If progress content shows "PROGRESS_CORRUPT" or is invalid JSON: say "Your progress file got corrupted — no worries, starting fresh." Create fresh progress, route to Tier 1 Lesson 1.1.

**Step 6 — Resume.**
If `HAS_PROGRESS` is "yes" and progress is valid: go to **Stage 3: Fundamentals** or **Stage 4: Applications** based on `current_stage` in the progress file.

---

## Stage 0: Language Selection

Use the AskUserQuestion tool:
- question: "Choose your language / 选择语言"
- header: "Language"
- options:
  - label: "English", description: "Course in English"
  - label: "中文", description: "课程以中文呈现"

Write their choice to `~/.claude-onboarding/language`:

```bash
echo "en" > ~/.claude-onboarding/language   # or "zh" for Chinese
```

Then proceed to Stage 1.

---

## Stage 1: Welcome

Say exactly (translate to Chinese if language is "zh"):

> "Welcome to Claude Code onboarding — an interactive course that teaches you by doing.
>
> By the end, you'll know how to use Claude Code to get real work done such as: analyze data, build webpages, automate tasks.
>
> Everything here is hands-on. You'll try things as you learn them.
>
> Created by Yuming."

Then mark as seen:

```bash
touch ~/.claude-onboarding/intro-seen
```

Proceed immediately to Stage 2.

---

## Stage 2: Profile Collection

Say: "I'm going to ask you 3 quick questions so I can personalize the lessons. There are no wrong answers."

Ask these questions one at a time using the AskUserQuestion tool. Wait for each answer before asking the next.

**Q1:** Use AskUserQuestion:
- question: "What best describes your work?"
- header: "Profession"
- options:
  - label: "Tech", description: "Engineering, IT, devops"
  - label: "Business", description: "Finance, operations, consulting, management"
  - label: "Creative", description: "Design, content, marketing, media"
  - label: "Product / PM", description: "Product management"
- (The user can also select "Other" to type a custom answer — this is automatic)

Map: Tech→tech, Business→business, Creative→creative, Product / PM→pm. If the user types a custom answer, check if it matches "research" or "academic" → research, otherwise → custom (store their text).

**Q2:** Use AskUserQuestion:
- question: "Have you used AI tools before?"
- header: "AI experience"
- options:
  - label: "Browser chat", description: "ChatGPT, Claude, or Gemini in a browser"
  - label: "AI code editor", description: "Cursor IDE or similar"
  - label: "Local AI agent", description: "OpenClaw or similar tools that run on your computer"
  - label: "Multiple tools", description: "Used several of the above"

Map: Browser chat→browser_chat, AI code editor→cursor_ide, Local AI agent→local_agent, Multiple tools→multiple. If the user selects "Other" and says they've never used AI → none. Otherwise → multiple.

**Q3:** Use AskUserQuestion:
- question: "What brought you here?"
- header: "Goal"
- options:
  - label: "Automate work", description: "Reports, emails, file cleanup"
  - label: "Analyze data", description: "Without spreadsheet formulas"
  - label: "Build things", description: "Websites, presentations, docs"
  - label: "Explore", description: "Learn what AI coding tools can do"

Map: Automate work→automate, Analyze data→analyze, Build things→build, Explore→explore. If the user types a custom answer → custom (store their text).

After all 3 answers, write profile atomically:

```bash
cat > ~/.claude-onboarding/profile.yaml.tmp << 'PROFILE'
language: <language from ~/.claude-onboarding/language>
profession: <mapped value>
ai_experience: <mapped value>
goal: <mapped value>
PROFILE
mv ~/.claude-onboarding/profile.yaml.tmp ~/.claude-onboarding/profile.yaml
touch ~/.claude-onboarding/profile-built
```

Create initial progress file:

```bash
cat > .learn-progress.json.tmp << 'PROGRESS'
{
  "current_stage": "fundamentals",
  "fundamentals": {
    "tier1": { "completed": [], "skipped": [] },
    "tier2": { "completed": [], "skipped": [], "in_progress": null },
    "tier3": { "completed": [], "unlocked": [] }
  },
  "applications": {
    "shown": [],
    "completed": [],
    "in_progress": null
  },
  "last_activity": "<current ISO timestamp>"
}
PROGRESS
mv .learn-progress.json.tmp .learn-progress.json
```

Say: "All set — let's start." Then route to Tier 1 Lesson 1.1.

---

## Stage 3: Fundamentals Routing

Read `current_stage` and the `fundamentals` object from progress.

Show a status summary using these symbols: done for completed, arrow for current/in_progress, circle for upcoming.

### Tier 1 routing

Tier 1 lessons in order: 1.1, 1.2, 1.3, 1.4, 1.5, 1.6.

Find the first lesson ID not in `tier1.completed` and not in `tier1.skipped`. That is the next lesson.

Load the lesson file (use the `SKILL_DIR` path from the preamble output):
- 1.1 → Read `<SKILL_DIR>/lessons/fundamentals/tier1-1.1-terminal.md`. If the file cannot be read, STOP.
- 1.2 → Read `<SKILL_DIR>/lessons/fundamentals/tier1-1.2-prompt-craft.md`
- 1.3 → Read `<SKILL_DIR>/lessons/fundamentals/tier1-1.3-permissions.md`
- 1.4 → Read `<SKILL_DIR>/lessons/fundamentals/tier1-1.4-controls.md`
- 1.5 → Read `<SKILL_DIR>/lessons/fundamentals/tier1-1.5-error-recovery.md`
- 1.6 → Read `<SKILL_DIR>/lessons/fundamentals/tier1-1.6-when-not-to-use.md`

Deliver the lesson content following the Explain → Try → Knowhow protocol (see Common Rules).

### Tier 1 complete — present choice

When all of 1.1-1.6 are in `tier1.completed` or `tier1.skipped`:

Use AskUserQuestion:
- question: "You've finished the survival basics. What would you like to do next?"
- header: "Next step"
- options:
  - label: "Go deeper", description: "Learn how Claude thinks, CLAUDE.md, shortcuts"
  - label: "Jump to applications", description: "Use Claude Code on real tasks right now"

Recommendation: If `ai_experience` is "none" or "browser_chat", put "Go deeper" first with "(Recommended)" in the label. Otherwise put "Jump to applications" first with "(Recommended)".

If Go deeper: set `current_stage` to "fundamentals", route to Tier 2.
If Jump to applications: set `current_stage` to "applications", route to Stage 4.

### Tier 2 routing

Tier 2 lessons in order: 2.1, 2.2, 2.3, 2.4.

Find the first lesson ID not completed/skipped, or use `tier2.in_progress` if set. Load:
- 2.1 → Read `<SKILL_DIR>/lessons/fundamentals/tier2-2.1-context-window.md`
- 2.2 → Read `<SKILL_DIR>/lessons/fundamentals/tier2-2.2-claude-md.md`
- 2.3 → Read `<SKILL_DIR>/lessons/fundamentals/tier2-2.3-markdown-diffs.md`
- 2.4 → Read `<SKILL_DIR>/lessons/fundamentals/tier2-2.4-shortcuts.md`

### Tier 2 complete — present Tier 3 menu

When all of 2.1-2.4 are completed/skipped:

Use AskUserQuestion with multiSelect: true:
- question: "What would you like to learn next? Pick any that interest you, or skip to applications."
- header: "Tier 3"
- multiSelect: true
- options:
  - label: "Skills", description: "Teach Claude new abilities for specialized tasks"
  - label: "MCP", description: "Connect Claude to external tools and services"
  - label: "Sub-agents", description: "Make Claude work on multiple things at once"
  - label: "Power moves", description: "Advanced shortcuts and tricks"

If the user selects "Other" and types "skip" or "applications": set `current_stage` to "applications", route to Stage 4.
Otherwise: map Skills→3.1, MCP→3.2, Sub-agents→3.3, Power moves→3.4. Add selected module IDs to `tier3.unlocked`, load the first one.
If E: set `current_stage` to "applications", route to Stage 4.

### Tier 3 routing

Load the selected module:
- 3.1 → Read `<SKILL_DIR>/lessons/fundamentals/tier3-3.1-skills.md`
- 3.2 → Read `<SKILL_DIR>/lessons/fundamentals/tier3-3.2-mcp.md`
- 3.3 → Read `<SKILL_DIR>/lessons/fundamentals/tier3-3.3-sub-agents.md`
- 3.4 → Read `<SKILL_DIR>/lessons/fundamentals/tier3-3.4-power-moves.md`

After completing a Tier 3 module, offer: another Tier 3 module, or move to applications.

---

## Stage 4: Applications Routing

Based on `profile.profession`, show **5 curated applications**. Present as a numbered menu.

| Profession | Applications shown (in order) |
|-----------|-------------------------------|
| tech | A3 HTML Slides, A9 Develop Demo, A8 Design Doc, A10 Folder Cleanup, A4 Dashboard |
| business | A5 Financial Statement, A1 Interview Synthesis, A7 PRD Writing, A2 CSV Analysis, A4 Dashboard |
| creative | A3 HTML Slides, A9 Develop Demo, A1 Interview Synthesis, A2 CSV Analysis, A4 Dashboard |
| pm | A7 PRD Writing, A1 Interview Synthesis, A8 Design Doc, A4 Dashboard, A10 Folder Cleanup |
| research | A6 Academic Paper, A2 CSV Analysis, A1 Interview Synthesis, A4 Dashboard, A7 PRD Writing |
| custom | A1 Interview Synthesis, A2 CSV Analysis, A3 HTML Slides, A9 Develop Demo, A4 Dashboard |

If `applications.shown` is empty, populate it from the table above and save to progress.

Show completed applications with a checkmark, in-progress with an arrow. If `applications.in_progress` is set, route directly to that application.

Otherwise, present the menu and wait for the user to pick one. Set `applications.in_progress` to the chosen ID.

Load the application lesson:
- A1 → Read `<SKILL_DIR>/lessons/applications/a1-interview-synthesis.md`
- A2 → Read `<SKILL_DIR>/lessons/applications/a2-csv-analysis.md`
- A3 → Read `<SKILL_DIR>/lessons/applications/a3-html-slides.md`
- A4 → Read `<SKILL_DIR>/lessons/applications/a4-dashboard.md`
- A5 → Read `<SKILL_DIR>/lessons/applications/a5-financial-statement.md`
- A6 → Read `<SKILL_DIR>/lessons/applications/a6-academic-paper.md`
- A7 → Read `<SKILL_DIR>/lessons/applications/a7-prd-writing.md`
- A8 → Read `<SKILL_DIR>/lessons/applications/a8-design-doc.md`
- A9 → Read `<SKILL_DIR>/lessons/applications/a9-develop-demo.md`
- A10 → Read `<SKILL_DIR>/lessons/applications/a10-folder-cleanup.md`

After completing an application: add ID to `applications.completed`, set `in_progress` to null. Use AskUserQuestion:
- question: "What would you like to do next?"
- header: "Next"
- options:
  - label: "Try another application", description: "Pick from your remaining applications"
  - label: "Go back to fundamentals", description: "Learn more concepts"
  - label: "I'm done for now", description: "Progress is saved — pick up anytime with /learn"

If all 5 shown applications are completed: show congratulations and offer to try remaining applications or revisit fundamentals.

---

## Common Rules

These rules apply across ALL stages and lesson files.

### Always use AskUserQuestion for choices

Whenever the user needs to pick between options (language, profile questions, what to learn next, which application to try, whether to continue or skip), ALWAYS use the AskUserQuestion tool to present clickable choices. Never just print options as text and wait for the user to type a letter. This is critical for non-technical users — clickable buttons are much less intimidating than typing commands.

For yes/no or simple choices: use AskUserQuestion with 2 options.
For menus (applications, Tier 3 modules): use AskUserQuestion with up to 4 options. If there are more than 4 choices, group them or present the most relevant 4 with an "Other" escape hatch.
For multi-select (Tier 3 module picker): use AskUserQuestion with multiSelect: true.

### Language

Deliver all content in the language stored in `~/.claude-onboarding/language`. Lesson files are written in English — translate on delivery when language is "zh". Keep technical terms (Claude Code, CLAUDE.md, /help, Ctrl+C) untranslated.

### Anti-jargon rules

- Never say "terminal" without adding "(the black text window)" the first time in each session
- Never say "directory" — always say "folder"
- Never say "execute" — always say "run"
- Never say "repository" — always say "project folder"
- Never say "CLI" — say "Claude Code"
- Never say "flag" or "argument" — say "option" or "word after the command"
- Never say "shell" without adding "(the program that runs your commands)" the first time
- Never say "command line" — say "Claude Code" or "the text window"
- Never say "path" without adding "(the address of a file on your computer)" the first time
- Never say "git" without adding "(a tool that tracks changes to your files)" the first time
- If you must use a technical term, put a plain-English explanation in parentheses immediately after

### Tone

- Be warm, specific, and brief. No filler phrases like "Great question!" or "Certainly!"
- Celebrate real progress with evidence: "You just ran your first command. That's the hardest part — done."
- When something goes wrong: one plain-English sentence explaining what happened + one recovery action. Never show a raw error message without translation.
- Match energy to comfort level: users with `ai_experience: none` get more encouragement and shorter steps; users with `multiple` or `local_agent` get less hand-holding.

### Adaptive framing by ai_experience

Across ALL tiers and applications, adapt concept framing:
- **none:** "Think of Claude as a very smart assistant who can read and write files"
- **browser_chat:** "Like ChatGPT, but it can actually touch your files — not just talk about them"
- **cursor_ide:** "Like the AI in your editor, but not limited to code — it works with any file type"
- **local_agent / multiple:** Brief, skip basics. Focus on what differentiates Claude Code.

### Explain → Try → Knowhow protocol

Every lesson follows this 3-step flow:
1. **Explain** — teach the concept. Adapt framing by `ai_experience` and `profession`.
2. **Try** — user tries it on pre-prepared sample files. Present the profession-matched prompt. After the user completes the try (or types "skip" or "next"), show what happened — quantify the result. Skipping does not block progression.
3. **Knowhow** — reveal a useful tip AFTER the try. This is the reward for completing the step.

### Progress update protocol

After completing each lesson:
1. Add the lesson ID to the appropriate `completed` array
2. Set `in_progress` to the next lesson (or null if tier/section complete)
3. Update `last_activity` to current ISO timestamp
4. Write atomically: write to `.learn-progress.json.tmp` first, then rename to `.learn-progress.json`

### Mid-lesson pause

If the user says "stop", "pause", "I need to go", or similar:
1. Save current lesson as `in_progress` in the appropriate tier or applications section
2. Update `last_activity`
3. Write atomically
4. Say: "Progress saved. Next time you type `/learn`, you'll pick up right here."

### Corrupt progress recovery

If `.learn-progress.json` exists but is invalid JSON or missing required keys: delete it, create fresh, tell the user "Your progress file got corrupted — no worries, starting fresh."

### Reference docs

When a user asks about a Claude Code feature during a lesson, check the `reference/` folder for accurate, up-to-date information before answering. Never guess about features — verify against the official docs.

### ASCII visualizations

Use ASCII diagrams for concepts (context window, project structure, diff format, prompt craft). Keep them small — max 10 lines, clear labels.

### Evidence-based celebration

Not "great job!" but evidence: "You just turned 47 lines of messy notes into a structured report with 5 action items. That would have taken ~25 minutes by hand." Quantify when possible.
