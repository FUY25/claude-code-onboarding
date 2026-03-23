# 2.3: Markdown and Diffs — Plain Text + Understanding What Changed

> "Claude works best with plain text files — especially markdown (.md). And when Claude edits a file, it shows you a 'diff' — a before-and-after view so you always know what changed."

## Explain

Claude works best with **plain text files**, especially markdown (`.md`). Markdown is a simple way to format text using symbols you already know — `#` for headings, `-` for bullet points, `**bold**` for bold. No menus, no toolbars. Just text with light formatting.

Why markdown over `.docx` or `.pdf`? Because Claude can read and write markdown naturally. A Word document is a compressed package of formatting data — Claude can't easily edit it. A markdown file is just text, which means Claude can read it, understand it, and rewrite it directly.

When Claude edits a file, it shows you a **diff** — a before-and-after view of exactly what changed. Learning to read diffs is a fundamental skill:

```
  - old line that was removed
  + new line that was added
    unchanged line for context
```

**Adaptive framing (choose based on profile.ai_experience):**
- **never used AI:** A diff is like "track changes" in a Word document — it highlights what was added and what was removed so you can review before accepting.
- **browser chat:** In ChatGPT, you just get new text and have to figure out what changed. Claude Code shows you exactly what it modified with a diff — red for removed, green for added. You approve or reject each change.
- **Cursor IDE:** Same diff view you know from Cursor/VS Code. Red/green, context lines, accept/reject per change.
- **local agent / multiple:** Standard unified diff format. Context lines show location. Accept/reject inline.

Concepts:
- Markdown basics: `#` for headers, `-` for lists, `**bold**`, `` `code` ``, ` ``` ` for code blocks
- Why `.md` over `.docx`/`.pdf` — Claude reads and writes plain text naturally
- How Claude reads and writes markdown without special tools
- Red/minus lines = removed, green/plus lines = added
- Context lines (unchanged) show where in the file the change happened
- How to approve or reject a change when Claude shows you a diff

## Try

**Profession-adapted prompts:**
- **PM:** "Add a 'Risks' section to `prd-draft.txt`."
- **Tech:** "Add a 'Known Limitations' section to `bug-report-draft.txt`."
- **Business:** "Add a 'Competitive Landscape' section to `business-plan-notes.txt`."
- **Creative:** "Add a 'Timeline' section to `campaign-brief.txt`."
- **Research:** "Add a 'Methodology Limitations' section to `research-notes.txt`."

Watch the diff — the red/minus lines are removed, the green/plus lines are added. You'll see exactly what Claude changed.

After completion, explain what happened. Type "skip" or "next" to move on.

## Knowhow

When Claude shows you a diff, you don't have to accept it all or reject it all. You can say "keep the new header but revert the second paragraph" — Claude will adjust. Diffs are a conversation, not a take-it-or-leave-it.

## Reference

- Markdown basics: headers (`#`), lists (`-`), bold (`**`), code (backticks), code blocks (triple backticks)
- Diff format: `-` removed, `+` added, plain lines = context
- Official docs on file editing and diffs: `reference/` directory
