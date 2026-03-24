# Application 6: Academic Paper Reading

## Explain

Research papers are dense, jargon-heavy, and written for specialists. But the ideas inside them matter far beyond academia. Claude can read a full PDF paper and translate it into plain language -- explaining what problem the researchers tackled, what they found, and why it matters. You get the insights without needing years of domain training.

We're going to read one of the most influential computer science papers ever published -- the one that introduced the technology behind ChatGPT, Claude, and every modern AI system.

Sample: `samples/papers/NIPS-2017-attention-is-all-you-need-Paper.pdf`

"Attention Is All You Need" -- the 2017 paper that introduced the Transformer architecture. This is the foundation of modern AI. Don't worry if that sentence means nothing to you yet.

## Explore

First, let's see the source material. Open the papers folder:

```bash
open samples/papers/
```

Say: "Take a look at the PDF in the folder that just opened — it's a real academic paper, full of equations, diagrams, and technical jargon. Claude is about to read the whole thing and explain it in plain language."

Wait for the user to look at the file, then proceed to Try.

## Try

> "Read `samples/papers/NIPS-2017-attention-is-all-you-need-Paper.pdf`. Explain the key findings as if I'm a beginner with no CS background. What problem does it solve, why does it matter, and what are the limitations the authors admit? Save the explanation as `paper-explained.md`."

After Claude finishes, open the result:

```bash
open paper-explained.md
```

After the user sees the explanation (or types "skip"/"next"), show the debrief:

> Remember that dense academic PDF you just saw — equations, jargon, figures meant for specialists? Claude read all 15 pages and turned it into a plain-language breakdown you could discuss at dinner: the core problem, the solution, why it matters, and the limitations. All saved as a clean document you can reference anytime!

Now try iterating: "Now explain just the methodology" or "What would a critic say about this paper?" or "Explain the attention mechanism using a real-world analogy."

## Knowhow

**Use Claude as a research translator.** The trick is to ask for different *levels* of explanation, not just one summary.

Start broad: "Explain this paper to a beginner." Then zoom in: "Now explain just the methodology," or "What are the key equations and what do they mean?" Then go critical: "What would a skeptic say about this paper?" or "What has changed since this was published?"

You can also ask Claude to compare papers: "How does this approach differ from [other paper]?" or "What did this paper get wrong that we know now?"

This layered approach -- overview, then depth, then critique -- mirrors how researchers actually read papers. Claude just makes each layer accessible to anyone.

## Reference

- The paper itself: Vaswani et al., "Attention Is All You Need" (NeurIPS 2017)
- Claude can read PDFs directly -- no conversion needed. Just point it at the file.
- For deeper reading on Claude's file handling: check `reference/` docs in this repo
