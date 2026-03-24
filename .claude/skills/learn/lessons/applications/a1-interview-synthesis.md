# Application 1: User Interview Synthesis

## Explain

You just ran 5 user interviews. Each one is a wall of raw notes — half-finished sentences, tangents, contradictions, brilliant insights buried between small talk. Turning that into a coherent research report usually takes hours of reading, highlighting, cross-referencing, and writing.

Claude can read all 5 transcripts at once, find the patterns you'd find manually, and produce a structured report in seconds. The difference: it doesn't get tired, it doesn't miss the quote on page 3 that contradicts the one on page 7, and it shows you everything organized by theme instead of by person.

## Explore

First, let's see what we're working with. Open the interview files folder so you can see the raw materials:

```bash
open samples/interviews/
```

Say: "Take a look at the files in the folder that just opened — these are 5 raw interview transcripts, messy and unstructured. That's what Claude is about to turn into a structured research report."

Wait for the user to look at the files, then proceed to Try.

## Try

> "Read all the interview files in `samples/interviews/`. Synthesize them into a research report: common themes, key quotes, contradictions, and recommended next steps. Save the report as `interview-synthesis.md`."

After Claude finishes, open the result so the user can see it:

```bash
open interview-synthesis.md
```

After the user sees the result (or types "skip"/"next"), show the debrief:

> Remember those messy transcript files you just saw in the folder? Claude read all 5, identified recurring themes across every interviewee, pulled out the most important direct quotes, flagged contradictions, and wrote actionable next steps — all saved as a clean report you can share with your team. 🎯 That's hours of synthesis work done in seconds!

Now try iterating: "Change the format to a table of themes with supporting quotes" or "Add a section ranking themes by how many interviewees mentioned them" or "Make it shorter — executive summary only."

## Knowhow

**Prompt craft for synthesis: controlling what you get back.**

When you ask Claude to synthesize multiple documents, the quality depends on how specific your instructions are:

**Do:**
- Name the sections you want (themes, quotes, contradictions, next steps)
- Specify the format ("as a table", "as bullet points", "as a report with headers")
- Tell Claude what to leave out ("skip the small talk", "ignore scheduling discussions")
- Ask for evidence ("include direct quotes to support each theme")

**Don't:**
- Say "summarize these files" with no structure — you'll get a generic blob
- Assume Claude knows what matters to you — be explicit about priorities
- Skip the iteration step — your first prompt gets you 80% there, the follow-up gets you to 95%

This connects directly to the prompt craft formula from Fundamentals: **Context + Task + Format = Good Output**.

## Reference

For more on how Claude handles multiple files, see `reference/` docs on context management. Always spot-check that quotes are accurate by opening the original transcript files.
