# 3.3: Make Claude Work in Parallel (Sub-agents and Teams)

> "Claude spawns sub-agents to read and analyze all three files simultaneously, then combines their work. What would take three separate conversations happens in one step."

## Explain

When you give Claude a task that involves multiple files or multiple steps, Claude doesn't have to do everything one at a time. It can **spawn sub-agents** — helper versions of itself that work on different parts of the task in parallel.

Think of it like delegating: instead of reading three files one by one, Claude sends out three helpers to read all three at once, then combines their results. This happens automatically when Claude recognizes a task that benefits from parallel work.

You don't need to tell Claude "use sub-agents." Just give it a task that naturally involves multiple independent pieces of work, and Claude figures out the rest. The bigger the task, the more sub-agents help.

For very complex projects, there are also **agent teams** — coordinated groups of Claude agents working on different aspects of a project simultaneously. This is the most advanced usage pattern.

**Adaptive framing (choose based on profile.ai_experience):**
- **never used AI:** Imagine asking one assistant to summarize three documents. They'd read them one by one. Now imagine you had three assistants — each reads one document, then they combine their summaries. That's what sub-agents do.
- **browser chat:** In ChatGPT, you'd have to paste each file separately and ask three questions in sequence. Claude reads all three at once by spawning helpers, then gives you one combined answer.
- **Cursor IDE:** Like Cursor's multi-file operations, but explicit parallelism. Claude can spin up sub-agents for independent research, analysis, or code generation tasks.
- **local agent / multiple:** Automatic task decomposition and parallel execution via sub-agents. For complex orchestration, agent teams with named roles. Scales to multi-step projects.

Concepts:
- Sub-agents are helper versions of Claude that work on parts of a task in parallel
- Claude spawns them automatically when it recognizes parallelizable work
- You don't need special syntax — just describe the task naturally
- Agent teams are coordinated groups for complex, multi-step projects
- Best for: multi-file analysis, research + implementation, large transformations

## Try

Here's where parallel work shines. This repo has three different sample files. Ask Claude:

"Read all three sample files at once — the meeting notes (`samples/writing/meeting-notes.txt`), the sales CSV (`samples/data/sales.csv`), and the website brief (`samples/creative/website-brief.txt`). For each one, write a one-paragraph summary. Then combine them into a single 'Weekly Digest' document and save it as `weekly-digest.md`."

Watch what happens: Claude spawns sub-agents to read and analyze all three files simultaneously, then combines their work.

After the user completes the try (or types "skip"/"next"), show this debrief:

> Did you notice how fast that was? ⚡ Claude didn't read the files one by one — it sent out helpers to process all three at the same time, then combined their results into one document. What would've taken three separate conversations happened in one step. The bigger and more parallel the task, the more sub-agents shine.

## Knowhow

Sub-agents work best when the sub-tasks are truly independent. "Summarize three files" is ideal — each file can be read separately. "Write a report where section 2 depends on section 1" is less ideal — that's sequential work. When you structure your requests as independent sub-tasks, Claude parallelizes automatically.

## Reference

- Sub-agents are automatic — no special commands needed
- Works best with multi-file and multi-step tasks
- Agent teams for advanced orchestration
- Official docs on sub-agents: `reference/` directory
