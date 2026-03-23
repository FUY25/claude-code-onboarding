---
name: Writing Reviewer
description: Reviews any written document for clarity, tone, structure, and grammar. Use when you want feedback on emails, reports, memos, or any professional writing.
---

## What This Skill Does

When the user asks you to review a piece of writing (or invokes `/sample-skill`), follow these steps:

## Steps

1. **Read the document** the user provides or references.

2. **Assess these four areas** and give 1-2 bullet points each:
   - **Clarity:** Is the main point obvious within the first two sentences? Are there vague or ambiguous phrases?
   - **Tone:** Is the tone appropriate for the audience? Flag anything too casual, too formal, or potentially harsh.
   - **Structure:** Does it flow logically? Are there missing sections, awkward transitions, or buried key points?
   - **Grammar & polish:** Typos, punctuation, run-on sentences, or awkward phrasing.

3. **Give an overall verdict** in one sentence — e.g., "Clear and professional, but the ask is buried in paragraph 3."

4. **Provide a revised version** with your suggested improvements applied.

## Output Format

```
## Review

**Clarity:** [bullets]
**Tone:** [bullets]
**Structure:** [bullets]
**Grammar:** [bullets]

**Verdict:** [one sentence]

## Suggested Revision

[revised text]
```

## Tips

- If the user mentions an audience (e.g., "for my manager", "for a client"), tailor your tone feedback to that audience.
- Keep feedback actionable — say what to change, not just what's wrong.
- If the writing is already strong, say so. Don't invent problems.
