# Tmux Config + Sessionizer

This directory contains my tmux configuration (`tmux.conf`) and a small helper script called **`sessionize`**.

## Sessionize

`sessionize` is a lightweight tmux session manager.  
It lets me quickly open or attach to a tmux session with a standard layout:

- **nvim** — opens Neovim in the project root
- **term** — a regular shell
- **scratch** — an extra terminal window for experiments

### Features

- Reuse an existing session if it already exists, otherwise create a new one.
- Works whether you prefer windows or splits (defaults to windows).
- Optional **fzf + zoxide** integration:
  - `--pick` opens a fuzzy finder of your most-used directories (ranked by `zoxide` if installed).
  - Falls back to scanning `$SESSIONIZE_DIRS` if zoxide is unavailable.

### Usage

```bash
# From inside a project
sessionize

# Open/create session for a given directory
sessionize ~/dev/my-project

# Explicit session name + directory
sessionize myproj ~/dev/my-project

# Fuzzy-pick a project (zoxide + fzf)
sessionize --pick
```
