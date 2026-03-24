# 1.3: Permissions + Yes/No

> "Claude Code asks before doing anything risky. You're always the one who says yes or no."

## Explain

Claude Code has one important rule: it reads freely, but it asks before writing.

When Claude wants to create a file, edit a file, or run a command, it pauses and shows you a permission prompt. This is your checkpoint — you decide whether to let it proceed, say no, or ask it to explain what it's about to do first.

Here's what the permission prompt looks like:

```
┌─────────────────────────────────────┐
│  Claude wants to: Edit file         │
│  File: prd-summary.md              │
│                                     │
│  [Y] Yes  [N] No  [E] Explain      │
│                                     │
└─────────────────────────────────────┘
```

You have three choices:
- **Yes** — go ahead, do it
- **No** — stop, don't do that
- **Explain first** — tell me what you're planning before I decide

This means Claude can never silently change your files. You're always in control.

**Shift+Tab permission modes:** You can change how permissions work by pressing Shift+Tab. It cycles through three modes:

1. **Default** — Claude asks before every write action
2. **Auto-accept edits** — Claude edits files without asking (reads and commands still prompt)
3. **Plan mode** — Claude plans first, shows you the plan, and only acts after you approve

Start with Default. Move to the others once you're comfortable.

**Adaptive framing (choose based on profile.ai_experience):**

- **never used AI:** Think of it like a contractor who shows you a blueprint before starting work. They check with you at every step. You can say "go ahead," "stop," or "explain that first." Nothing happens without your approval. (In Chinese: 就像装修师傅动工前先给你看方案——每一步都跟你确认。你可以说"开始吧"、"等一下"、或者"先解释一下你要干嘛"。不经过你同意，什么都不会改动。)
- **browser chat (ChatGPT/Claude/Gemini):** In browser AI, everything is read-only — the AI just types back at you. Claude Code can actually change files, so it adds this safety layer. You see what it wants to do and approve each action.
- **Cursor IDE:** Like Cursor's diff approval, but applies to all file operations and shell commands, not just code edits. Same approve/reject workflow you're used to.
- **local agent / multiple:** Permissions are customizable per project. Default is conservative (ask before all writes). You can pre-approve specific tools or directories in settings. Shift+Tab cycles modes inline.

Concepts:
- Read vs. write: Claude reads freely, asks before writing or running commands
- How to say yes, no, or "explain first"
- The permission prompt — what it looks like, what it means
- Shift+Tab permission modes: Default → Auto-accept edits → Plan mode

## Try

This lesson has TWO try steps — one to see the permission prompt, one to try switching modes.

**Try Step 1: Trigger a permission prompt**

Present the profession-matched prompt. Check `profile.profession` and deliver:

- **Tech:** "Save those steps as `bug-summary.md`."
- **Business:** "Save those assumptions as `plan-summary.md`."
- **Creative:** "Save those segments as `audience-summary.md`."
- **PM:** "Save those requirements as `prd-summary.md`."
- **Research:** "Save those findings as `findings-summary.md`."

(This builds on the output from the previous lesson's Try step. Claude will ask permission before creating the file.)

After the user completes try step 1 (or skips), show the debrief:

> Claude asked for your permission before creating that file. You saw exactly what it wanted to do and chose to allow it. That prompt appears every time Claude wants to write, edit, or run something. Nothing happens behind your back! 🔒

**STOP and WAIT for the user to acknowledge before continuing to Try Step 2.**

**Try Step 2: Switch permission modes with Shift+Tab**

Now try this:

> Press **Shift+Tab** on your keyboard right now. You'll see the mode change at the top of the screen. Press it again to cycle through all three modes:
>
> 1. **Default** — asks before every write (you're probably on this now)
> 2. **Auto-accept edits** — Claude edits files without asking
> 3. **Plan mode** — Claude shows you a plan first, acts only after you approve
>
> Try pressing Shift+Tab a few times to see each mode, then set it back to **Default** for now.

After the user tries it (or skips), show the debrief:

> You just discovered one of the most powerful controls in Claude Code! 🎮 As you get more comfortable, you can switch to "auto-accept edits" to speed things up, or use "plan mode" when you want Claude to think before acting. For now, Default is perfect — it keeps you in the driver's seat.

## Knowhow

When you're unsure, choose "explain first." Claude will describe exactly what it plans to do — which files it will touch, what changes it will make — before you decide. It's the safest way to learn what Claude is about to do without any risk.

## Reference

- `reference/permissions.md` — Full permissions documentation
- `reference/security.md` — Security model and safety guarantees
- `reference/settings.md` — Customizing permission behavior
