# 3.4: Advanced Shortcuts and Power Moves

> "These are the moves that separate someone who uses Claude from someone who's fast with Claude."

## Explain

You've already learned the everyday shortcuts (`/btw`, `!`, Ctrl+T), context management (`/compact`), and the rewind safety net (Esc+Esc). These are the remaining advanced ones.

**`/simplify` — Built-in code quality review.** This is a bundled skill that reviews recently changed code for reuse opportunities, quality issues, and efficiency improvements. It's like having a code reviewer on demand.

**Scheduled tasks — Claude on a schedule.** Claude can run prompts on a timer, cron-style. Useful for recurring checks, automated reports, or periodic cleanup tasks. The schedule lives only in the current session.

**Adaptive framing (choose based on profile.ai_experience):**
- **never used AI:** `/simplify` is a built-in reviewer that checks Claude's own work. Scheduled tasks run things automatically at set times — like a recurring alarm that triggers a task.
- **browser chat:** ChatGPT doesn't have built-in code review or scheduled tasks. These are unique to Claude Code — they make it feel less like a chat and more like a real tool.
- **Cursor IDE:** `/simplify` is a built-in linting pass on demand. Scheduled tasks are unique — cron-style automation without leaving the session.
- **local agent / multiple:** `/simplify` for bundled code review skill, cron-style scheduling within session.

Concepts:
- `/simplify` — bundled skill that reviews changed code for quality and efficiency
- Scheduled tasks — run prompts on a cron-style schedule within the session

## Try

Make a small change to any file in the repo — for example, ask Claude to add a line to `samples/writing/meeting-notes.txt`. Then run `/simplify` to see Claude review the change for quality.

After the user completes the try (or types "skip"/"next"), show this debrief:

> You just used a built-in skill! 🔍 `/simplify` reviewed Claude's own work and flagged anything that could be cleaner. It's like having a quality reviewer on standby — one command and it checks for reuse opportunities, efficiency, and code quality. This is a great habit to build into your workflow.

## Knowhow

`/simplify` is most valuable right after Claude makes a significant change — run it while the context of what changed is still fresh. For scheduled tasks, use natural language: "every 5 minutes, check if the output file has grown and summarize the new lines." Claude translates that into a recurring job automatically.

## Reference

- `/simplify` — bundled code quality skill
- Scheduled tasks use cron-style syntax within the session
- Official docs on advanced features: `reference/` directory
