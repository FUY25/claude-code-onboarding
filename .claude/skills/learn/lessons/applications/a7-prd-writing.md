# Application 7: PRD Writing

## Explain

Product requirements documents take hours to write well. You have to pull together scattered meeting notes, customer feedback, and team ideas into a single coherent document with clear requirements, priorities, and success metrics. Claude can read all those messy inputs at once and synthesize them into a structured PRD -- with specific customer quotes threaded in as evidence.

We have three meeting note files from different sources: a CEO strategy meeting, a customer feedback call, and a team brainstorm session. Each has useful information, but none is organized for a PRD. Claude will pull them all together.

Sample: `samples/pm/`

Three files: `ceo-meeting-notes.txt` (strategic direction and priorities), `customer-feedback-call.txt` (real pain points and feature requests), `team-brainstorm.txt` (technical ideas and constraints). Raw meeting notes -- the kind you'd actually have after a busy week.

## Try

> "Read all the meeting notes in `samples/pm/`. Write a PRD with: problem statement, user personas, detailed requirements (must-have vs. nice-to-have), success metrics, risks, and a proposed timeline. Reference specific customer quotes where relevant."

After you run this, Claude reads all three files, identifies the common threads, and produces a structured PRD. Notice how it pulls customer quotes from the feedback call to justify requirements, uses the CEO's priorities to rank must-haves vs. nice-to-haves, and incorporates the team's technical constraints into the timeline and risks.

You just turned three sets of scattered notes into a document you could share with stakeholders.

Encourage iteration: "Try asking me to 'add a competitive analysis section,' 'make the requirements more specific,' or 'rewrite this for an engineering audience instead of leadership.'"

Type "skip" or "next" to move on.

## Knowhow

**Set up CLAUDE.md so Claude already knows your product.** Right now, Claude started from scratch -- it had no idea what your product is, who your users are, or what constraints you work under. But if you create a CLAUDE.md file in your project folder with that context, Claude reads it automatically every time.

Next time you write a PRD, Claude already knows your product, your user segments, your tech stack, and your team's conventions. You skip the "here's what we're building" preamble entirely.

This connects to the fundamentals: CLAUDE.md is your project's persistent memory. Put anything in there that Claude should always know -- product context, writing style, anti-patterns to avoid. (See Tier 2, Lesson 2.2 for the full breakdown.)

## Reference

- CLAUDE.md documentation: check `reference/` docs in this repo
- The `/init` command can generate a starter CLAUDE.md by scanning your project
- CLAUDE.md works at three levels: global, project root, and subdirectories
