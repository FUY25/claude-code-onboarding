# Application 1: User Interview Synthesis

## Explain

You just ran 5 user interviews. Each one is a wall of raw notes — half-finished sentences, tangents, contradictions, brilliant insights buried between small talk. Turning that into a coherent research report usually takes hours of reading, highlighting, cross-referencing, and writing.

Claude can read all 5 transcripts at once, find the patterns you'd find manually, and produce a structured report in seconds. The difference: it doesn't get tired, it doesn't miss the quote on page 3 that contradicts the one on page 7, and it shows you everything organized by theme instead of by person.

Sample: `samples/interviews/`

Five raw interview transcript files — messy, unstructured, realistic notes from user research sessions. Each one is a different person with different opinions, pain points, and suggestions.

## Try

> "Read all the interview files in `samples/interviews/`. Synthesize them into a research report: common themes, key quotes, contradictions, and recommended next steps."

After you run this, look at what happened. Claude just read 5 separate documents, identified the recurring themes across all of them, pulled out the most important direct quotes, flagged where interviewees disagreed with each other, and wrote actionable next steps — all organized into a structured report. That's hours of synthesis work done in seconds.

Now try iterating: "Change the format to a table of themes with supporting quotes" or "Add a section ranking themes by how many interviewees mentioned them" or "Make it shorter — executive summary only."

Type "skip" or "next" to move on.

## Knowhow

**Prompt craft for synthesis: controlling what you get back.**

When you ask Claude to synthesize multiple documents, the quality of the output depends on how specific your instructions are. Here are the do's and don'ts:

**Do:**
- Name the sections you want (themes, quotes, contradictions, next steps)
- Specify the format ("as a table", "as bullet points", "as a structured report with headers")
- Tell Claude what to leave out ("skip the small talk", "ignore scheduling discussions")
- Ask for evidence ("include direct quotes to support each theme")

**Don't:**
- Say "summarize these files" with no structure — you'll get a generic blob
- Assume Claude knows what matters to you — be explicit about priorities
- Skip the iteration step — your first prompt gets you 80% there, the follow-up gets you to 95%

This connects directly to the prompt craft formula from Fundamentals: **Context + Task + Format = Good Output**. For synthesis tasks, "Format" is especially important because you're combining multiple sources and need to tell Claude how to organize the result.

## Reference

For more on how Claude handles multiple files and long documents, see `reference/` docs on context management and file reading capabilities. When synthesizing research, always spot-check that quotes are accurate by opening the original transcript files.
