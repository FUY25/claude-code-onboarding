# Application 5: Financial Statement Analysis

## Explain

Earnings reports are dense. 30+ pages of tables, footnotes, segment breakdowns, and management commentary. Reading one takes time. Comparing it to last year takes more time. Spotting the anomalies that actually matter — the margin compression, the cash flow gaps, the segment that quietly shrank — takes experience and patience.

Claude reads the entire PDF in seconds. It can pull out the numbers you care about, compare year-over-year performance, flag what looks unusual, and summarize it all in the format you need. It's like having a junior analyst who reads instantly and never misses a line item.

Sample: `samples/papers/TSLA-Q4-2025-Update.pdf`

Tesla's Q4 and FY2025 earnings report — a real public document with revenue breakdowns, margin data, segment performance, and cash flow statements.

## Explore

First, let's see the source material. Open the papers folder:

```bash
open samples/papers/
```

Say: "Take a look at the Tesla earnings PDF in the folder that just opened — it's a dense financial document with tables, charts, and footnotes. That's what Claude is about to read and analyze in seconds."

Wait for the user to look at the file, then proceed to Try.

## Try

> "Read `samples/papers/TSLA-Q4-2025-Update.pdf`. Give me: (1) overall revenue and margin performance vs. last year, (2) which business segment grew fastest and which shrank, (3) any anomalies or red flags worth digging into — unusual expense jumps, margin compression, cash flow vs. net income gaps. Summarize as if you're briefing a portfolio manager. Save the analysis as `earnings-analysis.md`."

After Claude finishes, open the result:

```bash
open earnings-analysis.md
```

After the user sees the analysis (or types "skip"/"next"), show the debrief:

> Remember that dense PDF you just saw — pages of tables, footnotes, and financial jargon? Claude read the entire thing, extracted the key metrics, compared them year-over-year, identified which segments grew and which declined, and flagged potential red flags — all structured as a portfolio manager briefing and saved as a clean report. That's 30-60 minutes of analyst work done in seconds!

Now try iterating: "Dig deeper into the energy segment margins" or "Compare the cash flow statement to net income — are there any red flags?" or "Rewrite this for a retail investor, not a portfolio manager."

## Knowhow

**Structuring financial analysis prompts like an analyst.**

The prompt above worked well because it was structured the way a financial analyst thinks. Here's the pattern:

- **Be specific about what to compare.** "Revenue and margin performance vs. last year" is much better than "how did they do?" Specify the metrics, the time periods, and the baselines.
- **Ask about thresholds and anomalies.** "Unusual expense jumps, margin compression, cash flow vs. net income gaps" tells Claude exactly what kind of red flags to look for. Without this, you get a generic summary.
- **Specify the audience.** "As if you're briefing a portfolio manager" changes the depth, the language, and what gets emphasized. A portfolio manager wants risk signals and comparables. A retail investor wants simpler language and context.
- **Claude reads PDFs directly.** No need to convert to text or copy-paste tables. Point Claude at the PDF file and it reads the whole thing — tables, charts, footnotes, and all.

**Always cross-check the numbers.** This is critical for financial analysis. Claude is very good at reading and extracting data from PDFs, but when a number matters — when it's going into a model, a report, or a decision — open the source PDF and verify it. This connects to the Fundamentals principle: don't trust Claude with math you haven't verified.

## Reference

For more on how Claude reads PDFs and handles financial documents, see `reference/` docs on file reading capabilities. For financial analysis, always verify Claude's extracted numbers against the source document, especially for figures that will inform investment decisions or financial reporting.
