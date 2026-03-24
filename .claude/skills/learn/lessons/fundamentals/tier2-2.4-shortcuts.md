# 2.4: Shortcuts and Workflow

> "These shortcuts turn Claude from a tool you use into a workflow you live in."

## Explain

Once you're comfortable giving Claude tasks and reading diffs, there are a handful of shortcuts that make everything faster. These aren't obscure power features — they're daily workflow tools.

**`/btw` — Side questions without derailing your work.** In the middle of a task, you might think of an unrelated question. Type `/btw` followed by your question — Claude answers it and then returns to what it was doing. Your main task stays on track.

**Task list (Ctrl+T).** For complex multi-step work, Claude can create and manage a task list. Press Ctrl+T to view it. This helps you track progress on bigger projects without losing your place.

**`!` bash prefix — Run terminal commands inline.** Type `!` followed by any terminal command to run it without leaving Claude. The output appears right in your conversation. Example: `! ls samples/` lists the files in the samples folder.

**Screenshot + Ctrl+V.** Take a screenshot, then press Ctrl+V (or Cmd+V) to paste it directly into Claude. Claude can see and understand images — useful for debugging visual issues, reviewing designs, or asking about something on screen.

**Adaptive framing (choose based on profile.ai_experience):**
- **never used AI:** These shortcuts let you do multiple things without switching windows — ask side questions, run commands, and paste images all from one place.
- **browser chat:** In ChatGPT, you'd open a new chat for a side question and lose your context. `/btw` keeps everything in one session. And `!` lets you run real commands — something browser AI can't do.
- **Cursor IDE:** Similar to Cursor's terminal integration, but `/btw` for side questions and `!` for inline commands are unique to Claude Code's workflow.
- **local agent / multiple:** `/btw` for context-safe tangents, `!` for inline shell, Ctrl+T for task tracking. Standard accelerators.

Concepts:
- `/btw` — ask side questions without derailing the current task
- Task list (Ctrl+T) — view and manage multi-step work
- `!` bash prefix — run terminal commands inline (e.g., `! git status`, `! ls`)
- Screenshot + Ctrl+V — paste images directly into Claude
- Keyboard shortcuts: Up arrow for prompt history, Ctrl+C to cancel a response
- `/help` — see all available slash commands
- How to find help when stuck: `/help`, then describe what you're trying to do

## Try

Type `! ls samples/` — you just ran a terminal command without leaving our conversation. The output shows up right here.

After the user completes the try (or types "skip"/"next"), show this debrief:

> You just ran a real command without leaving our conversation! 🚀 The `!` prefix is incredibly handy — check files, run scripts, see folder contents, all without switching windows. Claude can see the output too, so you can follow up with "what's in that CSV?" right away.

## Knowhow

The `!` prefix is one of the most underused features. Instead of switching to a separate terminal window to check a file, run a script, or see what's in a folder, just type `!` and the command. Everything stays in one place, and Claude can see the output too.

## Reference

- `/btw` — side questions without context switch
- `!` — inline bash commands
- Ctrl+T — task list
- Ctrl+V / Cmd+V — paste images
- `/help` — full list of slash commands
- Official docs on shortcuts: `reference/` directory
