# Application 4: Interactive Data Dashboard

## Explain

Dashboards usually mean Tableau licenses, Power BI setups, or hours wrestling with chart libraries. You have data, you want to see it visually, and you want to click around and filter it. That shouldn't require a subscription or a data engineering degree.

Claude builds you a fully interactive HTML dashboard — filters, clickable charts, summary panels — from a single prompt. The file runs entirely in your browser. No server, no deployment, no account needed. The HTML file IS the app. Double-click it, and it works.

Sample: `samples/data/dashboard-data.json`

A JSON dataset with structured business data — categories, time series, metrics. The kind of data you'd normally need a BI tool to visualize.

## Try

> "Build me an interactive HTML dashboard from this data. I want filters, clickable charts, and a summary panel. Make it look professional."

Open the HTML file Claude created in your browser. Click around — use the filters, hover over charts, look at the summary panel. That's a fully interactive dashboard built from your data in one prompt. No server running, no deployment step, no login. The file on your computer IS the working app.

Now try iterating: "Add a date range filter" or "Change the chart colors to match our brand (dark blue and orange)" or "Add a table below the charts showing the raw data." Each change takes seconds.

Type "skip" or "next" to move on.

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
