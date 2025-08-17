# Tmux Config + Sessionizer

This directory contains my tmux configuration (`tmux.conf`) and a small helper script called **`sessionize`**.

## Sessionize

`sessionize` is a lightweight tmux session manager that opens (or attaches to) a session with a standard three‑window layout:

- **nvim** — opens Neovim in the project root
- **term** — a regular shell
- **scratch** — an extra terminal window for experiments

### Features

- Reuses an existing session if it already exists, otherwise creates a new one.
- Prefers **windows (tabs)** by default; you can add splits later if you want.
- Optional **fzf + zoxide** integration:
  - `--pick` opens a fuzzy list of your most‑used directories (ranked by `zoxide` if installed).
  - Falls back to scanning `$SESSIONIZE_DIRS` for “project‑like” folders when zoxide isn’t available.

### Usage

```bash
# From inside a project
sessionize

# Open/create session for a given directory
sessionize ~/dev/my-project

# Explicit session name + directory
sessionize myproj ~/dev/my-project

# Fuzzy‑pick a project (zoxide + fzf)
sessionize --pick
```

### Installation

Clone your dots repo (example path `~/dots/tmux`) and symlink the script into `~/bin` (or another directory on your `$PATH`):

```bash
git clone https://github.com/yourusername/dots.git ~/dots
ln -s ~/dots/tmux/sessionize ~/bin/sessionize
chmod +x ~/dots/tmux/sessionize
```

Ensure `~/bin` is on your `$PATH`:

```bash
echo $PATH
# If needed, add this to your shell config (e.g., ~/.bashrc or ~/.zshrc)
export PATH="$HOME/bin:$PATH"
```

### Recommended tmux key bindings

Add these to your `tmux.conf`:

```tmux
# Pick a project with fzf/zoxide
bind P run-shell 'sessionize --pick'

# Prompt for a directory (or "name /path")
bind s command-prompt -p "session dir (or 'name /path'):" "run-shell 'sessionize %%'"
```

### Environment (optional)

- `SESSIONIZE_DIRS` — colon‑separated list of directories to scan when zoxide isn’t available. Example:
  ```bash
  export SESSIONIZE_DIRS="$HOME/dev:$HOME/work:$HOME/projects"
  ```

### Dependencies

- **Required:** [tmux](https://github.com/tmux/tmux)
- **Optional:** [fzf](https://github.com/junegunn/fzf), [zoxide](https://github.com/ajeetdsouza/zoxide)

---

With this setup you can jump into any project with a consistent tmux environment in a couple of keystrokes.
