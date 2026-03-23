# Application 6: Academic Paper Reading

## Explain

Research papers are dense, jargon-heavy, and written for specialists. But the ideas inside them matter far beyond academia. Claude can read a full PDF paper and translate it into plain language -- explaining what problem the researchers tackled, what they found, and why it matters. You get the insights without needing years of domain training.

We're going to read one of the most influential computer science papers ever published -- the one that introduced the technology behind ChatGPT, Claude, and every modern AI system.

Sample: `samples/papers/NIPS-2017-attention-is-all-you-need-Paper.pdf`

"Attention Is All You Need" -- the 2017 paper that introduced the Transformer architecture. This is the foundation of modern AI. Don't worry if that sentence means nothing to you yet.

## Try

> "Read this paper. Explain the key findings as if I'm a beginner with no CS background. What problem does it solve, why does it matter, and what are the limitations the authors admit?"

After you run this, Claude will read the full PDF and produce a plain-language breakdown: the core problem (translating between languages was slow and sequential), the solution (a new architecture that processes everything in parallel using "attention"), why it mattered (dramatically faster and better results), and what the authors flagged as limitations.

You just turned a 15-page academic paper into something you can discuss at dinner.

Encourage iteration: "Try asking me to 'now explain just the methodology' or 'what would a critic say about this paper?' or 'explain the attention mechanism using a real-world analogy.'"

Type "skip" or "next" to move on.

## Knowhow

**Use Claude as a research translator.** The trick is to ask for different *levels* of explanation, not just one summary.

Start broad: "Explain this paper to a beginner." Then zoom in: "Now explain just the methodology," or "What are the key equations and what do they mean?" Then go critical: "What would a skeptic say about this paper?" or "What has changed since this was published?"

You can also ask Claude to compare papers: "How does this approach differ from [other paper]?" or "What did this paper get wrong that we know now?"

This layered approach -- overview, then depth, then critique -- mirrors how researchers actually read papers. Claude just makes each layer accessible to anyone.

## Reference

- The paper itself: Vaswani et al., "Attention Is All You Need" (NeurIPS 2017)
- Claude can read PDFs directly -- no conversion needed. Just point it at the file.
- For deeper reading on Claude's file handling: check `reference/` docs in this repo
