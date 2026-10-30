# quick-ai-fish

A tiny [fish](https://fishshell.com) function that lets you hand quick chores to an AI model in plain English, from whatever folder you're in.

```fish
ai move the files I just downloaded to the 2030s quiz folder
ai rename the files here to be shorter
```

## Install

Needs [Codex CLI](https://github.com/openai/codex) installed and signed in.

```fish
cp functions/*.fish ~/.config/fish/functions/
```

## Usage

| Command | What it does |
|---|---|
| `ai <task>` | Run a one-shot task in the current directory |
| `ai -r <reply>` | Answer the model's last question (resumes the latest session in this folder) |
| `ai -i <task>` | Open the full interactive Codex TUI for the task |

- Relative words like "here" and "these files" mean the current directory.
- A spinner shows the latest step while it works; only the final answer is printed.
- It won't delete or overwrite anything unless you explicitly ask.
- Quote the prompt if it has characters fish treats specially (`'`, `*`, `$`, `&`, …).

## Swapping the model

The model comes from `$ai_model` (default `gpt-6-luna`):

```fish
set -Ux ai_model <model>
```

Only Codex models work for now; the runner in `_ai_run.fish` calls `codex exec`.
