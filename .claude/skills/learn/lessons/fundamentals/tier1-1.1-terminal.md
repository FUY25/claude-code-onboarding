# 1.1: Why Claude Code Lives in the Terminal

> "Claude Code runs in Terminal because that's where it gets full access to your files — read them, edit them, create new ones. It's where the real magic happens."

## Explain

Deliver the Explain section in **4 separate chunks** below. After each chunk, pause briefly and check understanding before continuing. Do NOT dump all chunks at once. Do NOT skip Chunk 4 — the screen-reading guide is essential for new users.

### Chunk 1: What is the Terminal?

The terminal (the black text window on your computer) is a text-based way to talk directly to your computer. It's been around for decades — every Mac has it built in.

Claude Code lives here because this is where it gets its superpowers. In a browser, an AI can only chat with you. In the terminal, Claude Code can reach into your folders, read your files, edit them, create new ones, and run programs. That's the difference between advice and action.

**How to open Terminal on Mac:** Press Cmd+Space (Spotlight), type "Terminal", hit Enter.

**Adaptive framing — Chunk 1 (choose based on profile.ai_experience):**

- **never used AI:** Think of the terminal as texting your computer — you type what you want, it does it. Claude Code is like a super-smart assistant that lives inside that text window. It can read your files, organize them, and create new ones for you. (In Chinese: 就像你在手机上跟一个超级助手对话，只不过这个助手不光会聊天，还能直接帮你整理文件、分析数据、做表格。)
- **browser chat (ChatGPT/Claude/Gemini):** You know how in the browser, AI can only talk about your files? Claude Code can actually touch them — read, edit, create. It's the difference between describing what you want and having someone do it.
- **Cursor IDE:** Like the AI in your editor, but not limited to code files. Claude Code works with any file type — documents, spreadsheets, PDFs — and it's not tied to an editor UI.
- **local agent / multiple:** You already know how local agents work with your files. Claude Code takes that further with a structured gather-act-verify loop and built-in safety (permission prompts before writes). The terminal is the interface, your folder is the workspace.

After delivering Chunk 1, say something like: "Make sense so far? The key idea is: Claude Code lives in the terminal because that's where it can actually DO things with your files — not just talk about them." Then continue to Chunk 2.

### Chunk 2: Your workspace

When you open Claude Code, it starts working in whatever folder you're currently in — that's its workspace. Right now you're in the course folder, which means Claude can see all the practice files we've prepared for you.

**Adaptive framing — Chunk 2:**
- **never used AI:** Think of it like opening a document in Word — you can only edit the file you opened. Claude Code is the same: it can only see the folder you're in. (In Chinese: 就像你打开 Word 只能编辑你打开的那个文件一样，Claude Code 只能看到你当前所在的文件夹里的东西。)
- **browser chat / cursor_ide / local_agent / multiple:** You know how context matters — Claude Code scopes to whatever folder you launch it in.

### Chunk 3: How Claude "thinks" — the agentic loop

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

**Adaptive framing — Chunk 3:**
- **never used AI:** It's like asking a coworker to do something — they go look at the files, make the changes, then come back and tell you what they did. They don't just guess. (In Chinese: 就像你请同事帮忙——他会先去看文件，然后动手改，改完再跟你汇报。不是凭空猜的。)
- **browser chat:** ChatGPT gives you text. Claude Code gives you text AND does the work — reads, edits, verifies, and reports back.
- **cursor_ide / local_agent / multiple:** The gather-act-verify loop with automatic tool use and self-correction.

### Bash permission prompts

**What are those "Bash" permission prompts?**

As you go through this course, you'll see prompts that say something like `Bash(mkdir -p ...)` or `Bash(cat > file.txt ...)`. These are **commands** — instructions that tell your computer to do something, like create a folder or save a file.

Claude uses these commands to do real work on your computer. Every time Claude wants to run one, it asks your permission first. You'll see a prompt like:

```
⏺ Bash(mkdir -p ~/.claude-onboarding)
  Allow? [Y/n]
```

**Just press Y (yes) to approve.** These are safe — Claude is just setting things up or saving your progress. If you ever want to know what a command does before approving, you can ask Claude to explain it.

You'll see these throughout the course. It's totally normal! 👍

### Chunk 4: Reading the screen while Claude works

When Claude is working on your request, you'll see things happening on screen. Here's what they mean:

```
┌─────────────────────────────────────────────┐
│        WHAT YOU SEE ON SCREEN               │
│                                             │
│  ⏺ Thinking...                             │
│    → Claude is figuring out what to do      │
│                                             │
│  ⏺ Reading file.txt                        │
│    → Claude is opening and reading a file   │
│                                             │
│  ⏺ Bash(command...)                        │
│    → Claude wants to run a command          │
│      (you'll approve or deny this)          │
│                                             │
│  ✻ Cooked for 12s                          │
│    → How long Claude spent working          │
│                                             │
│  Token count / cost display                 │
│    → How much of Claude's "memory" was      │
│      used (like data on your phone plan)    │
└─────────────────────────────────────────────┘
```

**Don't worry about the numbers.** The token count and cost display are just information — you don't need to do anything with them. Focus on what Claude is doing (reading, writing, running commands) and whether the results look right.

**Adaptive framing — Chunk 4:**
- **never used AI:** It's like watching a progress bar — you can see that something is happening. The numbers aren't important. Just wait for Claude to finish and show you the result. (In Chinese: 就像看进度条——你能看到 Claude 在忙着干活。那些数字不重要，等它做完给你看结果就好。)
- **browser chat / cursor_ide / local_agent / multiple:** Standard token/cost metrics. Check with `/cost` for details.

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

**IMPORTANT — wait for the user to complete the try.** Do NOT show the debrief below until AFTER the user has seen the actual results. Present the prompt, let them run it, let them see the output. Only THEN continue.

After the user completes the try (or types "skip" or "next"), show this debrief:

> Claude just scanned every file in this folder and described each one. It read the actual contents — not just the names. 🔍 That's the agentic loop in action: it gathered context (listed and read files) → took action (analyzed them) → verified (reported back to you). A browser AI would've asked you to paste the file list — Claude just went and looked!

## Knowhow

The folder you open Claude Code in matters — it defines what Claude can see and work with. Always start Claude Code in the right project folder. That's the single most important habit! 💡

**How to open Claude Code in a specific folder:**
- **Option 1:** Open Terminal (the black text window), type `cd ~/your-folder-name` to go to the folder, then type `claude` to start
- **Option 2:** In Finder, right-click any folder → "New Terminal at Folder", then type `claude`
- **Option 3:** Already inside Claude Code? Just say "cd into ~/some-folder" and Claude will move there for you

## Reference

- `reference/overview.md` — What Claude Code is and how it works
- `reference/quickstart.md` — Getting started guide
- `reference/how-claude-code-works.md` — The agentic loop in detail
- `reference/terminal-config.md` — Terminal setup and configuration
