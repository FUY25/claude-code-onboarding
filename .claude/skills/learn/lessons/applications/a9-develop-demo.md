# Application 9: Develop Demo / Prototype

## Explain

You have an idea for a product, a landing page, or an internal tool. Normally, turning that into something you can actually show people requires a developer, a design tool, or hours of fumbling with code. Claude can take a plain-English description and build a working HTML prototype -- something you can open in your browser, click through, and share. In seconds, not days.

We're going to take a website brief and turn it into a real, working page.

Sample: `samples/creative/website-brief.txt`

A product or website description -- the kind of brief you'd write for a designer or developer. Goals, audience, key sections, tone.

## Explore

First, let's see the brief. Open the creative samples folder:

```bash
open samples/creative/
```

Say: "Take a look at website-brief.txt in the folder that just opened — it's a plain-English description of a website: goals, audience, sections, tone. Just words on a page. Claude is about to turn it into a working, clickable prototype."

Wait for the user to look at the file, then proceed to Try.

## Try

> "Read `samples/creative/website-brief.txt`. Build a working prototype of this as an HTML page. Save it as `prototype.html`."

After Claude finishes, open the result in the browser:

```bash
open prototype.html
```

After the user sees the prototype in their browser (or types "skip"/"next"), show the debrief:

> Remember that plain-text brief you just saw — just a description of what the website should be? Claude read it, made design decisions, and built a complete HTML page with styling and layout. That's a clickable prototype from a written brief, in under a minute. No designer, no developer, no Figma — just describe and build!

Now try iterating: "Add a contact form" or "Make it responsive for mobile" or "Change the color scheme to dark mode" or "Add an animation to the hero section." Each change takes seconds. You describe, Claude builds, you steer.

## Knowhow

**The iteration loop is the real power move.** The first version Claude builds is a starting point, not the final product. The magic is in how fast you can iterate: "add a button," "make the header sticky," "change the font," "add a testimonials section."

Each iteration takes seconds. You don't need to know HTML, CSS, or JavaScript -- you just describe what you want in plain English and Claude modifies the code. Think of it like directing: you're the creative director, Claude is the developer who works at the speed of conversation.

This connects to the fundamentals: prompt craft and conversation flow (Tier 1, Lesson 1.2). You don't need the perfect prompt upfront. Start with what you want, see what Claude builds, then steer. The conversation IS the development process.

## Reference

- To open the HTML file: find it in Finder and double-click, or use `! open filename.html` from within Claude
- Claude writes standard HTML/CSS/JS -- the file works in any browser
- No server, deployment, or accounts needed -- the file runs locally on your computer
