# Claude Code Onboarding — Learn by Shipping

> From zero to building real things with AI — in one afternoon.

---

# Claude Code 新手入门 — 边做边学

> 从零开始，一个下午学会用 AI 真正做事。

---

## What is this? / 这是什么？

**EN:** This repo is an interactive onboarding experience for Claude Code. It walks non-technical people — step by step — from "what is a terminal" to building a real report, email, or website in one session.

**CN:** 这个仓库是 Claude Code 的互动新手教程。从「什么是终端」到用 AI 完成真实任务（生成报告、写邮件、建网站），每一步都有引导，不需要编程经验。

---

## Quick Start / 快速开始

```sh
curl -fsSL https://anthropics.github.io/claude-code-onboarding/start.sh | sh
```

That's it. The script installs the `/learn` skill and opens your onboarding session.

就这一行。脚本会自动安装 `/learn` 技能包并打开新手引导。

---

## What you'll build / 你会做出什么

- A formatted report from messy meeting notes
- A professional email from bullet points
- A personal website from a brief
- A data summary from a raw spreadsheet

---

## How it works / 原理

1. Run the install command above / 运行安装命令
2. Open a folder in Claude Code / 在 Claude Code 中打开任意文件夹
3. Type `/learn` and press Enter / 输入 `/learn` 回车
4. Answer 3 quick questions — Claude adapts the lessons to you / 回答 3 个问题，课程为你个性化定制

---

## Repo structure / 仓库结构

```
claude-code-onboarding/
  docs/              ← landing page (GitHub Pages)
  .claude/skills/    ← /learn skill + lessons
  samples/           ← realistic practice files
  prompts/           ← reusable prompt library
  test.sh            ← smoke test
```

---

## Platform / 平台

Phase 1: **macOS only.** Windows support coming in Phase 2.

第一阶段：**仅支持 macOS。** Windows 支持将在第二阶段推出。

---

## License

MIT
