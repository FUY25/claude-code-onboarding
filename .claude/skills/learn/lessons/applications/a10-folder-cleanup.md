# Application 10: Tidy Up a Messy Folder

## Explain

Everyone has that folder -- a dumping ground of random files, duplicates, things named "final_v2_REAL.txt," and documents that should have been organized months ago. Cleaning it up manually is tedious: you have to open each file, figure out what it is, decide where it goes, and move it. Claude can scan the entire folder, tell you what's in there, propose an organization plan, and then execute it -- all while asking your permission before moving or deleting anything.

We have a deliberately messy folder ready for cleanup.

Sample: `samples/messy-folder/`

A folder with 10+ small files of different types: `.txt`, `.csv`, `.md`, `.json`, `.html`, `.log`, plus duplicates and misnamed files. Realistic chaos.

## Explore

First, let's see the mess. Open the messy folder:

```bash
open samples/messy-folder/
```

Say: "Take a look at the folder that just opened — files with random names, duplicates, mixed types, no organization. That's the 'before.' Claude is about to scan everything, figure out what each file actually is, and organize it."

Wait for the user to look at the mess, then proceed to Try.

## Try

> "Look at `samples/messy-folder/`. Tell me what's in there, suggest how to reorganize it, then do it. After you're done, save a summary of what you changed as `cleanup-report.md`."

After Claude finishes, open the folder and report to see the results:

```bash
open samples/messy-folder/
```

```bash
open cleanup-report.md
```

After the user sees the organized folder and report (or types "skip"/"next"), show the debrief:

> Remember the chaos you saw in that folder before — random file names, duplicates, no structure? Now look at it: organized into subfolders, duplicates removed, files renamed to make sense. And you approved every step — Claude asked permission before each move and delete. The cleanup report shows exactly what changed and why!

Now try iterating: "Also create a README.md listing what's in each subfolder" or "Rename files to follow a consistent naming convention" or "Find and remove any duplicates."

## Knowhow

**Safety first -- Claude asks before moving or deleting.** This is the most important lesson for file operations: `rm` is permanent. When Claude deletes a file, it does NOT go to your Trash. It's gone.

Always review the plan before saying yes. When Claude proposes moving, renaming, or deleting files, read the list carefully. Ask Claude to explain what it's about to do if anything is unclear. You can say "no" to any individual action, or ask Claude to modify the plan before executing.

A good habit: before any destructive operation, ask Claude "explain what you're about to do and what would be lost." This applies beyond folder cleanup -- any time Claude is about to modify or remove files, you should understand the consequences first.

This connects to the fundamentals: permissions and the yes/no prompt (Tier 1, Lesson 1.3), and knowing when NOT to let Claude act without review (Tier 1, Lesson 1.6).

## Reference

- Esc+Esc (or `/rewind`) can undo file changes if something goes wrong
- Claude reads file contents to understand them, not just filenames or extensions
- Permission prompts appear before any write, move, or delete operation
- Check `reference/` docs in this repo for details on file safety and permissions
