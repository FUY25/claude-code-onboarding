# Design System — Claude Code Onboarding

## Product Context
- **What this is:** An interactive onboarding landing page for non-technical Claude Code users
- **Who it's for:** Marketers, students, business owners — people intimidated by the terminal
- **Space/industry:** Developer tools / AI onboarding, targeting Twitter and 小红书 audiences
- **Project type:** Marketing / landing page (GitHub Pages)

## Aesthetic Direction
- **Direction:** Warm Wireframe — the sketch IS the style, not a placeholder. Dashed borders are a deliberate motif, not a limitation. Everything reads as "drawn with intention on warm paper."
- **Decoration level:** Intentional — dashed borders, annotation-style red text, and `·` separators as texture. No gradients, no blobs, no icons in colored circles.
- **Mood:** Approachable, non-threatening, human. A non-technical person should feel "I can do this" within 3 seconds. Not a developer tool. Not a startup landing page. More like a well-designed instruction booklet.

## Typography
- **Display / Headings:** Plus Jakarta Sans 700 — warm, geometric, slightly rounded letterforms. Signals "someone chose this" without screaming "designer." Friendly for non-technical audiences.
- **Body / UI:** Plus Jakarta Sans 400/500 — one font family keeps the wireframe simplicity. Weight alone creates hierarchy.
- **Code / Commands:** IBM Plex Mono 400/500 — clean, system-y. The `curl` command feels like part of the page.
- **CJK (Chinese page, Phase 2):** Noto Sans SC + PingFang SC fallback
- **Loading:** Google Fonts CDN
- **Scale:** 11px captions · 12px small · 13px–14px UI · 16px–18px body · 22px h2 · 24px–32px h1

## Color
- **Approach:** Restrained — one amber accent, everything else warm neutrals
- **Background:** #faf9f6 — warm paper, not cold grey. Makes dashed borders read as "drawn" rather than "default."
- **Surface (cards):** #ffffff
- **Primary text:** #1c1917 — warm near-black, not harsh #333
- **Muted text:** #78716c — warm grey for subtitles, labels, card body
- **Subtle muted:** #a8a29e — flow step numbers, difficulty labels
- **Borders:** #d6d3cd — warm pencil lines. Used for all borders including dashed hero.
- **Accent:** #b45309 (amber) — used ONLY on the highlight column header and primary CTA. Zero developer-tool cliché. Says "handmade" to a non-technical audience.
- **Annotation red:** #bb4444 — teacher's margin note style. Already in the original wireframe — preserved as a feature.
- **Code background:** #f0eeea — warm off-white for code blocks
- **Dark mode:** Not implemented in Phase 1

## Spacing
- **Base unit:** 8px
- **Density:** Comfortable
- **Scale:** follows existing wireframe rhythm — no changes to padding/margin values

## Layout
- **Approach:** Grid-disciplined
- **Max content width:** 900px
- **Border radius:** 6px for cards, 0 for dashed hero border (square = more sketch-like), 6px for CTA buttons
- **Dashed borders:** 1px dashed — hero section and flow diagram only

## Motion
- **Approach:** None — the wireframe aesthetic is static

## Decisions Log
| Date | Decision | Rationale |
|------|----------|-----------|
| 2026-03-23 | Initial design system created | Created by /design-consultation |
| 2026-03-23 | Plus Jakarta Sans over system-ui | Warm, geometric, chosen — elevates the wireframe from accidental to intentional |
| 2026-03-23 | IBM Plex Mono for code | Cleaner than JetBrains Mono, system-y feel matches wireframe |
| 2026-03-23 | Amber #b45309 accent | Distinctive — every dev tool uses blue/purple. Amber says "handmade" to non-tech audience. |
| 2026-03-23 | Warm palette (#faf9f6 bg, #d6d3cd borders) | Cold greys make dashed borders look accidental; warm greys make them look deliberate |
| 2026-03-23 | Comparison table over 3-column cards | Table with ✓/✗ is more scannable at a glance for non-technical users |
| 2026-03-23 | English-only page | Chinese page is Phase 2 (separate page, same design system) |
