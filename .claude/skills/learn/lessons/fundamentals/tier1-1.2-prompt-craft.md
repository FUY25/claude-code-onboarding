# 1.2: Your First Prompt + Prompt Craft

> "The clearer your request, the better Claude's output. Give context."

## Explain

The most important skill in using Claude Code is knowing how to ask well. The good news: you just use plain English. No special commands, no programming syntax.

But there's a difference between a vague ask and a clear one. Here's the formula:

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

The good prompt has three parts: it points to a specific file (context), says exactly what to extract (task), and specifies the output format (format). That's it. Context + Task + Format.

**@ file references:** Type `@` followed by a filename to reference files directly in your prompt. Claude uses fuzzy matching — you don't need the exact path. `@prd` will find `prd-draft.txt`. This is the fastest way to point Claude at specific files.

**It's a conversation:** You don't need perfect prompts. Start with what you want, then refine. Say "make it shorter" or "add a table" or "actually, focus on the budget section." Claude remembers the context and you can steer it as you go.

**Multiline input:** For longer prompts, use `\` + Enter or Option+Enter to write across multiple lines without sending.

**Adaptive framing (choose based on profile.ai_experience):**

- **never used AI:** Think of it like giving instructions to a new teammate. "Read this file, pull out X, Y, Z, and format it as a table" works better than "help me with this." The more specific you are, the less back-and-forth you need.
- **browser chat (ChatGPT/Claude/Gemini):** Same prompting skills you already have, plus one superpower: you can point Claude directly at files with `@filename` instead of copy-pasting content into a chat box. No more "here's my document: [wall of text]."
- **Cursor IDE:** Like Cursor's inline prompts, but you can reference any file type — not just code. And `@` works with fuzzy matching across your whole project.
- **local agent / multiple:** Standard prompt engineering applies. The key differentiator is `@` file references with fuzzy matching and the ability to iterate in conversation without losing context.

Concepts:
- Plain English works — no special syntax needed
- More context = better output
- Specify format when it matters (bullet points, table, markdown)
- You can reference files by name — Claude reads them directly
- `@` file references with fuzzy matching for fast file targeting
- It's a conversation — start rough, then refine and iterate
- Multiline input: `\` + Enter or Option+Enter for line breaks

## Try

Present the profession-matched prompt. Check `profile.profession` and deliver:

- **Tech:** "Read `@bug-report-draft.txt` and list the missing reproduction steps."
- **Business:** "Read `@business-plan-notes.txt` and pull out the revenue assumptions."
- **Creative:** "Read `@campaign-brief.txt` and list the target audience segments."
- **PM:** "Read `@prd-draft.txt` and list the requirements that are missing success metrics."
- **Research:** "Read `@research-notes.txt` and list the key findings with their evidence strength."

After the user completes the try (or types "skip" or "next"), explain what happened:

Claude just read a real file, analyzed its content, and extracted exactly what you asked for — structured and organized. Notice how the `@` reference pointed Claude straight to the file. You gave it context (the file), a task (find what's missing), and an implicit format (a list). That's prompt craft in action.

Type "skip" or "next" to move on.

## Knowhow

You can always iterate. If Claude's first answer isn't quite right, just say "make it more specific" or "group them by priority" or "add examples." Each follow-up builds on what Claude already knows from the conversation. Your first prompt doesn't need to be perfect — it just needs to be a starting point.

## Reference

- `reference/interactive-mode.md` — How to interact with Claude Code
- `reference/best-practices.md` — Prompt engineering tips
- `reference/keyboard-shortcuts.md` — Input shortcuts including multiline
