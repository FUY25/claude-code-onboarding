# Application 2: CSV Data Analysis + Visualization

## Explain

You have a spreadsheet of sales data. You need to know which month performed best, whether things are trending up or down, and if anything looks off. Normally that means opening Excel, writing formulas, maybe trying to remember how pivot tables work, and then building charts by hand.

Claude reads the CSV directly, analyzes the numbers, answers your questions in plain English, and can even build you an interactive HTML page with charts — all from one prompt. No formulas, no spreadsheet skills required.

## Explore

Let's look at the raw data first. Open the data folder:

```bash
open samples/data/
```

Say: "Check out the sales.csv file in the folder that just opened — that's raw sales data with monthly revenue figures and product categories. Claude is about to analyze this and turn it into visual charts you can actually understand."

Wait for the user to look, then proceed to Try.

## Try

> "Read `samples/data/sales.csv`. Tell me: which month had the highest revenue, what's the quarter-over-quarter trend, and anything I should flag. Then create an HTML page with charts visualizing the key trends. Save it as `sales-analysis.html`."

After Claude finishes, open the result:

```bash
open sales-analysis.html
```

After the user sees the charts in their browser (or types "skip"/"next"), show the debrief:

> Look at that! 📊 Remember the raw CSV you saw in the folder — just rows of numbers? Claude read those numbers, computed the trends, flagged anomalies, and built you a complete interactive dashboard with charts. Open that HTML file anytime — it works standalone, no special software needed. That's the power of going from raw data to visual insight in one prompt!

Try iterating: "Add a chart showing month-over-month growth rate" or "Break it down by product category" or "Highlight the months where revenue dropped more than 10%."

## Knowhow

**How Claude does math: it writes code, not mental arithmetic.**

Claude doesn't calculate numbers in its head. When you ask it to analyze data, it writes Python code behind the scenes, runs it, and gives you the results. This is a good thing — code is precise and repeatable.

What this means for you:
- You can ask Claude to show the code: "Show me the code you used to calculate that."
- Claude can do aggregation, filtering, statistical analysis, and chart generation — the same operations you'd do in Excel, but automated.
- **Always verify numbers that matter.** If a number is going into a board deck or a financial decision, spot-check it against the source data.

## Reference

For more on how Claude processes data files and generates visualizations, see `reference/` docs on tool use. When working with important data, cross-check Claude's computed values against the original CSV.
