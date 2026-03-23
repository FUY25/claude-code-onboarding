# Application 9: Develop Demo / Prototype

## Explain

You have an idea for a product, a landing page, or an internal tool. Normally, turning that into something you can actually show people requires a developer, a design tool, or hours of fumbling with code. Claude can take a plain-English description and build a working HTML prototype -- something you can open in your browser, click through, and share. In seconds, not days.

We're going to take a website brief and turn it into a real, working page.

Sample: `samples/creative/website-brief.txt`

A product or website description -- the kind of brief you'd write for a designer or developer. Goals, audience, key sections, tone.

## Try

> "Build a working prototype of this as an HTML page"

After you run this, Claude reads the brief, makes design decisions based on your description, and writes a complete HTML file with styling. Open it in your browser -- it's a real, working page. No server needed, no setup, no accounts. The file IS the prototype.

That's the wow moment: a written brief became a clickable prototype in under a minute.

Encourage iteration: "Now try steering it: 'add a contact form,' 'make it responsive for mobile,' 'change the color scheme to dark mode,' 'add an animation to the hero section.' Each change takes seconds. You describe, Claude builds, you steer."

Type "skip" or "next" to move on.

## Knowhow

**The iteration loop is the real power move.** The first version Claude builds is a starting point, not the final product. The magic is in how fast you can iterate: "add a button," "make the header sticky," "change the font," "add a testimonials section."

Each iteration takes seconds. You don't need to know HTML, CSS, or JavaScript -- you just describe what you want in plain English and Claude modifies the code. Think of it like directing: you're the creative director, Claude is the developer who works at the speed of conversation.

This connects to the fundamentals: prompt craft and conversation flow (Tier 1, Lesson 1.2). You don't need the perfect prompt upfront. Start with what you want, see what Claude builds, then steer. The conversation IS the development process.

## Reference

- To open the HTML file: find it in Finder and double-click, or use `! open filename.html` from within Claude
- Claude writes standard HTML/CSS/JS -- the file works in any browser
- No server, deployment, or accounts needed -- the file runs locally on your computer
