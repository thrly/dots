# dots

my dotfile configs: neovim, zsh, terminal

![Desktop Image](./img/desktop.png)

## Use

to use these dotfiles, clone to local, then run the relevant [symlinks](./symlinks) to link the files. System specific instructions below...

> [!NOTE]
> These are my personal dotfiles. Use them at your own risk...

## Linux / WSL

### (WSL)

Install Linux distro on WSL (I'm using Fedora): `wsl --install FedoraLinux-42`

### Clone this repo

clone this repo to `~/` then add manual symlinks from source (i.e. this repo) to link (i.e. the ~/.config/ directory) where needed (`.zshrc`, `nvim/`):
`ln -s ~/dots/source ~/.config/link`

### Quick install everything on a new Linux system

`sudo dnf install zsh git zsh nvim tmux ripgrep fzf fd gcc luarocks gh wget`

## zsh + oh-my-zsh + oh-my-posh

### Zsh setup for WSL

1. From Fedora (WSL), install zsh: `sudo dnf install zsh` and confirm version: `zsh --version`
2. Make zsh the default shell: (on Fedora): `sudo chsh $USER` and when prompted give the path: `/bin/zsh'
3. Restart terminal, check shell and version: `echo $SHELL && $SHELL --version`

### [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)

1. Install Oh My Zsh: `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
2. Remove the new .zshrc: `rm .zshrc`
3. Symlink to home: `ln -s ~/dots/zsh/.zshrc ~/.zshrc`

#### OMZ plugins

1. Fast syntax highlighting: `git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git \
${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting`

2. Autosuggestions: `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`

3. Autocomplete: `git clone https://github.com/marlonrichert/zsh-autocomplete ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autocomplete`

4. [zoxide](https://github.com/ajeetdsouza/zoxide?tab=readme-ov-file#installation) `curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh`

[zsh-vi-mode](https://github.com/jeffreytse/zsh-vi-mode) `git clone https://github.com/jeffreytse/zsh-vi-mode \
  $ZSH_CUSTOM/plugins/zsh-vi-mode`

This repo's [.zshrc](./zsh/.zshrc) file takes care of adding the plugins and sources.

### [Oh My Posh](https://ohmyposh.dev/docs/installation/linux) - aesthetic prompts

1. If not already there, `mkdir ~/bin`
2. Install Oh-My-Posh: `curl -s https://ohmyposh.dev/install.sh | bash -s`
3. Restart shell: `exec zsh`
4. Again, the .zshrc should take care of initialising OMP with my custom .yaml theme.

## Windows terminal

`settings.json` can be symlinked to: `$HOME/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json` or similar. In Powershell: [symlinks/link-win-terminal.ps1](./symlinks/link-win-terminal.ps1)
