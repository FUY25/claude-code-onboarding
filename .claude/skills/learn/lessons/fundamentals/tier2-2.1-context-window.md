# 2.1: Context Window — Why Claude "Forgets"

> "When this fills up, older context gets compacted. Claude may 'forget' earlier parts of the conversation."

## Explain

Every time you talk to Claude, everything it can "see" lives in something called the **context window**. This includes your prompts, the files Claude has read, and your entire conversation history — all at once.

The context window has a limit. When it fills up, Claude has to summarize older parts of the conversation to make room. This is called **compaction**. It's not a bug — it's how Claude manages a long conversation. But it means details from earlier can get lost.

The practical takeaway: **start a fresh session for a new task.** Don't try to make Claude remember everything from one giant conversation. If something must persist across sessions, put it in CLAUDE.md (you'll learn about that next).

**Adaptive framing (choose based on profile.ai_experience):**
- **never used AI:** Think of it like a whiteboard — Claude can only fit so much on the board at once. When it fills up, it erases the oldest notes to make room for new ones.
- **browser chat:** In ChatGPT, long conversations get slow and forgetful — same idea here. The difference is Claude Code gives you tools to manage it: `/cost`, `/context`, `/compact`.
- **Cursor IDE:** Like Cursor's context — there's a token budget for what the model can see. Claude Code gives you explicit commands to inspect and manage it.
- **local agent / multiple:** Same token-window mechanics you know. Key commands: `/cost`, `/context`, `/compact focus on X` to control what survives compaction.

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
- The context window holds your prompts, files Claude has read, and conversation history
- "Compact" means Claude summarizes old context to make room for new information
- Starting a new session for a new task is often better than continuing a long one
- `/clear` — start a fresh session (recommended between unrelated tasks)
- `/context` — see what's consuming your context window
- `/cost` — see token usage and costs
- `/compact focus on X` — manually trigger compaction and tell Claude what to preserve
- **Key insight: put persistent instructions in CLAUDE.md, not conversation.** Anything that must survive compaction belongs in CLAUDE.md, not in your chat history.

## Try

Type `/cost` to see your current usage. Then type `/context` to see what's filling your context window.

After completion, explain what happened. Type "skip" or "next" to move on.

## Knowhow

If a conversation is getting long and Claude starts losing track, use `/compact focus on X` — where X is what matters most. This tells Claude what to preserve when it summarizes. For anything that should always be available, put it in CLAUDE.md instead.

## Reference

- Official docs on context management: `reference/` directory
- `/cost`, `/context`, `/compact`, `/clear` are all slash commands — type `/help` to see the full list
