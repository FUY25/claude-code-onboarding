# Application 8: Design Doc / Implementation Plan

## Explain

A PRD says *what* to build. A design doc says *how* to build it. Writing one means making dozens of technical decisions -- architecture, data models, API design, tradeoffs -- and documenting them clearly enough that a team can execute. Claude can take a PRD and produce a detailed design doc with architecture diagrams, implementation phases, and explicit tradeoff analysis. It even scopes the work for your team size and timeline.

We're going to hand Claude a PRD and ask it to plan the entire implementation.

Sample: `samples/tech/sample-prd.md`

A product requirements document (could be the kind of output you'd get from Application 7). It defines the problem, the users, and what needs to be built -- but not how.

## Try

> "Read this PRD. Write a design doc with: system architecture, data model, API design, key technical decisions with tradeoffs, implementation phases with milestones, and risks. Assume a 2-person engineering team and a 6-week timeline."

After you run this, Claude produces a full design doc: system architecture broken into components, a data model with entity relationships, API endpoints with request/response formats, technical decisions with explicit "we chose X over Y because..." reasoning, phased implementation milestones scoped for two engineers over six weeks, and a risk register with mitigations.

That's a document that would normally take a senior engineer a full day or more to draft from scratch.

Encourage iteration: "Try asking me to 'change the timeline to 4 weeks and flag what gets cut,' 'add a section on monitoring and observability,' or 'rewrite the architecture for serverless instead of containers.'"

Type "skip" or "next" to move on.

## Knowhow

**Plan mode -- have Claude plan before it builds.** What you just did manually (ask Claude to plan) is built into Claude Code as a feature. When a task is complex, press **Shift+Tab** to switch to Plan mode. Claude lays out its approach step by step, you review and approve, then it executes.

This is especially powerful for multi-step tasks: instead of Claude diving straight into code or edits and potentially going down the wrong path, it shows you the plan first. You catch issues before any work is done, not after.

Think of it as the difference between a contractor who starts demolishing walls vs. one who shows you the blueprint first. Same idea.

This connects to the fundamentals: Shift+Tab cycles through permission modes (Tier 1, Lesson 1.3), and Plan mode is where you approve Claude's approach before it acts (Tier 1, Lesson 1.4).

## Reference

- Plan mode: Shift+Tab to cycle through Default, Auto-accept edits, Plan mode
- For complex projects, Plan mode saves significant rework time
- Check `reference/` docs in this repo for details on permission modes
