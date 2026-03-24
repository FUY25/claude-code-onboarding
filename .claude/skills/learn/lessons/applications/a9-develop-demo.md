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

> "Read `samples/creative/website-brief.txt`. Build a complete personal portfolio webapp from this brief. Requirements:
> - Multi-section single-page app with smooth scroll navigation
> - Sticky top nav bar with links that highlight the active section as you scroll
> - Hero section: name, tagline, a subtle animated gradient background (slow color shift, nothing jarring)
> - About section: 2-col layout — short bio left, a placeholder avatar card right with years of experience, current status badge ('Available Sept 2026' in green)
> - Work section: 3 project cards in a grid — each card has title, one-line description, and a 'View case study →' button that opens a modal with a fuller description
> - Contact section: a working mailto form (Name, Email, Message fields) with client-side validation — empty fields show an inline error, successful 'send' shows a confirmation message
> - Color scheme: white background, dark text, muted blue accent (#4A7FA5) — matching the brief exactly
> - Fully responsive: mobile nav collapses to a hamburger menu
> - Save as `portfolio.html`"

After Claude finishes, open the result in the browser:

```bash
open portfolio.html
```

After the user sees the portfolio in their browser (or types "skip"/"next"), show the debrief:

> Scroll through it. Click a project card — the modal opens. Try the contact form with an empty field — validation kicks in. Resize the window — the nav collapses. That's a real portfolio site with navigation, modals, form validation, and responsive layout. From a plain-text brief, in one prompt. A freelance developer would charge thousands for this.

Now try iterating: "Add a dark mode toggle in the nav" or "Make the project cards filter by type (UX / Product / Mobile)" or "Add a 'copy email' button to the contact section." Each is one sentence away.

## Knowhow

**The iteration loop is the real power move.** The first version Claude builds is a starting point, not the final product. The magic is in how fast you can iterate: "add a button," "make the header sticky," "change the font," "add a testimonials section."

Each iteration takes seconds. You don't need to know HTML, CSS, or JavaScript -- you just describe what you want in plain English and Claude modifies the code. Think of it like directing: you're the creative director, Claude is the developer who works at the speed of conversation.

This connects to the fundamentals: prompt craft and conversation flow (Tier 1, Lesson 1.2). You don't need the perfect prompt upfront. Start with what you want, see what Claude builds, then steer. The conversation IS the development process.

## Reference

- To open the HTML file: find it in Finder and double-click, or use `! open filename.html` from within Claude
- Claude writes standard HTML/CSS/JS -- the file works in any browser
- No server, deployment, or accounts needed -- the file runs locally on your computer
