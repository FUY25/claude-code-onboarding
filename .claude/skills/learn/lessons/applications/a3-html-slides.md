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

> "Read `samples/creative/presentation-outline.txt`. Turn this into a polished HTML presentation. Requirements:
> - Dark theme: near-black background (#0f1117), white text, electric blue accent (#4488ff)
> - Keyboard navigation: left/right arrow keys to move between slides, smooth fade transition between slides
> - Slide counter bottom-right on every slide (e.g. '2 / 8')
> - Title slide: big bold headline centered, with a subtle radial gradient behind it
> - Data slides: render key numbers (MAU, revenue, NPS, churn) as styled stat cards — large number, small label, left accent border in the blue
> - One slide must include a styled comparison table (quarterly metrics vs. target) with color-coded cells (green = beat, red = missed)
> - Thin footer bar on every slide: company name left, slide counter right
> - Save as `presentation.html`"

After Claude finishes, open the result in the browser:

```bash
open presentation.html
```

After the user sees the presentation in their browser (or types "skip"/"next"), show the debrief:

> Look at that — bullet notes turned into a keyboard-navigable deck with stat cards, color-coded tables, and slide transitions. Press the arrow keys to move between slides. This is a real presentation you could run from right now, from a plain text file, in one prompt.

Now try iterating: "Add a subtle progress bar across the top" or "Make the stat cards animate in on slide load" or "Change to a light theme with the same blue accent." Each takes seconds.

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
