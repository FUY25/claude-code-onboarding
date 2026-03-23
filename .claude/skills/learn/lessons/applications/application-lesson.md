# Application Lesson — Generic Template

This is the template for the hands-on project lesson (Track A Lesson 3 variant).
The SKILL.md routing selects the sample folder based on `profile.interest`.

## Sample → folder mapping

| interest | folder |
|---|---|
| writing | `samples/writing/` |
| data | `samples/data/` |
| creative | `samples/creative/` |

---

## Delivery instructions

### Step 1: Orient

Say:
> "Time to build something real. Open the `samples/<interest>/` folder — that's the project folder we'll work from today.
>
> Here's what's inside:"

Then read and describe the files in the mapped sample folder.

### Step 2: Suggest a task

Based on interest, offer a guided prompt:

**writing:**
> "Try this: 'Read meeting-notes.txt and turn it into a clean report with a summary, action items, and decisions made.'"

**data:**
> "Try this: 'Read sales.csv and give me: total revenue by product, best performing month, and any trends worth flagging.'"

**creative:**
> "Try this: 'Read website-brief.txt and write the full HTML for a personal portfolio site matching the brief.'"

### Step 3: Let them run it

Say:
> "Paste that prompt and press Enter. I'll do the rest."

Wait for Claude to complete the task. Do not interrupt.

### Step 4: Review together

After the output:
> "Look at what just happened. You gave me a messy input — notes, numbers, a brief — and I turned it into something polished.
>
> This is the core loop: you describe what you want, I produce it, you refine. No coding required."

### Step 5: First iteration

Say:
> "Now try changing something. Tell me: 'Make the tone more formal' or 'Add an executive summary at the top' or 'Use bullet points instead of paragraphs.'
>
> Iteration is free. There's no limit on how many times you can refine."

---

## Completion

Say:
> "You just shipped your first real project with Claude Code. That's Lesson 3 done.
>
> Lesson 4 is about building a habit — how to use Claude Code for things you do every week."

Update `~/.claude-onboarding/progress.json`:
```json
{"current_lesson": 4, "completed": [1, 2, 3]}
```
