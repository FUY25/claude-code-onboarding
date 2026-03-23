# 3.4: Advanced Shortcuts and Power Moves

> "These are the moves that separate someone who uses Claude from someone who's fast with Claude."

## Explain

You've already learned the everyday shortcuts (`/btw`, `!`, Ctrl+T). These are the advanced ones — tools for when you want to move faster, recover from mistakes, or automate repeating work.

**`/compact` — Manual context compression.** When your conversation gets long and you want to free up space without starting over, type `/compact`. Claude summarizes the conversation history and continues with a smaller context. You can also say `/compact focus on X` to tell Claude what matters most — everything else gets summarized more aggressively.

**`/rewind` — Undo Claude's last action.** Made a change you don't like? Type `/rewind` (or press Esc twice) to undo it. Claude automatically snapshots your files before every edit, so you can always go back. The rewind menu lets you restore code, restore the conversation, or both.

**`/simplify` — Built-in code quality review.** This is a bundled skill that reviews recently changed code for reuse opportunities, quality issues, and efficiency improvements. It's like having a code reviewer on demand.

**Scheduled tasks — Claude on a schedule.** Claude can run prompts on a timer, cron-style. Useful for recurring checks, automated reports, or periodic cleanup tasks. The schedule lives only in the current session.

**Adaptive framing (choose based on profile.ai_experience):**
- **never used AI:** `/rewind` is your safety net — you can always undo. `/compact` is like clearing your desk to make room. `/simplify` is a built-in reviewer. Scheduled tasks run things automatically at set times.
- **browser chat:** ChatGPT doesn't have undo, context management, or scheduled tasks. These are unique to Claude Code — they make it feel less like a chat and more like a real tool.
- **Cursor IDE:** `/rewind` is like Cursor's undo but for the entire session (files + conversation). `/compact` gives explicit control over context. `/simplify` is a built-in linting pass. Scheduled tasks are unique.
- **local agent / multiple:** `/compact` for manual context management, `/rewind` for state rollback (snapshots before each edit), `/simplify` for bundled code review skill, cron-style scheduling within session.

Concepts:
- `/compact` — manually trigger context compression; `/compact focus on X` to control what's preserved
- `/rewind` (also Esc+Esc) — undo Claude's last action by restoring file snapshots
- `/simplify` — bundled skill that reviews changed code for quality and efficiency
- Scheduled tasks — run prompts on a cron-style schedule within the session

## Try

Make a small change to any file in the repo — for example, ask Claude to add a line to `samples/writing/meeting-notes.txt`. Then run `/simplify` to see Claude review the change for quality.

After completion, explain what happened. Type "skip" or "next" to move on.

## Knowhow

`/rewind` (Esc+Esc) is the single most important safety feature to internalize. Every edit Claude makes is snapshotted. You can always go back. This means you can be bold with experiments — try something ambitious, and if it doesn't work, two key presses and you're back where you started.

## Reference

- `/compact` — compress context; `/compact focus on X` for targeted compression
- `/rewind` or Esc+Esc — undo last action (restores both code and conversation)
- `/simplify` — bundled code quality skill
- Scheduled tasks use cron-style syntax within the session
- Official docs on advanced features: `reference/` directory
