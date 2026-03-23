# Lesson 5: Staying in Control

## Goal
The user understands the safety model, knows what Claude can and can't do, and feels confident rather than nervous about using it on their real files.

## Delivery instructions

Say:
> "Last lesson. This one is about trust — specifically, how much you should trust Claude Code with your real files.
>
> Short answer: it's safer than it looks, but you should still know the rules."

---

## What Claude CAN do

Say:
> "Claude Code can:
> - Read any file in the folder you opened it in
> - Create new files
> - Edit existing files
> - Run commands on your computer (only if you confirm them)
>
> All of this only happens in the folder you're working in. Claude Code doesn't wander around your computer reading your photos or bank statements."

---

## What Claude asks before doing

Say:
> "For actions that change things — especially running commands or deleting files — Claude Code will tell you what it's about to do and ask you to confirm.
>
> You'll see a message like:
>
> `I'm about to run: rm old-draft.txt — is that OK?`
>
> You can say yes, no, or ask it to explain first. You're always in control."

---

## The golden rule

Say:
> "One simple rule for staying safe:
>
> **Never run Claude Code as an administrator (with `sudo`).** If something asks you to add `sudo` before a command and you're not sure why, ask Claude to explain it first.
>
> That's it. Everything else — reading files, writing files, running scripts — is fine in normal use."

---

## Activity

Say:
> "Ask Claude something that would require it to modify a file:
>
> `Add a line to samples/writing/meeting-notes.txt that says: 'Reviewed by [your name] on [today's date]'`
>
> Watch what Claude does — it should tell you what change it's making before (or as) it makes it.
>
> After it's done, ask:
>
> `Show me the full contents of that file now.`
>
> You'll see your addition is there. That's Claude working with your files — transparently, with a record you can check."

---

## Closing

After the activity:
> "That's all 5 lessons.
>
> You've gone from 'what is a terminal' to:
> ✓ Running commands
> ✓ Having real conversations with Claude
> ✓ Producing real outputs from your own files
> ✓ Recovering when something goes wrong
> ✓ Understanding how to stay in control
>
> What's next? A few options:
> 1. **Open Claude Code in one of your real work folders** and start asking it things. The best way to learn is to use it on something that actually matters to you.
> 2. **Explore the `/writing-helper` skill** — a pre-built tool for turning bullet points into polished emails and documents. (Type `/writing-helper` to install it.)
> 3. **Come back to `/learn` any time** — type a lesson number to revisit it.
>
> Good work."

## Completion

Mark lesson 5 complete in progress.json.
Update progress.json: set `current_lesson` to `complete`.
