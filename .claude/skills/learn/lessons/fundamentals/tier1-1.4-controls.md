# 1.4: Essential Controls

> "The things you need to survive."

## Explain

Before you go further, here are the controls that keep you in charge. These are the buttons and commands you'll use every session.

**Stop Claude mid-response: Ctrl+C**
If Claude is going on too long or heading in the wrong direction, press Ctrl+C. It stops immediately. No harm done — just ask again differently.

**Exit Claude Code:**
Type `/exit` or press Ctrl+D to leave Claude Code and return to your normal terminal.

**Get help: /help**
Type `/help` to see a list of all available commands. It's your cheat sheet.

**Session resume:**
- `claude -c` — continues your last conversation right where you left off
- `claude -r` — shows you a list of past sessions so you can pick one to resume
You never lose your work. Every conversation is saved.

**Model switching:**
- `/model` — change which AI model Claude uses mid-conversation. Different models have different strengths and costs.
- `/fast` — toggles faster output mode (same model, quicker responses)

**Plan mode: Shift+Tab**
Press Shift+Tab to cycle into Plan mode. In this mode, Claude plans what it's going to do and shows you the plan before acting. Useful for bigger tasks where you want to review the approach first.

**Paste images: Ctrl+V / Cmd+V**
You can paste screenshots directly into Claude. Claude can see and understand images — useful for sharing error messages, designs, or anything visual.

**API key vs. Anthropic auth:**
Claude Code can run with either an API key (you pay per use) or Anthropic account authentication (if you have a subscription). Either way works — you set this up once during installation.

**Adaptive framing (choose based on profile.ai_experience):**

- **never used AI:** Think of these as the basic buttons on a remote control. Stop, exit, help, and resume. You don't need to memorize them all now — just know they exist and come back when you need them. (In Chinese: 把这些当成遥控器上的基本按钮——暂停、退出、帮助、继续。不用现在全记住，知道有这些功能就行，用到的时候回来查。)
- **browser chat (ChatGPT/Claude/Gemini):** You know how in browser AI there's no "stop" button mid-generation, and you lose the chat if you close the tab? Claude Code has Ctrl+C to stop anytime, and `claude -c` to resume right where you left off. Much more control.
- **Cursor IDE:** Similar to Cursor's Cmd+. to stop generation. The key additions: session resume across terminal restarts, model switching mid-conversation, and Plan mode for reviewing before executing.
- **local agent / multiple:** Standard controls. Notable: Shift+Tab plan mode, `-c`/`-r` session resume, and `/model` for runtime model switching. Image pasting works via clipboard.

Concepts:
- Ctrl+C to stop Claude mid-response
- How to exit Claude Code (`/exit` or Ctrl+D)
- `/help` for available commands
- Session resume: `claude -c` (last session), `claude -r` (pick a session)
- Model switching: `/model` to change models, `/fast` for faster output
- Plan mode: Shift+Tab to cycle into it
- Paste images: Ctrl+V / Cmd+V for screenshots
- API key vs. Anthropic auth — just enough to get working

## Try

Try these three things right now:

1. **Press Ctrl+C while Claude is responding.** (Start any prompt, then press Ctrl+C before it finishes.) Claude stops immediately. No damage done.
2. **Type `/help`.** Scan the list of commands — you don't need to memorize them, just know they're there.
3. **Type `/model`.** You'll see the available AI models. Try switching to a different one — this changes which model powers Claude for the rest of the conversation.

After the user completes the try (or types "skip" or "next"), explain what happened:

Ctrl+C is your emergency brake — it stops Claude instantly. `/help` is your cheat sheet with all commands. And `/model` lets you swap AI models on the fly — some are faster, some are smarter, some cost less. Between these three, you can always stop what's happening, find what you need, and customize your setup. 🎛️ Everything else (session resume, plan mode) you'll pick up naturally as you use Claude Code more.

## Knowhow

`claude -c` is your best friend. Closed the terminal by accident? Laptop restarted? Just type `claude -c` and you're back in your last conversation with all the context intact. You never lose your work.

## Reference

- `reference/cli-reference.md` — All CLI commands and flags
- `reference/keyboard-shortcuts.md` — Keyboard shortcuts reference
- `reference/interactive-mode.md` — Interactive mode controls
- `reference/model-config.md` — Model configuration and switching
- `reference/fast-mode.md` — Fast mode details
