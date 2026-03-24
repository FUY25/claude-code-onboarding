# 3.3: Make Claude Work in Parallel (Sub-agents and Teams)

> "Claude spawns sub-agents to read and analyze all three files simultaneously, then combines their work. What would take three separate conversations happens in one step."

## Explain

When you give Claude a task that involves multiple files or multiple steps, Claude doesn't have to do everything one at a time. It can **spawn sub-agents** — helper versions of itself that work on different parts of the task in parallel.

Think of it like delegating: instead of reading three files one by one, Claude sends out three helpers to read all three at once, then combines their results.

To trigger this, **explicitly ask Claude to use sub-agents or agent teams** in your prompt. Claude won't automatically parallelize unless you tell it to — but once you do, it figures out how to divide and coordinate the work.

For very complex projects, there are also **agent teams** — coordinated groups of Claude agents working on different aspects of a project simultaneously. This is the most advanced usage pattern.

**Adaptive framing (choose based on profile.ai_experience):**
- **never used AI:** Imagine asking one assistant to summarize three documents. They'd read them one by one. Now imagine you had three assistants — each reads one document, then they combine their summaries. That's what sub-agents do. You just need to say "use subagents" to make it happen.
- **browser chat:** In ChatGPT, you'd have to paste each file separately and ask three questions in sequence. Claude can read all three at once via subagents — just ask it to.
- **Cursor IDE:** Like Cursor's multi-file operations, but explicit parallelism. Say "use subagents" and Claude spins up helpers for independent research, analysis, or code generation tasks.
- **local agent / multiple:** Explicit subagent dispatch and parallel execution. For complex orchestration, agent teams with named roles. Scales to multi-step projects.

Concepts:
- Sub-agents are helper versions of Claude that work on parts of a task in parallel
- **You must explicitly ask Claude to use sub-agents or agent teams** — it won't parallelize automatically
- Agent teams are coordinated groups for complex, multi-step projects
- Best for: multi-file analysis, research + implementation, large transformations

## Try

Here's where parallel work shines. This repo has three different sample files. Ask Claude:

"Use subagents to read all three sample files in parallel — the meeting notes (`samples/writing/meeting-notes.txt`), the sales CSV (`samples/data/sales.csv`), and the website brief (`samples/creative/website-brief.txt`). For each one, write a one-paragraph summary. Then combine them into a single 'Weekly Digest' document and save it as `weekly-digest.md`."

The key phrase is **"use subagents"** — that's what triggers parallel dispatch instead of sequential reading.

Watch what happens: Claude spawns sub-agents to read and analyze all three files simultaneously, then combines their work.

After the user completes the try (or types "skip"/"next"), show this debrief:

> Did you notice how fast that was? ⚡ Claude didn't read the files one by one — it sent out helpers to process all three at the same time, then combined their results into one document. The magic word was "use subagents" — without it, Claude would've read them sequentially. Now you know the trigger.

## Knowhow

Always include "use subagents" or "use agent teams" in your prompt when you want parallel work. Sub-agents work best when the sub-tasks are truly independent — "summarize three files" is ideal since each file can be handled separately. "Write a report where section 2 depends on section 1" is sequential work and won't benefit. Structure your requests as independent sub-tasks and explicitly invoke subagents to get the speed boost.

## Reference

- Say "use subagents" or "use agent teams" to trigger parallel work
- Works best with multi-file and multi-step tasks
- Agent teams for advanced orchestration
- Official docs on sub-agents: `reference/` directory
