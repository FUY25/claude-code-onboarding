# Claude Code Onboarding

> "Most people don't need to learn to code. They need to learn to use Claude Code." — the premise behind this project

Most AI onboarding is a wall of docs. Read this, read that, figure it out. Nobody finishes. The people who'd benefit most — the non-technical ones — bounce first.

I'm [Yuming Fu](https://github.com/FUY25). I've watched dozens of smart, non-technical people try Claude Code and give up in the first ten minutes — not because it's hard, but because nobody showed them the right first steps in the right order. This project fixes that.

**Claude Code Onboarding is an interactive course that runs inside Claude Code itself.** The tool teaches itself. You paste one prompt, Claude sets up the course, and walks you through 14 concepts and 10 real-world tasks — personalized to your profession, your AI experience, and your goals. One afternoon, and you're building real things.

**Who this is for:**
- **Non-technical professionals** — PMs, marketers, consultants, researchers who want to use AI agents without learning to code
- **First-time Claude Code users** — structured learning instead of a blank prompt
- **Technical people onboarding others** — hand this to your team, they learn by doing

## Quick start

1. Install the course (30 seconds — see below)
2. Answer 3 questions — the course adapts to you
3. Work through Tier 1 (the survival basics) — 20 minutes
4. Pick an application and build something real — 15 minutes
5. Stop there. You'll know if this is for you.

## Install — 30 seconds

**Requirements:** [Claude Code](https://docs.anthropic.com/en/docs/claude-code/setup), [Git](https://git-scm.com/), macOS (Phase 1)

Open Claude Code and paste this. Claude does the rest.

> Install the Claude Code onboarding course: run **`git clone https://github.com/FUY25/claude-code-onboarding.git ~/claude-code-onboarding && cp -r ~/claude-code-onboarding/.claude/skills/learn ~/.claude/skills/learn`** then cd into ~/claude-code-onboarding and start the course with /learn

One prompt. Claude clones the repo, installs the `/learn` skill, and starts teaching you. Zero config.

**Don't have Claude Code yet?** [Install it first](https://docs.anthropic.com/en/docs/claude-code/setup) (5 min), then come back.

## See it work

```
You:    /learn

Claude: Welcome to Claude Code onboarding — an interactive course
        that teaches you by doing.

        What best describes your work?
        A) Tech-related (engineering, IT, devops)
        B) Business (finance, operations, consulting)
        C) Creative (design, content, marketing)
        D) Product / PM
        E) Research / Academic

You:    B

Claude: Have you used AI tools before?

You:    ChatGPT, but nothing on my computer.

Claude: Great. Think of Claude Code like ChatGPT — but instead of
        just talking, it can actually touch your files. Read them,
        edit them, create new ones.

        Let's try it. You just received this project.
        Ask me: "What's in here and what does each file do?"

You:    What's in here and what does each file do?

Claude: [reads every file in the project]
        Here's what I found: 38 files across 9 folders...
        The samples/ folder has practice files matched to your
        profession — I picked the business ones for you.

You:    Read business-plan-notes.txt and pull out the revenue
        assumptions.

Claude: [reads the file, extracts 4 revenue assumptions,
         flags 2 that are missing timeframes]
        Want me to save this as a clean summary?

You:    Yes.

Claude: [asks permission to create a file]
        → Created plan-summary.md

        You just turned messy notes into a structured document.
        That took about 45 seconds. By hand, that's 20 minutes.

        KNOWHOW: Notice how I asked before creating the file?
        Claude Code always asks before writing. You're always
        the one who says yes or no.

        Ready for the next concept? Or want to jump to applications?

You:    Show me the applications.

Claude: Based on your profile, here are 5 I'd recommend:
        1. CSV Analysis — charts from a spreadsheet
        2. Interview Synthesis — research report from transcripts
        3. Financial Statement — earnings analysis from a 10-Q
        4. PRD Writing — requirements doc from meeting notes
        5. Data Dashboard — interactive charts with filters

You:    Let's do CSV Analysis.

Claude: [reads sales.csv, finds trends, generates an HTML page
         with charts — all in about 2 minutes]
        Open the file in your browser. That's a live dashboard
        built from your data.
```

Three questions. Then you're doing real work. The course adapts the examples, the language, and the applications to who you are. That is not a tutorial. That is an experience.

## The course

The course follows an **Explain → Try → Knowhow** pattern. Every concept is explained, you try it on pre-loaded sample files, then the skill reveals a useful insight you didn't know you needed.

### Fundamentals — 3 tiers, 14 concepts

Everyone starts at Tier 1. After that, the course recommends a path based on your profile — but you choose.

| Tier | Your goal | What you learn |
|------|-----------|---------------|
| **Survival** | Open Claude Code, give it a task, understand what happened | Terminal as workspace, prompt craft (context + task + format), permissions & yes/no, essential controls (Ctrl+C, /help, session resume), error recovery (Esc+Esc rewind), when NOT to use Claude Code |
| **Competence** | Understand how Claude thinks, use it effectively day-to-day | Context window & why Claude "forgets", CLAUDE.md (teaching Claude about your project), markdown & diffs (reading what changed), shortcuts & workflow (/btw, Ctrl+T tasks, ! bash prefix) |
| **Power User** | Extend Claude Code with new abilities (modular — pick what you need) | Custom skills (write a .md, get a slash command), MCP (connect Claude to external tools), sub-agents & teams (parallel work), advanced shortcuts (/compact, /rewind, scheduled tasks) |

### Applications — 10 real-world tasks

You don't do all 10. The course picks 5 based on your profession and goal.

| # | Application | What you build | Sample files |
|---|-------------|---------------|-------------|
| A1 | Interview Synthesis | Research report with themes, quotes, contradictions | 6 raw interview transcripts |
| A2 | CSV Analysis | HTML page with charts and trend analysis | Sales spreadsheet |
| A3 | HTML Slides | Polished presentation from a rough outline | Presentation outline |
| A4 | Data Dashboard | Interactive dashboard with filters and charts | JSON dataset |
| A5 | Financial Statement | Earnings analysis briefing for a portfolio manager | Tesla Q4 2025 10-Q (real PDF) |
| A6 | Academic Paper | Plain-English breakdown for a non-CS reader | "Attention Is All You Need" (real PDF) |
| A7 | PRD Writing | Full PRD from scattered meeting notes | 3 meeting note files |
| A8 | Design Doc | Technical design doc with architecture and tradeoffs | Sample PRD |
| A9 | Prototype | Working HTML prototype you can click through | Product brief |
| A10 | Folder Cleanup | Organized file structure from chaos | 15 messy files |

Each application follows the same 3-step flow: **Explain** (here's what we're building and why), **Try** (you do it — this is the wow moment), **Knowhow** (here's the trick that makes it even better next time).

## How the course adapts

When you start `/learn`, it asks 3 questions. Everything downstream changes:

| Signal | What it controls |
|--------|-----------------|
| **Profession** (tech, business, creative, PM, research) | Which sample files you work with in Tier 1, which 5 applications you see, how examples are framed |
| **AI experience** (ChatGPT, Cursor, local agent, none) | How every concept is explained — "like ChatGPT but it touches your files" vs. "like Cursor but not limited to code" vs. starting from scratch |
| **Goal** (automate, analyze, build, explore) | Application priority ordering — a user who wants to automate sees folder cleanup first, a user who wants to build sees the prototype |

A business consultant analyzing data sees different files, different language, and different applications than a PM writing product specs. Same course, different experience.

## What's in the repo

```
claude-code-onboarding/
├── .claude/skills/learn/     ← /learn skill (SKILL.md + 24 lesson files)
│   ├── SKILL.md              ← Routing logic, profile questions, lesson flow
│   └── lessons/
│       ├── fundamentals/     ← 14 concept files (tier1-1.1 through tier3-3.4)
│       └── applications/     ← 10 application files (a1 through a10)
├── samples/                  ← 38 practice files across 9 categories
│   ├── business/             ← Business plan notes
│   ├── creative/             ← Campaign briefs, website briefs, presentation outlines
│   ├── data/                 ← CSV + JSON datasets
│   ├── interviews/           ← 6 user interview transcripts
│   ├── messy-folder/         ← 15 disorganized files for the cleanup task
│   ├── papers/               ← Tesla earnings report + Transformer paper (PDFs)
│   ├── pm/                   ← PRD drafts, CEO meeting notes, customer feedback
│   ├── research/             ← Research notes with findings and methodology
│   └── tech/                 ← Bug reports, sample PRD
├── docs/                     ← Landing page (GitHub Pages)
├── planning/                 ← Curriculum spec (USER-FLOW.md) + design system (DESIGN.md)
├── reference/                ← Official Anthropic Claude Code docs (32 files, ~14,600 lines)
└── setup                     ← Installs /learn skill to ~/.claude/skills/
```

## Design decisions

- **The tool teaches itself.** The course runs inside Claude Code as a skill — proving its value by being the value. You learn Claude Code by using Claude Code.
- **No jargon without definition.** Words like "terminal", "CLI", "directory", and "repository" are always explained in plain English first. The anti-jargon rule is enforced in every lesson file.
- **Profession-adapted from minute one.** A PM works with PRD drafts in Tier 1. A business user works with business plans. Same concept, relevant context. Not "hello world."
- **Lessons are separate files.** Each concept is its own `.md` file — easier to maintain, cheaper to load into context. 24 files, not one giant SKILL.md.
- **Explain → Try → Knowhow.** Every concept follows this loop. The Try step is the wow moment. The Knowhow step is the learning moment — revealed after the user has already experienced the value.
- **Evidence-based celebration.** Not "great job!" but evidence: "You just turned 47 lines of messy notes into a structured report. That would have taken 25 minutes by hand."
- **Mac only (Phase 1).** Windows is Phase 2.
- **English only (Phase 1).** Chinese landing page + lessons in Phase 2.

## Docs

| Doc | What it covers |
|-----|---------------|
| [Landing Page](https://fuy25.github.io/claude-code-onboarding/) | Public-facing page with install instructions and product overview |
| [User Flow](planning/USER-FLOW.md) | Full curriculum spec — the source of truth for what `/learn` does |
| [Design System](planning/DESIGN.md) | Visual design: fonts, colors, spacing, aesthetic direction |
| [Reference Docs](reference/) | Official Anthropic Claude Code documentation (32 files) |

## Troubleshooting

**Skill not showing up?** Run the setup script: `~/claude-code-onboarding/setup`

**Don't have Git?** Install Xcode Command Line Tools: `xcode-select --install`

**Course can't find sample files?** Make sure you're in the `~/claude-code-onboarding` directory when you run `/learn`. The skill checks for `samples/` on startup.

**Want to reset your progress?** Delete `~/.claude-onboarding/` and start fresh.

## License

MIT. Free forever. Go learn something.
