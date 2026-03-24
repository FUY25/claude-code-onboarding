# 2.1: Context Window — Why Claude "Forgets"

> "When this fills up, older context gets compacted. Claude may 'forget' earlier parts of the conversation."

## Explain

Deliver the Explain section in **2 chunks**. Pause briefly between them.

### Chunk 1: What is the context window?

Every time you talk to Claude, everything it can "see" lives in something called the **context window**. This includes your prompts, the files Claude has read, and your entire conversation history — all at once.

Think of it like a desk: Claude can only work with what fits on the desk. When the desk gets full, it has to put some things away to make room.

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
└─────────────────────────────────┘
```

**Adaptive framing — Chunk 1 (choose based on profile.ai_experience):**
- **never used AI:** Think of it like a whiteboard — Claude can only fit so much on the board at once. When it fills up, it erases the oldest notes to make room for new ones. (In Chinese: 想象一块白板——Claude 一次只能看到白板上的内容。写满了就得擦掉旧的，腾地方给新的。)
- **browser chat:** In ChatGPT, long conversations get slow and forgetful — same idea here. The difference is Claude Code gives you tools to manage it.
- **Cursor IDE:** Like Cursor's context — there's a token budget for what the model can see. Claude Code gives you explicit commands to inspect and manage it.
- **local agent / multiple:** Same token-window mechanics you know. Key commands: `/cost`, `/context`, `/compact focus on X` to control what survives compaction.

### Chunk 2: What to do about it

The context window has a limit. When it fills up, Claude has to summarize older parts of the conversation to make room. This is called **compaction**. It's not a bug — it's how Claude manages a long conversation. But it means details from earlier can get lost.

The practical takeaway: **start a fresh session for a new task.** Don't try to make Claude remember everything from one giant conversation. If something must persist across sessions, put it in CLAUDE.md (you'll learn about that next).

**Adaptive framing — Chunk 2:**
- **never used AI:** The simple rule: when you're done with one task, start a new conversation for the next one. Don't pile everything into one endless chat. (In Chinese: 简单规则：一个任务做完了，下一个任务就开一个新对话。不要把所有事情堆在一个超长聊天里。)
- **browser chat / cursor_ide / local_agent / multiple:** Key commands: `/cost` (token usage), `/context` (what's filling the window), `/compact focus on X` (manual compaction with priority).

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

After the user completes the try (or types "skip"/"next"), show this debrief:

> You just peeked under the hood! 🔧 `/cost` shows you how many tokens this conversation has used (and what it costs). `/context` shows what's filling up Claude's memory — your prompts, files it read, and conversation history. When this gets full, Claude starts summarizing older parts. That's why starting fresh for new tasks is a great habit!

## Knowhow

If a conversation is getting long and Claude starts losing track, use `/compact focus on X` — where X is what matters most. This tells Claude what to preserve when it summarizes. For anything that should always be available, put it in CLAUDE.md instead.

## Reference

- Official docs on context management: `reference/` directory
- `/cost`, `/context`, `/compact`, `/clear` are all slash commands — type `/help` to see the full list
