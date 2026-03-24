# 3.2: Connect Claude to External Tools (MCP)

> "MCP lets Claude talk to external tools and services. You just gave Claude a new superpower with one line."

## Explain

By default, Claude works with files on your computer. But sometimes you need Claude to reach beyond your local files — fetch a webpage, query a database, or talk to an API. That's what **MCP (Model Context Protocol)** does.

MCP is a standard way for Claude to connect to external tools and services. Each connection is called an "MCP server" — a small program that bridges Claude to a specific capability. You add an MCP server with one command, and Claude gains a new ability.

```
┌──────────────────────────────────────────────┐
│              HOW MCP WORKS                   │
│                                              │
│   YOU ──→ Claude Code ──→ MCP Server ──→ 🌐  │
│                                              │
│   Without MCP:                               │
│   Claude can only see: 📁 your local files   │
│                                              │
│   With Fetch MCP:                            │
│   Claude can also see: 🌐 any webpage        │
│                                              │
│   With Database MCP:                         │
│   Claude can also see: 🗄️ your database      │
│                                              │
│   Each MCP server = one new superpower       │
│                                              │
│   ┌──────────┐    ┌──────────┐               │
│   │  Fetch   │    │ Database │    ...more     │
│   │  Server  │    │  Server  │               │
│   └────┬─────┘    └────┬─────┘               │
│        │               │                     │
│        ▼               ▼                     │
│     Webpages       Your data                 │
└──────────────────────────────────────────────┘
```

The simplest example: a **Fetch server** that lets Claude grab content from any URL. Once you add it, you can ask Claude to read a webpage, summarize an article, or check a live API — all from within your conversation.

You don't need to understand how MCP works under the hood. You just need to know: one command to add it, and Claude can use it immediately.

**Adaptive framing (choose based on profile.ai_experience):**
- **never used AI:** Think of MCP as giving Claude new senses. Without it, Claude can only see files on your computer. With a Fetch MCP, Claude can see webpages. With a database MCP, Claude can see your data. Each one opens a new door.
- **browser chat:** ChatGPT has plugins that connect to external services. MCP is similar — but you control exactly which connections are active, and they run on your computer, not in a cloud you can't see.
- **Cursor IDE:** Like Cursor's tool integrations, but standardized. MCP is an open protocol — any tool that speaks MCP works with Claude. Add once, use everywhere.
- **local agent / multiple:** Open protocol for tool integration. `claude mcp add` to register servers. Supports stdio and SSE transports. User-scoped (`-s user`) or project-scoped (`-s project`).

Concepts:
- MCP stands for Model Context Protocol — a standard for connecting Claude to external tools
- Each MCP server gives Claude a specific capability (fetching URLs, querying databases, calling APIs)
- You add an MCP server with a single terminal command
- MCP servers can be user-scoped (available in all projects) or project-scoped

## Try

Let's try the simplest MCP server — Fetch, which lets Claude grab content from any URL. Run this command in your terminal:

```
claude mcp add fetch -s user -- npx -y @anthropic/mcp-fetch
```

That's it — Claude can now read web pages. Try asking Claude: "Fetch https://news.ycombinator.com and tell me the top 3 stories right now."

After the user completes the try (or types "skip"/"next"), show this debrief:

> You just gave Claude a new superpower with one command! 🌐 Before adding the Fetch MCP, Claude could only see files on your computer. Now it can reach out to the internet and bring back live information. That's the power of MCP — each server you add unlocks a new capability.

## Knowhow

Start with the Fetch MCP — it's the most universally useful. Once you're comfortable, explore MCP servers for tools you already use (databases, project management, documentation platforms). The MCP ecosystem is growing fast.

## Reference

- Adding an MCP server: `claude mcp add <name> -s user -- <command>`
- Fetch MCP: `npx -y @anthropic/mcp-fetch`
- Official MCP docs and available servers: `reference/` directory
