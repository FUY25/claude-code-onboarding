# 1.6: When NOT to Use Claude Code

> "Build trust through honesty."

## Explain

Claude Code is powerful, but it's not perfect. Knowing when NOT to use it is just as important as knowing how. Here are the real boundaries.

**Don't paste passwords or API keys into prompts.**
Anything you type into Claude Code gets sent to Anthropic's servers for processing. Treat it like any other cloud service — don't put secrets in it. If you need to work with a file that contains passwords, ask Claude to read the file (it can do that locally), but don't type the password directly into your prompt.

**Don't let Claude delete files you haven't backed up.**
`rm` is permanent. It does NOT go to your Mac's Trash. If Claude suggests deleting files, make sure you have a copy somewhere else first — or say "explain first" to understand what it plans to remove. When in doubt, say no.

**Don't trust Claude with math you haven't verified.**
Claude can do calculations, but it sometimes gets numbers wrong — especially complex math, statistics, or financial calculations. Always double-check numbers that matter. Claude is better used to set up the analysis (write a formula, create a spreadsheet) than to be the calculator itself.

**Don't run commands you don't understand with `sudo`.**
`sudo` means "run this as administrator" — it bypasses safety restrictions. If Claude suggests a command with `sudo` and you don't understand what it does, say no. Ask Claude to explain it first, or just skip it. You almost never need `sudo` for normal work.

**When in doubt: ask Claude to explain first.**
This is the golden rule. Before saying yes to anything you're unsure about, ask Claude: "Explain what you're about to do." It will describe the action in plain English. Then you decide.

**Adaptive framing (choose based on profile.ai_experience):**

- **never used AI:** These aren't scary warnings — they're just common sense. Like any tool, Claude works best when you know its limits. The "explain first" option is your best friend when you're learning.
- **browser chat (ChatGPT/Claude/Gemini):** In browser AI, the worst that happens is bad text. In Claude Code, the AI can act on your files, so the stakes are slightly higher. The same caution you'd use with any cloud service applies — don't share secrets, verify important numbers, and review before approving.
- **Cursor IDE:** Similar boundaries to Cursor — don't put secrets in prompts, review before accepting changes. The additional consideration: Claude Code can run shell commands, not just edit files, so the `sudo` warning matters more here.
- **local agent / multiple:** Standard operational security. Key points: no secrets in prompts (data transits to API), `rm` bypasses Trash, verify numerical outputs, and avoid blind `sudo`. The "explain first" option at permission prompts is the primary safety mechanism.

Concepts:
- Don't paste passwords or API keys into prompts
- Don't let Claude delete files you haven't backed up — `rm` is permanent
- Don't trust Claude with math you haven't verified
- Don't run commands you don't understand with `sudo`
- When in doubt: ask Claude to explain what it's about to do before saying yes

## Try

No try step for this lesson. These are principles to remember, not actions to practice. You'll apply them naturally as you use Claude Code.

## Knowhow

The single best habit: when the permission prompt appears and you're not sure, choose "explain first." Claude will tell you exactly what it plans to do in plain English. This one habit prevents every mistake listed above.

## Reference

- `reference/security.md` — Security model and data handling
- `reference/permissions.md` — Permission system and safety
- `reference/best-practices.md` — Recommended usage patterns
