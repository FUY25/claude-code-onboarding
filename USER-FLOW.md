# User Flow — Claude Code Onboarding Curriculum

**Date:** 2026-03-23
**Status:** Draft (from brainstorm session with Yuming)
**Scope:** Full course skeleton — fundamentals + applications

---

## Overview

An interactive onboarding course for Claude Code, delivered as a `/learn` skill running inside Claude Code itself. The tool teaches itself — proving its value by being the value.

**Core principles:**
- The course follows the **Explain → Try → Knowhow** pattern. Every concept is explained, then the user tries it on pre-prepared repo content, then the skill reveals a useful insight. Checkpoints are skippable.
- Concepts are framed around Claude Code, not generic computer literacy. Users know what folders are — teach them why Claude Code cares which folder you're in.
- Applications deliver the wow factor first, then explain what happened.
- The curriculum is adaptive: profile + in-flow choices determine what each user sees. Framing adapts by `ai_experience` and `profession` across ALL tiers and applications, not just Tier 1.
- All learning happens inside the skill and the pre-prepared repo.

**Reference documentation:** Official Anthropic Claude Code docs are stored in `docs/reference/` (32 files, ~14,600 lines). These serve as:
- Source of truth for feature accuracy when writing lesson content
- Reference material the skill can point users to for deeper reading on any feature
- Cross-reference for keeping curriculum up-to-date as Claude Code evolves

When a user asks about a feature during the course, the skill should check `docs/reference/` and provide accurate, up-to-date information rather than relying on stale lesson content.

**Created by:** Yuming Fu

**Repo check:** Before the welcome message, the skill silently verifies the course repo is present (checks for `samples/`, `CLAUDE.md`, `docs/reference/`). If missing, it downloads the repo automatically. All teaching samples and materials must be in the repo before any lesson begins.

---

## Stage 0: Language Selection

Before anything else — even the welcome message.

```
┌─────────────────────────────────┐
│                                 │
│   Choose your language:         │
│                                 │
│   A) English                    │
│   B) 中文                       │
│                                 │
└─────────────────────────────────┘
```

Carried from the landing page EN/中文 switch, but asked again here because a user may have browsed the English landing page but prefer Chinese instruction. This choice persists — all subsequent lesson content, prompts, and feedback render in the selected language.

---

## Stage 1: Welcome (one-time)

Short. One screen. Not a wall of text.

> "Welcome to Claude Code onboarding — an interactive course that teaches you by doing.
>
> By the end, you'll know how to use Claude Code to get real work done such as: analyze data, build webpages, automate tasks.
>
> Everything here is hands-on. You'll try things as you learn them.
>
> Created by Yuming."

Then immediately proceed to Stage 2.

---

## Stage 2: Profile Collection

**3 questions only.** Fast, low-friction. Skill level is tested inline during lessons, not here.

### Q1: Profession

> "What best describes your work?"
>
> A) Tech-related (engineering, IT, devops)
> B) Business (finance, operations, consulting, management)
> C) Creative (design, content, marketing, media)
> D) Product / PM
> E) Research / Academic
> F) Type your own: ___

Maps to → `profile.profession` (used for application routing + sample selection)

### Q2: AI Familiarity

> "Have you used AI tools before?"
>
> A) ChatGPT, Claude, or Gemini (browser chat)
> B) Cursor IDE or similar AI code editor
> C) OpenClaw or other local AI agent
> D) Multiple of the above
> E) Never used any

Maps to → `profile.ai_experience`

This tells us their **mental model**:
- Browser chat users think "I type, I get text back"
- Cursor users think "AI edits my files"
- OpenClaw users think "AI runs on my computer"
- Never-used users have no mental model

Each group needs different framing in Lesson 1.

### Q3: Goal

> "What brought you here?"
>
> A) Automate repetitive work (reports, emails, file cleanup)
> B) Analyze data without spreadsheet formulas
> C) Build things (websites, presentations, docs)
> D) Learn what AI coding tools can do
> E) Type your own: ___

Maps to → `profile.goal` (used for application priority ordering)

### Profile Output

```yaml
language: en | zh
profession: tech | business | creative | pm | research | custom
ai_experience: browser_chat | cursor_ide | local_agent | multiple | none
goal: automate | analyze | build | explore | custom
```

---

## Stage 3: Fundamentals

Three tiers. Routing is governed by **profile + in-flow user choice**, not timing.

- Everyone starts at Tier 1
- After Tier 1, the skill recommends a tier based on profile but the user chooses
- Within Tier 3, modules are selective — user picks what they need, not the whole tier

### Profession-Adapted Sample Files

Try steps in Tier 1 use a sample file matched to the user's profession (from Stage 2). This makes fundamentals feel relevant from minute one.

| Profession | Sample file | Description |
|-----------|------------|-------------|
| Tech | `samples/tech/bug-report-draft.txt` | Messy bug report with reproduction steps, logs, and context |
| Business | `samples/business/business-plan-notes.txt` | Rough business plan with revenue model, market notes, competition |
| Creative | `samples/creative/campaign-brief.txt` | Disorganized campaign brief with target audience, channels, copy ideas |
| PM | `samples/pm/prd-draft.txt` | Rough PRD with problem statement, requirements, success metrics |
| Research | `samples/research/research-notes.txt` | Raw research notes with findings, methodology, references |

The try steps below show the PM version as example. Each profession gets equivalent prompts adapted to their sample file.

### Tier 1: Survival

**Goal:** User can open Claude Code, give it a task, and understand what happened.

#### 1.1 Why Claude Code Lives in the Terminal

Not "what is a terminal" — users use computers. Frame it as:

> "Claude Code runs in Terminal because that's where it can actually touch your files — read them, edit them, create new ones. A browser AI can only talk. Claude Code can do."

Concepts:
- Terminal is how you talk directly to your computer
- Claude Code operates in whatever folder you open it in — that's its workspace. The user is already in the course repo folder — explain that this is their workspace for the course.
- How to open Terminal (Mac: Spotlight → "Terminal")
- **How Claude "thinks":** The agentic loop — gather context → take action → verify results. Claude isn't just answering questions; it's investigating, acting, and checking its own work.

**Try it now:** "You just received this project. Ask me what's in here and what each file does."

#### 1.2 Your First Prompt + Prompt Craft

The most important skill: how to ask well.

Frame as: "The clearer your request, the better Claude's output. Give context."

```
┌─────────────────────────────────────────────┐
│              PROMPT CRAFT                   │
│                                             │
│  BAD:   "write me something"               │
│                                             │
│  GOOD:  "Read meeting-notes.txt.           │
│          Extract:                           │
│          1) decisions made                  │
│          2) action items with owners        │
│          3) unresolved questions            │
│          Format as markdown with headers."  │
│                                             │
│  KEY: Context + Task + Format = Good Output │
│                                             │
└─────────────────────────────────────────────┘
```

Concepts:
- Plain English works — no special syntax
- More context = better output
- Specify format when it matters (bullet points, table, markdown)
- You can reference files by name — Claude reads them directly
- **@ file references:** Type `@` followed by a filename to reference files directly in your prompt (with fuzzy matching). This is the fastest way to point Claude at specific files.
- **It's a conversation:** You don't need perfect prompts. Start with what you want, then refine. Claude remembers the context and you can steer it as you go.
- **Multiline input:** Use `\` + Enter, or Option+Enter to write longer prompts with line breaks

**Try it now:** (PM example) "Read `@prd-draft.txt` and list the requirements that are missing success metrics."
Tech: "Read `@bug-report-draft.txt` and list the missing reproduction steps."
Business: "Read `@business-plan-notes.txt` and pull out the revenue assumptions."
Creative: "Read `@campaign-brief.txt` and list the target audience segments."
Research: "Read `@research-notes.txt` and list the key findings with their evidence strength."

#### 1.3 Permissions + Yes/No

> "Claude Code asks before doing anything risky. You're always the one who says yes or no."

Concepts:
- Read vs. write: Claude reads freely, asks before writing/running commands (permissions can be customized)
- How to say yes, no, or "explain first"
- The permission prompt — what it looks like, what it means
- **Shift+Tab permission modes:** Cycles through Default → Auto-accept edits → Plan mode. Plan mode means Claude plans first, you approve before it acts.

**Try it now:** (PM example) "Save those requirements as `prd-summary.md`." — triggers the permission prompt.
Tech: "Save those steps as `bug-summary.md`."
Business: "Save those assumptions as `plan-summary.md`."
Creative: "Save those segments as `audience-summary.md`."
Research: "Save those findings as `findings-summary.md`."

#### 1.4 Essential Controls

The things you need to survive:
- How to stop Claude mid-response (Ctrl+C)
- How to exit Claude Code
- How to get help (`/help`)
- **Session resume:** `claude -c` continues your last conversation. `claude -r` lets you pick from past sessions. You never lose your work.
- **Model switching:** `/model` to change models mid-conversation. Different models have different strengths and costs. `/fast` toggles faster output mode.
- Plan mode: what it is, when to use it (Claude plans before acting). Activate with **Shift+Tab**.
- **Paste images:** Ctrl+V / Cmd+V to paste screenshots directly into Claude. Claude can see and understand images.
- API key vs. Anthropic auth (just enough to get it working, not a deep dive)

**Try it now:** Try Ctrl+C while Claude is responding. Try `/help`.

#### 1.5 Error Recovery

Not "Claude got the answer wrong" but real terminal errors.

Concepts:
- "Permission denied" — what it means, what to do
- "Command not found" — what it means
- Network errors / model overloaded — just try again
- Claude's answer is wrong — how to clarify, iterate, undo
- **Esc+Esc rewind — the real safety net.** Claude automatically snapshots files before every edit. Press Esc twice to open a rewind menu: restore code, restore conversation, or both. This is the undo button. You can always go back. Also available via `/rewind`.
- **`rm` does NOT go to your Trash.** If Claude deletes a file, it's gone. Always confirm delete operations.

**Try it now:** (PM example) "Reorganize `prd-draft.txt` with proper headers and sections." Then press Esc+Esc to undo and get the original back.
(Each profession: edit their sample file, then rewind.)

#### 1.6 When NOT to Use Claude Code

Build trust through honesty.

- Don't paste passwords or API keys into prompts
- Don't let Claude delete files you haven't backed up — `rm` is permanent
- Don't trust Claude with math you haven't verified
- Don't run commands you don't understand with `sudo`
- When in doubt: ask Claude to explain what it's about to do before saying yes

---

### Tier 2: Competence

**Goal:** User understands how Claude Code thinks and can use it effectively day-to-day.

#### 2.1 Context Window — Why Claude "Forgets"

```
┌─────────────────────────────────┐
│       CONTEXT WINDOW            │
│  ┌───────────────────────────┐  │
│  │ Your prompts              │  │
│  │ + files Claude has read   │  │
│  │ + conversation history    │  │
│  │ = everything Claude       │  │
│  │   can "see" right now     │  │
│  └───────────────────────────┘  │
│                                 │
│  When this fills up:            │
│  → older context gets compacted │
│  → Claude may "forget" earlier  │
│    parts of the conversation    │
│                                 │
│  STRATEGY: Start fresh for new  │
│  tasks. Don't ask Claude to     │
│  remember everything forever.   │
└─────────────────────────────────┘
```

Concepts:
- What context window is
- What "compact" means — Claude summarizes old context to make room
- Why starting a new session for a new task is often better
- How to check if Claude still "remembers" something
- **`/clear`** — start a fresh session. Recommended between unrelated tasks.
- **`/context`** — see what's consuming your context window
- **`/cost`** — see token usage and costs
- **Key insight: Put persistent instructions in CLAUDE.md, not conversation.** Anything that must survive compaction belongs in CLAUDE.md, not in your chat history. `/compact focus on X` lets you control what gets preserved.

**Try it now:** Type `/cost` to see your current usage. Type `/context` to see what's filling your context window.

#### 2.2 CLAUDE.md — Teaching Claude About Your Project

> "CLAUDE.md is a file you put in your project folder. Claude reads it automatically every time it starts. It's like a briefing document — 'here's what this project is, here's how we work, here's what to watch out for.'"

Concepts:
- What CLAUDE.md is and where it goes (project root — must be uppercase)
- What to put in it (project context, conventions, preferences, anti-patterns)
- How it persists across sessions (unlike conversation history)
- **`/init`** — Claude scans your project and generates a starter CLAUDE.md automatically. Great first step for any new project.
- **Auto memory (MEMORY.md):** Claude can also save things it learns across sessions to `~/.claude/MEMORY.md`. This is automatic — Claude notices patterns and saves them. You can also ask Claude to remember things explicitly.
- **Three levels of CLAUDE.md:** Global (`~/.claude/CLAUDE.md`), project root, and subdirectories. Claude reads all of them, inner files override outer ones.

**Try it now:** "Ask me to show you this project's CLAUDE.md." See how it already shaped my behavior before you said a word.

#### 2.3 Markdown and Diffs — Plain Text + Understanding What Changed

> "Claude works best with plain text files — especially markdown (.md). And when Claude edits a file, it shows you a 'diff' — a before-and-after view so you always know what changed."

```
  - old line that was removed
  + new line that was added
    unchanged line for context
```

Concepts:
- Markdown basics (headers, lists, bold, code blocks)
- Why .md over .docx/.pdf for Claude workflows
- How Claude reads and writes markdown naturally
- Red/minus = removed, green/plus = added
- Context lines (unchanged) show where in the file the change happened
- How to approve or reject a change

**Try it now:** (PM example) "Add a 'Risks' section to `prd-draft.txt`." Watch the diff — red lines are removed, green lines are added.
(Each profession: add a section to their sample .txt file.)

#### 2.4 Shortcuts and Workflow

Concepts:
- **`/btw`** — side questions. Ask Claude something unrelated without derailing your current task. Claude answers and returns to what it was doing.
- **Task list (Ctrl+T):** Claude can create and manage a task list for complex multi-step work. You can view it with Ctrl+T.
- **`!` bash prefix:** Type `! ls` or `! git status` to run a terminal command without leaving Claude. The output lands in your conversation.
- Screenshot + Ctrl+V: paste images directly into Claude
- Keyboard shortcuts in Terminal (Up arrow for history, Ctrl+C to cancel)
- `/help` and other slash commands overview
- How to find help when stuck

**Try it now:** "Type `! ls samples/` — you just ran a terminal command without leaving our conversation."

---

### Tier 3: Power User (modular — pick what you need)

**Goal:** User can extend Claude Code and use advanced features. Each module is standalone — user picks the ones relevant to them, no need to complete the whole tier.

After completing Tier 2, the skill asks:

> "What would you like to learn next?"
>
> A) Teach Claude new abilities (so it can do specialized tasks)
> B) Connect Claude to external tools and services
> C) Make Claude work on multiple things at once
> D) Learn advanced shortcuts and power moves
> E) Skip — take me to applications

Available modules:

#### 3.1 Teach Claude New Abilities (Skills)
- What a skill is (a markdown file that gives Claude specialized instructions)
- **Bundled skills vs. custom skills:** Claude comes with built-in skills like `/simplify` (code quality review). Custom skills are `.md` files you or others create in `.claude/skills/`.
- How to find, install, use skills
- How skills are project-scoped (safe by design)
- Creating your own skill: just a markdown file with instructions in `.claude/skills/`

**Try it now:** "This repo has a custom skill called `/sample-skill` — a Writing Reviewer. Try it: open the file `samples/writing/meeting-notes.txt`, then type `/sample-skill` and ask Claude to review those meeting notes for clarity, tone, and structure. Look at the feedback it gives you — that's a skill in action. Now open `.claude/skills/sample-skill/SKILL.md` and read it. It's just a markdown file with instructions. You could make your own skill for any repeatable task."

#### 3.2 Connect Claude to External Tools (MCP)
- What MCP (Model Context Protocol) is: a way for Claude to talk to other services
- When you'd use it (databases, APIs, external tools)
- How to set one up (brief overview, link to docs)

**Try it now:** "MCP lets Claude talk to external tools and services. Let's try the simplest one: a Fetch server that lets Claude grab content from any URL. Run this one command in your terminal:

```
claude mcp add fetch -s user -- npx -y @anthropic/mcp-fetch
```

That's it — Claude can now read web pages. Try it: ask Claude 'Fetch https://news.ycombinator.com and tell me the top 3 stories right now.' Claude will use the Fetch MCP to grab the page and summarize it. You just gave Claude a new superpower with one line."

#### 3.3 Make Claude Work in Parallel (Sub-agents and Teams)
- What sub-agents are (Claude spawning helpers for parallel work)
- When to use them (large tasks, research + implementation)
- Agent teams for complex multi-step projects

**Try it now:** "Here's where parallel work shines. This repo has three different sample files: meeting notes (`samples/writing/meeting-notes.txt`), a sales dataset (`samples/data/sales.csv`), and a website brief (`samples/creative/website-brief.txt`). Ask Claude:

'Read all three sample files at once — the meeting notes, the sales CSV, and the website brief. For each one, write a one-paragraph executive summary. Then combine them into a single "Weekly Digest" document with all three summaries and save it as `weekly-digest.md`.'

Watch what happens: Claude spawns sub-agents to read and analyze all three files simultaneously, then combines their work. What would take three separate conversations happens in one step."

#### 3.4 Advanced Shortcuts and Power Moves
- `/compact` — manually trigger context compression
- `/rewind` — undo Claude's last action (also Esc+Esc)
- `/simplify` — a bundled skill that reviews changed code for reuse, quality, and efficiency
- Scheduled tasks — Claude can run prompts on a schedule (cron-style)

**Try it now:** Make a small change to a file in the repo, then run `/simplify` to see Claude review it.

---

## Stage 4: Applications

After fundamentals (or interleaved — user can jump to applications after Tier 1).

### Routing

Based on `profile.profession` and `profile.goal`, show **5 application samples**. User picks which ones they want to learn. Not a menu of all 10 — a curated set of 5.

| Profile | 5 Suggested Applications |
|---------|-------------------------|
| Tech | HTML slides, develop demo, design doc, folder cleanup, data dashboard |
| Business | Income statement, interview synthesis, PRD writing, CSV analysis, data dashboard |
| Creative | HTML slides, develop demo, interview synthesis, CSV analysis, presentation |
| PM | PRD writing, interview synthesis, design doc, data dashboard, folder cleanup |
| Research | Academic paper, CSV analysis, interview synthesis, data dashboard, PRD writing |

User sees the 5, picks one to start.

### Application Catalog

Each application follows the same 3-step structure:

```
┌─────────────────────────────────────────────────┐
│           APPLICATION FLOW                      │
│                                                 │
│  STEP 1: EXPLAIN                                │
│  "Here's what we're going to do and why it's    │
│   useful. Here's the sample file."              │
│                                                 │
│          ↓                                      │
│                                                 │
│  STEP 2: TRY                                    │
│  "Now you do it. Type this prompt."             │
│  → This is the WOW FACTOR moment.              │
│  → Claude transforms messy input into           │
│    polished output in seconds.                  │
│  → User iterates: "make it shorter",            │
│    "change the tone", "add a section"           │
│                                                 │
│          ↓                                      │
│                                                 │
│  STEP 3: KNOWHOW                                │
│  "Here's the tip/trick that makes this          │
│   even better next time."                       │
│  → Reveal a concept, shortcut, or technique     │
│    that connects to what they just did.         │
│  → This is the LEARNING moment (after the wow). │
│                                                 │
└─────────────────────────────────────────────────┘
```

### Application Details

**A1: User Interview Synthesis**
- Sample: 5+ messy interview transcript files in `samples/interviews/` (e.g. `interview-user-1.txt`, `interview-user-2.txt`, ...) — raw, unstructured, realistic interview notes
- Try: "Read all the interview files in `samples/interviews/`. Synthesize them into a research report: common themes, key quotes, contradictions, and recommended next steps."
- Knowhow: Prompt craft for format control — how to tell Claude what to include, what to leave out, what format to use (table vs. prose vs. structured report). The do's and don'ts of prompting for synthesis tasks.

**A2: CSV Data Analysis + Visualization**
- Sample: `samples/data/sales.csv`
- Try: "Read this CSV. Tell me: which month had the highest revenue, what's the quarter-over-quarter trend, and anything I should flag. Then create an HTML page with charts visualizing the key trends."
- Knowhow: How AI uses Python code as its "hands" to do math and generate charts. Claude doesn't calculate in its head — it writes and runs code. You can ask to see the code and check it for rigorousness. Always verify numbers that matter.

**A3: HTML Slides / Presentation**
- Sample: a topic brief or outline file in `samples/creative/presentation-outline.txt`
- Try: "Turn this outline into a polished HTML presentation with 3 slides: a title slide, the key points, and a summary with next steps. Use a clean dark theme. The audience is senior leadership — keep it concise and data-driven."
- Knowhow: How to control emphasis, style, and audience in your prompt. Claude responds to tone instructions ("concise", "data-driven", "friendly") and audience specification ("for executives", "for beginners"). Iteration is cheap — try different styles.

**A4: Interactive Data Dashboard**
- Sample: a dataset (CSV or JSON) in `samples/data/dashboard-data.json`
- Try: "Build me an interactive HTML dashboard from this data. I want filters, clickable charts, and a summary panel. Make it look professional."
- Knowhow: What HTML is, what localhost means, how to open the file in a browser. Claude writes code that runs entirely on your computer — no server, no deployment, no account needed. The file IS the app.

**A5: Financial Statement Analysis**
- Sample: `TSLA-Q4-2025-Update.pdf` (Tesla Q4 & FY2025 earnings report — real document)
- Try: "Read this earnings report. Give me: (1) overall revenue and margin performance vs. last year, (2) which business segment grew fastest and which shrank, (3) any anomalies or red flags worth digging into — unusual expense jumps, margin compression, cash flow vs. net income gaps. Summarize as if you're briefing a portfolio manager."
- Knowhow: How to structure financial analysis prompts like an analyst — be specific about what to compare, what thresholds matter, and who the audience is. Claude reads PDFs directly. Always cross-check the numbers Claude cites against the source document.

**A6: Academic Paper Reading**
- Sample: `NIPS-2017-attention-is-all-you-need-Paper.pdf` ("Attention Is All You Need" — the Transformer paper)
- Try: "Read this paper. Explain the key findings as if I'm a beginner with no CS background. What problem does it solve, why does it matter, and what are the limitations the authors admit?"
- Knowhow: How to use Claude as a research translator — break down jargon, ask for analogies, request different levels of explanation. Follow-up with "now explain just the methodology" or "what would a critic say about this paper?"

**A7: PRD Writing**
- Sample: Multiple meeting note files in `samples/pm/` — e.g. `ceo-meeting-notes.txt`, `customer-feedback-call.txt`, `team-brainstorm.txt`
- Try: "Read all the meeting notes in `samples/pm/`. Write a PRD with: problem statement, user personas, detailed requirements (must-have vs. nice-to-have), success metrics, risks, and a proposed timeline. Reference specific customer quotes where relevant."
- Knowhow: CLAUDE.md — set up a project context file so Claude always knows your product, your users, and your constraints. Next time you write a PRD, Claude starts with that context instead of from scratch.

**A8: Design Doc / Implementation Plan**
- Sample: A PRD file in `samples/tech/sample-prd.md` (could be the output format from A7)
- Try: "Read this PRD. Write a design doc with: system architecture, data model, API design, key technical decisions with tradeoffs, implementation phases with milestones, and risks. Assume a 2-person engineering team and a 6-week timeline."
- Knowhow: Plan mode — having Claude plan before it builds. When the task is complex, use Shift+Tab to switch to Plan mode. Claude lays out the approach, you approve, then it executes. Saves time on rework.

**A9: Develop Demo / Prototype**
- Sample: a product description or mockup notes in `samples/creative/website-brief.txt`
- Try: "Build a working prototype of this as an HTML page"
- Knowhow: Iteration loop — "add a button", "make it responsive", "change the colors". Claude builds, you steer. Each iteration takes seconds.

**A10: Tidy Up a Messy Folder**
- Sample: `samples/messy-folder/` — 10+ small files of different types (`.txt`, `.csv`, `.md`, `.json`, `.html`, `.log`, duplicates, misnamed files). No need for large real content — just enough to be realistic and disorganized.
- Try: "Look at `samples/messy-folder/`. Tell me what's in there, suggest how to reorganize it, then do it."
- Knowhow: Safety — Claude asks before moving/deleting. `rm` is permanent. Always review the plan before saying yes. Ask Claude to explain what it's about to do.

---

## Pedagogy: Teaching Methods

### Explain → Try → Knowhow Flow
- Every lesson follows this 3-step structure: explain the concept, user tries it on pre-prepared repo content, then reveal a useful insight
- After each Try step, immediately show explanation of what happened and transition to the Knowhow + next steps
- User can skip any Try step (type "skip" or "next") — skipping doesn't block progression

### ASCII Visualizations
- Use ASCII diagrams for concepts (context window, project structure, diff format, prompt structure)
- Keep them small — max 10 lines, clear labels

### Before/After Diffs
- When Claude transforms a file, show the before and after side by side
- Teach diff reading as a fundamental skill (Tier 2.3)
- "Here's what your messy notes looked like. Here's what Claude produced. Look at the difference."

### Evidence-Based Celebration
- Not "great job!" but evidence: "You just turned 47 lines of messy notes into a structured report with 5 action items. That would have taken ~25 minutes by hand."
- Quantify when possible: line counts, time saved, structure added

### Tips as Rewards
- Don't frontload tips/tricks
- Reveal them AFTER the user completes an application
- "Now that you've done this, here's a trick that makes it even better next time..."
- This creates a discovery loop — finish a task, unlock a tip

### Adaptive Depth
- Concepts adapt framing by `ai_experience` and `profession` across **ALL tiers and applications**, not just Tier 1:
  - Never used AI → "Think of Claude as a very smart assistant who can read and write files"
  - Browser chat user → "Like ChatGPT, but it can actually touch your files — not just talk about them"
  - Cursor user → "Like Cursor's AI, but not limited to code — it works with any file type"
  - OpenClaw user → "Similar idea, but sandboxed and secure — no exposed ports, no malicious skills"
- In Tier 2+, adapt examples and depth by profession (e.g. a business user sees CLAUDE.md explained as "a briefing document for your AI assistant", a tech user sees it as "project config for the agent")
- Applications adapt samples, prompts, and language by `profession` and `goal`

### Selective Curriculum (Tier 3)
- Tier 3 modules are independent — user picks what's relevant via a plain-English "what do you want to do?" menu
- Don't force the whole power user tier on anyone

---

## Progress Tracking

```yaml
# ~/.claude-onboarding/profile.yaml
language: en
profession: business
ai_experience: browser_chat
goal: automate

# .learn-progress.json (per project folder)
{
  "current_stage": "applications",
  "fundamentals": {
    "tier1": { "completed": ["1.1", "1.2", "1.3", "1.4", "1.5", "1.6"], "skipped": [] },
    "tier2": { "completed": ["2.1", "2.2"], "skipped": [], "in_progress": "2.3" },
    "tier3": { "completed": [], "unlocked": ["3.1", "3.4"] }
  },
  "applications": {
    "shown": ["A1", "A2", "A5", "A7", "A8"],
    "completed": ["A1"],
    "in_progress": "A2"
  },
  "last_activity": "2026-03-23T14:30:00Z"
}
```

---

## User Flow Diagram

```
┌──────────────────┐
│  LANGUAGE CHOICE  │  ← Before anything else
│  EN / 中文         │
└────────┬─────────┘
         ↓
┌──────────────────┐
│  WELCOME          │  ← One-time intro
│  (one screen)     │
└────────┬─────────┘
         ↓
┌──────────────────┐
│  PROFILE           │  ← 3 questions
│  Profession        │
│  AI Familiarity    │
│  Goal              │
└────────┬─────────┘
         ↓
┌──────────────────┐
│  TIER 1            │  ← Everyone starts here
│  SURVIVAL          │
│  6 concepts        │
│  (try-it checkpts) │
└────────┬─────────┘
         ↓
    ┌────┴────┐
    ↓         ↓
┌────────┐ ┌──────────┐
│ TIER 2 │ │ APPS     │  ← User chooses: go deeper
│ COMP.  │ │ (5 shown)│    or start applying
└───┬────┘ └────┬─────┘
    │           │
    ↓           ↓
┌────────┐  ┌───────────────┐
│ TIER 3 │  │ EXPLAIN → TRY │
│ POWER  │  │   → KNOWHOW   │
│(select)│  │ (per app)     │
└────────┘  └───────────────┘
```

After Tier 1, the user can:
- Continue to Tier 2 (recommended for users with comfort_level ≤ 3 or ai_experience = none)
- Jump to Applications (recommended for users who want immediate value)
- Come back to Tier 2/3 anytime between applications

---

## Sample Files Needed

### Fundamentals — Profession-Adapted (Tier 1 try steps)

| Profession | Sample File | Status |
|-----------|------------|--------|
| Tech | `samples/tech/bug-report-draft.txt` | NEEDED |
| Business | `samples/business/business-plan-notes.txt` | NEEDED |
| Creative | `samples/creative/campaign-brief.txt` | NEEDED |
| PM | `samples/pm/prd-draft.txt` | NEEDED |
| Research | `samples/research/research-notes.txt` | NEEDED |

### Applications

| ID | Application | Sample File | Status |
|----|------------|-------------|--------|
| A1 | Interview Synthesis | `samples/interviews/` (5+ .txt files) | NEEDED |
| A2 | CSV Analysis + Viz | `samples/data/sales.csv` | EXISTS |
| A3 | HTML Slides | `samples/creative/presentation-outline.txt` | NEEDED |
| A4 | Interactive Dashboard | `samples/data/dashboard-data.json` | NEEDED |
| A5 | Financial Statement | `TSLA-Q4-2025-Update.pdf` | EXISTS |
| A6 | Academic Paper | `NIPS-2017-attention-is-all-you-need-Paper.pdf` | EXISTS |
| A7 | PRD Writing | `samples/pm/ceo-meeting-notes.txt`, `customer-feedback-call.txt`, `team-brainstorm.txt` | NEEDED |
| A8 | Design Doc | `samples/tech/sample-prd.md` | NEEDED |
| A9 | Develop Demo | `samples/creative/website-brief.txt` | EXISTS |
| A10 | Folder Cleanup | `samples/messy-folder/` (10+ mixed-type small files) | NEEDED |

---

## Open Questions

1. ~~**Tier 1 length.**~~ **Resolved:** 6 concepts is fine. Keep as-is.
2. ~~**Chinese content.**~~ **Resolved:** Same content, direct translation. No need to adapt for 小红书 or Chinese tech culture.
3. ~~**Returning users.**~~ **Resolved:** `/learn` continues to be useful for explaining concepts and learning specific functions (reference mode).
4. **Analytics.** Deferred — discuss after building.
5. **Application sample quality.** Deferred — discuss after building. Each sample needs playtesting.
