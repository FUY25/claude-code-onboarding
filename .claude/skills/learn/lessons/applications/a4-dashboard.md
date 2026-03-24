# Application 4: Interactive Data Dashboard

## Explain

Dashboards usually mean Tableau licenses, Power BI setups, or hours wrestling with chart libraries. You have data, you want to see it visually, and you want to click around and filter it. That shouldn't require a subscription or a data engineering degree.

Claude builds you a fully interactive HTML dashboard — filters, clickable charts, summary panels — from a single prompt. The file runs entirely in your browser. No server, no deployment, no account needed. The HTML file IS the app. Double-click it, and it works.

Sample: `samples/data/dashboard-data.json`

A JSON dataset with structured business data — categories, time series, metrics. The kind of data you'd normally need a BI tool to visualize.

## Explore

First, let's see the raw data. Open the data folder:

```bash
open samples/data/
```

Say: "Take a look at dashboard-data.json in the folder that just opened — it's raw structured data with categories, time series, and metrics. Right now it's just numbers in a file. Claude is about to turn it into a fully interactive dashboard."

Wait for the user to look at the data, then proceed to Try.

## Try

> "Read `samples/data/dashboard-data.json`. Build an interactive HTML dashboard. Requirements:
> - Dark theme: #0f1117 background, white text, accent color #4488ff
> - Top row: 4 KPI cards (key metrics as big numbers with trend indicators — up arrow green, down arrow red)
> - Main area: a bar chart AND a line chart side by side, both interactive (hover tooltips showing exact values)
> - Below charts: a filterable data table — clicking a category in the chart highlights the corresponding rows in the table
> - Left sidebar: filter checkboxes by category; selecting/deselecting instantly updates both charts and the table
> - Smooth transitions when filters change (200ms ease)
> - No external dependencies — pure HTML/CSS/JS, works offline
> - Save as `dashboard.html`"

After Claude finishes, open the result in the browser:

```bash
open dashboard.html
```

After the user sees the dashboard in their browser (or types "skip"/"next"), show the debrief:

> Click the filters on the left — watch the charts and table update instantly. Hover over the bars — tooltips. That raw JSON file became a fully interactive data app. No Tableau, no Power BI, no backend. Just a single HTML file that runs anywhere.

Now try iterating: "Add a date range slider that filters the time series" or "Make the KPI cards clickable to drill into that category" or "Add an export button that downloads the filtered data as CSV."

## Knowhow

**What HTML is and why it matters: the file IS the app.**

When Claude builds you a dashboard, it creates an HTML file. Here's what you need to know:

- **HTML** is the language web browsers understand. Every website you've ever visited is HTML. When Claude creates an `.html` file, your browser knows exactly how to display it.
- **No server needed.** The dashboard Claude built runs entirely on your computer. Double-click the file (or drag it into Chrome/Safari/Firefox) and it just works. There's no "deploying" or "hosting" — the file itself is the complete application.
- **"localhost"** is a word you might see — it just means "this computer." When something runs on localhost, it's running locally, not on the internet. Claude's HTML files don't even need localhost — they open directly as files.
- **You can share it.** The HTML file is self-contained. Email it, put it in a shared drive, attach it to a Slack message. Anyone who opens it sees the same interactive dashboard.

This connects to the Fundamentals concept of how Claude Code operates on your files: Claude didn't send your data anywhere. It read the JSON file on your computer, wrote an HTML file on your computer, and everything stays local. Your data never left your machine.

## Reference

For more on how Claude generates interactive HTML applications, see `reference/` docs on file creation and code output. For advanced dashboards, you can ask Claude to use specific charting libraries (Chart.js, D3.js) or match specific design systems.
