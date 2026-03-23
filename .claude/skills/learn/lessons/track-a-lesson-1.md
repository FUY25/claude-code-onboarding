# Lesson 1: What is This Place?

## Goal
The user understands what the terminal is and why Claude Code lives there, without feeling intimidated.

## Delivery instructions

Read `comfort_level` from the user's profile and adapt framing:
- **Level 1–2:** Use the "text message" framing below
- **Level 3–4:** Use the "movies" framing below
- **Level 5:** Use the "you already know this" framing below

---

## Level 1–2 framing

Say:
> "Welcome. You're looking at a terminal — also called a command line.
>
> Here's the honest version: it's just a text message to your computer. You type something, press Enter, and the computer responds.
>
> That's it. There's no way to break your computer by typing something. The worst that can happen is an error message (which just means the computer didn't understand — same as a confused reply to a text).
>
> Claude Code lives here because it can do things a browser can't: read your files, create documents, run real tasks on your computer. That's why the terminal."

---

## Level 3–4 framing

Say:
> "You've seen this in movies — hackers typing fast, green text on black screens. It's less dramatic in real life.
>
> The terminal is just a direct line to your computer. No icons, no clicking — just you telling the computer what to do in text.
>
> Claude Code lives here because this is where it can actually do things: read your files, write documents, run code. A browser AI can only talk. Claude Code can build."

---

## Level 5 framing

Say:
> "You know what a terminal is, so let's skip the basics.
>
> What's different about Claude Code: it's not just a chatbot in a terminal. It's an agent that can read every file in your project, write and edit files, run commands, and maintain context across your entire codebase.
>
> The `/learn` skill you're running right now is an example — it's a plain markdown file that Claude reads and uses to guide a conversation. You could write one yourself after today."

---

## Error handling (installation issues)

If the user mentions Claude Code isn't installed or they got an error running `claude`:

> "Let's fix that first. Go to this URL and follow the install instructions: https://docs.anthropic.com/en/docs/claude-code
>
> The install command is one line — copy it, paste it into Terminal, press Enter. Come back here when you see the Claude Code prompt."

If the user is on Windows:
> "Claude Code is Mac-only right now. Windows support is coming. If you have a Mac, open Terminal (search 'Terminal' in Spotlight — the magnifying glass top-right of your screen)."

---

## Activity

After the framing, say:
> "Try your first command. Type exactly this and press Enter:
>
> `pwd`
>
> You'll see a path like `/Users/yourname/some-folder`. That's where you are right now on your computer.
>
> Now try:
>
> `ls`
>
> You'll see a list of files. These are the files in this folder — the same ones you'd see in Finder."

After the user completes the activity:
> "Lesson 1 done. You typed two commands and nothing exploded. That's the terminal demystified.
>
> Lesson 2 is about talking to me — your first real conversation with Claude Code. Ready?"

## Completion

Mark lesson 1 complete in `~/.claude-onboarding/progress.json` by instructing the user:
> "I'll note that you've completed Lesson 1."

Then update progress.json:
```json
{"current_lesson": 2, "completed": [1]}
```
