# 1.5: Error Recovery

> "Not 'Claude got the answer wrong' but real terminal errors — and how to fix them."

## Explain

Things will go wrong. That's normal. Here are the errors you'll actually hit and what to do about each one.

**"Permission denied"**
This means the file or folder is protected. You don't have access to read or write it. Common cause: trying to work in a system folder. Solution: work in your own folders (Desktop, Documents, or a project folder you created).

**"Command not found"**
Claude tried to run a program that isn't installed on your computer. This isn't dangerous — nothing happened. Claude will usually suggest how to install what's missing, or try a different approach.

**Network errors / model overloaded**
Sometimes the connection drops or the server is busy. Just try again. These fix themselves.

**Claude's answer is wrong**
Claude is helpful but not perfect. If the output isn't right:
- **Clarify:** "That's not what I meant. I want X instead of Y."
- **Iterate:** "Make it shorter" or "Focus on section 3 only."
- **Undo:** If Claude edited a file and you don't like the change, you can undo it (see below).

**Esc+Esc rewind — the real safety net.**
This is the most important thing in this lesson. Claude automatically takes a snapshot of your files before every edit. Press Esc twice to open a rewind menu.

How to trigger it: press the Esc key once, then press it again immediately. (It's the key in the top-left corner of your keyboard, labeled "esc".) When you do this, Claude pauses and shows you a list of recent checkpoints — each one is a moment just before Claude made a change. It looks like this:

```
┌─────────────────────────────────────────────┐
│  Rewind to a checkpoint?                    │
│                                             │
│  > Before editing prd-summary.md  (2 min)  │
│    Before creating findings.md    (5 min)  │
│    Before running analysis        (8 min)  │
│                                             │
│  Choose one to restore:                     │
│  [F] Files only  [C] Conversation  [B] Both │
└─────────────────────────────────────────────┘
```

Select a checkpoint and choose what to restore:
- **Files only** — undo the file changes, keep the conversation
- **Conversation** — rewind the chat, keep the files
- **Both** — restore everything to that moment

This is your undo button. You can always go back. Also available by typing `/rewind`.

**`rm` does NOT go to your Trash.**
When Claude deletes a file with `rm`, it's gone permanently — it doesn't go to your Mac's Trash. Always confirm delete operations. If you're unsure, say "explain first" at the permission prompt.

**Adaptive framing (choose based on profile.ai_experience):**

- **never used AI:** Errors look scary but they're usually harmless. The computer is just telling you "I can't do that" — not "something broke." And with Esc+Esc, you can always undo anything Claude changed. (In Chinese: 报错看着吓人，但其实基本无害。电脑只是在说"这个我做不了"——不是"出大事了"。而且按两下 Esc 就能撤销 Claude 做的任何改动，随时都能恢复原样。)
- **browser chat (ChatGPT/Claude/Gemini):** In browser AI, a wrong answer just means bad text. In Claude Code, a wrong action could mean a changed file. That's why Esc+Esc exists — it's like Ctrl+Z but for everything Claude did, including file edits and commands.
- **Cursor IDE:** Like Cursor's undo for AI edits, but Esc+Esc works across all file changes in a single action. It snapshots before every edit automatically — no need to stage or commit first.
- **local agent / multiple:** Automatic checkpointing before every file mutation. Esc+Esc or `/rewind` to restore. Note: `rm` bypasses Trash — there's no recoverability for deleted files outside the checkpoint system.

Concepts:
- "Permission denied" — what it means, what to do
- "Command not found" — what it means (harmless, nothing happened)
- Network errors / model overloaded — just try again
- Claude's answer is wrong — clarify, iterate, or undo
- Esc+Esc rewind — automatic snapshots before every edit, press Esc twice to undo
- Also available via `/rewind`
- `rm` does NOT go to your Trash — deleted files are gone permanently

## Try

Let's try the safety net. Ask Claude to edit a sample file, then undo it.

Present the profession-matched prompt. Check `profile.profession` and deliver:

- **Tech:** "Reorganize `@bug-report-draft.txt` with proper headers and sections."
- **Business:** "Reorganize `@business-plan-notes.txt` with proper headers and sections."
- **Creative:** "Reorganize `@campaign-brief.txt` with proper headers and sections."
- **PM:** "Reorganize `@prd-draft.txt` with proper headers and sections."
- **Research:** "Reorganize `@research-notes.txt` with proper headers and sections."

After Claude edits the file, press **Esc+Esc** to open the rewind menu. Choose to restore the file to its original state.

After the user completes the try (or types "skip" or "next"), explain what happened:

Claude edited the file, and then you undid it — the original is back exactly as it was. Claude took a snapshot before it touched anything. This works for every edit, every time. No matter what Claude changes, you can always go back. That's your safety net.

Type "skip" or "next" to move on.

## Knowhow

Esc+Esc is muscle memory worth building. Before you're comfortable with Claude, use it liberally — undo anything you're unsure about. The snapshots are free and automatic. There's zero cost to undoing and trying again.

## Reference

- `reference/checkpointing.md` — How automatic snapshots work
- `reference/troubleshooting.md` — Common errors and fixes
- `reference/permissions.md` — Permission denied and access issues
- `reference/security.md` — Safety model and file operations
