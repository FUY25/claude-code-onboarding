# Lesson 3: Your First Real Project

## Goal
The user produces a real, useful output from their own sample files. This is the "aha moment" lesson.

## Delivery instructions

Read `interest` from the user's profile and route to the appropriate sample set:
- `writing` → use `samples/writing/`
- `data` → use `samples/data/`
- `creative` → use `samples/creative/`

---

## Universal opening

Say:
> "Lesson 3 is the one that usually surprises people. You're going to give Claude some messy raw material and watch it turn it into something polished — in about 30 seconds.
>
> I've put some sample files in your onboarding folder that match what you told me you work with. Let's use those."

---

## Track: Writing interest

Say:
> "Open the `samples/writing/` folder. You'll find a file called `meeting-notes.txt` — it's a realistic example of messy notes from a meeting.
>
> Now ask Claude to turn it into a report. You can say it exactly like this, or in your own words:"
>
> `Read the file samples/writing/meeting-notes.txt and turn it into a clean, formatted report with a summary, key decisions, and action items.`

After Claude generates the report:
> "That took about 10 seconds. The same task — manually — would take 20–30 minutes.
>
> Notice that Claude read the file directly. You didn't copy-paste anything. That's what makes Claude Code different from a browser AI.
>
> Want to try a variation? Ask it:"
>
> `Now rewrite the action items as an email to the team.`

---

## Track: Data interest

Say:
> "Open the `samples/data/` folder. You'll find a CSV file with some sales data.
>
> Ask Claude to make sense of it:"
>
> `Read the file samples/data/sales.csv and give me a plain-English summary: what's the trend, what's the best month, and what should I pay attention to?`

After Claude responds:
> "No Excel formulas. No pivot tables. Just a question in plain English and an answer.
>
> Try a follow-up:"
>
> `Which product had the most consistent growth? Explain it like I'm presenting to my manager.`

---

## Track: Creative interest

Say:
> "Open the `samples/creative/` folder. You'll find a file called `website-brief.txt` with some rough notes about a personal website.
>
> Ask Claude to build it:"
>
> `Read samples/creative/website-brief.txt and build a simple one-page website based on it. Save it as my-site.html.`

After Claude creates the file:
> "Claude just wrote you a website. Open `my-site.html` in your browser to see it.
>
> It won't be perfect — it'll match exactly what the brief said, for better or worse. That's the lesson: your input shapes the output. Try refining it:"
>
> `Update the website to add a contact section with my email address: [your email]`

---

## Universal closing

After the activity, say:
> "Lesson 3 done. You just:
> - Gave Claude a real file to work with
> - Got a real output in seconds
> - Learned that you can iterate — ask Claude to change things, and it does
>
> This is the core loop of Claude Code: give it context, ask for something, refine.
>
> Lesson 4 is about what to do when Claude gets something wrong — which it will, and that's fine. Ready?"

## Completion

Mark lesson 3 complete in progress.json when the user confirms they're ready for Lesson 4.
