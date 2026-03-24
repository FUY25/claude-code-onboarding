# 1.1: Why Claude Code Lives in the Terminal

> "Claude Code runs in Terminal because that's where it can actually touch your files — read them, edit them, create new ones. A browser AI can only talk. Claude Code can do."

## Explain

The terminal (the black text window on your computer) is a text-based way to talk directly to your computer. It's been around for decades — every Mac has it built in.

Claude Code lives here for one reason: this is where it gets its superpowers. In a browser, an AI can only chat with you. In the terminal, Claude Code can actually reach into your folders, read your files, edit them, create new ones, and run programs. That's the difference between advice and action.

When you open Claude Code, it starts working in whatever folder you're currently in — that's its workspace. Right now you're in the course folder, which means Claude can see all the practice files we've prepared for you.

**How to open Terminal on Mac:** Press Cmd+Space (Spotlight), type "Terminal", hit Enter.

**How Claude "thinks" — the agentic loop:**

Claude doesn't just answer questions. Every time you ask it something, it runs a loop:

```
  ┌──────────────────────────────────────┐
  │         THE AGENTIC LOOP             │
  │                                      │
  │   1. GATHER CONTEXT                  │
  │      Read files, check the folder,   │
  │      understand the situation         │
  │              ↓                        │
  │   2. TAKE ACTION                     │
  │      Edit a file, run a command,     │
  │      create something new             │
  │              ↓                        │
  │   3. VERIFY RESULTS                  │
  │      Check if the action worked,     │
  │      fix if needed, report back       │
  │              ↓                        │
  │      (repeat if needed)              │
  └──────────────────────────────────────┘
```

It's investigating, acting, and checking its own work — not just generating text.

**Adaptive framing (choose based on profile.ai_experience):**

- **never used AI:** Think of the terminal as texting your computer. You type what you want, it does it. Claude Code is a very smart assistant that lives inside that text window — it can read your files, organize them, and create new ones for you.
- **browser chat (ChatGPT/Claude/Gemini):** You know how ChatGPT can only talk? Claude Code is like that, but it can actually touch your files — read them, edit them, create new ones. It's the difference between describing what you want and having someone do it.
- **Cursor IDE:** Like the AI in your editor, but not limited to code files. Claude Code works with any file type — documents, spreadsheets, PDFs — and it's not tied to an editor UI.
- **local agent / multiple:** Same idea as other local agents, but with a gather-act-verify loop and built-in safety (permission prompts before writes). The terminal is the interface, your folder is the workspace.

Concepts:
- Terminal is how you talk directly to your computer
- Claude Code operates in whatever folder you open it in — that's its workspace
- How to open Terminal on Mac: Cmd+Space → "Terminal" → Enter
- The agentic loop: gather context → take action → verify results
- Claude isn't just answering questions — it's investigating, acting, and checking its own work

## Try

You just received this project folder. Let's see what Claude Code can do with it.

Type this prompt:

> "What's in this folder? List every file and explain what each one does."

Watch how Claude reads the folder structure and explains each file — it's not guessing, it's actually looking at your files.

After the user completes the try (or types "skip" or "next"), explain what happened:

Claude just scanned every file in this folder and described each one. It read the actual contents — not just the names. That's the agentic loop in action: it gathered context (listed and read files), took action (analyzed them), and verified (reported back to you). A browser AI would have asked you to paste the file list.

Type "skip" or "next" to move on.

## Knowhow

The folder you open Claude Code in matters. It defines what Claude can see and work with. Always open it in the right project folder — that's the single most important habit.

## Reference

- `reference/overview.md` — What Claude Code is and how it works
- `reference/quickstart.md` — Getting started guide
- `reference/how-claude-code-works.md` — The agentic loop in detail
- `reference/terminal-config.md` — Terminal setup and configuration
