# Application 3: HTML Slides / Presentation

## Explain

You have a rough outline for a presentation. Turning it into polished slides usually means opening PowerPoint, fighting with layouts, picking fonts, aligning text boxes, and spending more time on formatting than on content. And then someone asks you to change the theme.

Claude takes your outline and generates a complete HTML presentation — styled, structured, and ready to open in any browser. No PowerPoint, no Keynote, no Google Slides account needed. Just a file on your computer that looks professional. And when you want to change the style, you just ask.

Sample: `samples/creative/presentation-outline.txt`

A rough presentation outline with key talking points, data references, and section headers. The kind of notes you'd jot down before building a deck.

## Explore

First, let's see what we're working with. Open the creative samples folder:

```bash
open samples/creative/
```

Say: "Take a look at the presentation-outline.txt file in the folder that just opened — it's a rough set of notes with talking points and section headers. That's what Claude is about to turn into a polished, styled presentation."

Wait for the user to look at the file, then proceed to Try.

## Try

> "Read `samples/creative/presentation-outline.txt`. Turn this outline into a polished HTML presentation with 3 slides: a title slide, the key points, and a summary with next steps. Use a clean dark theme. The audience is senior leadership — keep it concise and data-driven. Save it as `presentation.html`."

After Claude finishes, open the result in the browser:

```bash
open presentation.html
```

After the user sees the presentation in their browser (or types "skip"/"next"), show the debrief:

> Remember that rough outline you just saw — bullet points, half-formed ideas, no formatting? Claude turned it into a complete, styled HTML presentation with a title slide, content slide, and summary — all formatted for an executive audience. Open that file anytime in any browser, no PowerPoint needed. That's a presentation-ready deck from raw notes, in seconds!

Now try iterating: "Change to a light theme with blue accents" or "Add a fourth slide with a comparison table" or "Make it friendlier — this is for a team all-hands, not the board." Each change takes seconds.

## Knowhow

**Controlling tone, style, and audience in your prompts.**

Notice how much the prompt above packed in: theme ("clean dark"), audience ("senior leadership"), tone ("concise and data-driven"), and structure ("3 slides: title, key points, summary"). Claude responds to all of these cues, and they dramatically change the output.

Here's what you can control:
- **Tone words:** "concise", "data-driven", "friendly", "formal", "casual", "inspiring" — Claude adapts its writing style to match.
- **Audience specification:** "for executives", "for beginners", "for engineers", "for customers" — Claude adjusts complexity, jargon level, and what it emphasizes.
- **Style instructions:** "clean dark theme", "minimalist", "bold and colorful", "corporate" — Claude applies these to visual output like HTML.
- **Structure constraints:** "3 slides", "no more than 5 bullet points per slide", "include a data table" — Claude follows structural guardrails.

**Iteration is cheap.** Don't try to get the perfect prompt on the first try. Start with what you want, look at the output, then ask for changes. "Make it shorter", "change the tone", "add a section" — each iteration takes seconds, not minutes. This connects to the Fundamentals concept that Claude Code is a conversation, not a one-shot tool.

## Reference

For more on how Claude generates HTML and handles style instructions, see `reference/` docs on file creation and code output. You can open any HTML file Claude creates by double-clicking it or dragging it into your browser.
