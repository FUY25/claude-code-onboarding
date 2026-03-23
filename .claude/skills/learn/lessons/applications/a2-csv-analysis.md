# Application 2: CSV Data Analysis + Visualization

## Explain

You have a spreadsheet of sales data. You need to know which month performed best, whether things are trending up or down, and if anything looks off. Normally that means opening Excel, writing formulas, maybe trying to remember how pivot tables work, and then building charts by hand.

Claude reads the CSV directly, analyzes the numbers, answers your questions in plain English, and can even build you an interactive HTML page with charts — all from one prompt. No formulas, no spreadsheet skills required.

Sample: `samples/data/sales.csv`

A sales dataset with monthly revenue figures, product categories, and other business metrics. Real enough to show meaningful trends and anomalies.

## Try

> "Read this CSV. Tell me: which month had the highest revenue, what's the quarter-over-quarter trend, and anything I should flag. Then create an HTML page with charts visualizing the key trends."

Look at what just happened. Claude read the raw data, computed the answers to your specific questions, flagged things you might not have noticed, and then generated a complete HTML page with visual charts. Open that HTML file in your browser to see the charts — it's a standalone page, no special software needed.

Try iterating: "Add a chart showing month-over-month growth rate" or "Break it down by product category" or "Highlight the months where revenue dropped more than 10%."

Type "skip" or "next" to move on.

## Knowhow

**How Claude does math: it writes code, not mental arithmetic.**

Here's something important to understand: Claude doesn't calculate numbers in its head. When you ask it to analyze data, it writes Python code behind the scenes, runs it, and gives you the results. This is actually a good thing — code is precise and repeatable, unlike mental math.

What this means for you:
- You can ask Claude to show you the code it wrote: "Show me the code you used to calculate that." This lets you verify its logic.
- Claude's code can do things like aggregation, filtering, statistical analysis, and chart generation — the same operations you'd do in Excel, but automated.
- **Always verify numbers that matter.** If a number is going into a board deck or a financial decision, spot-check it against the source data. Claude is very accurate, but critical numbers deserve a second look.

This connects to the Fundamentals concept of permissions: Claude asks before creating files (like that HTML chart page). You always see what it's about to do and can say yes or no.

## Reference

For more on how Claude processes data files and generates visualizations, see `reference/` docs on tool use and code execution. When working with important data, cross-check Claude's computed values against the original CSV.
