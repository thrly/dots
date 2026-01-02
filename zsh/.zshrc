# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Set CDPATH for quick cd to common dirs
export CDPATH=$HOME:$HOME/dev:$HOME/dots:$HOME/Documents/

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export XDG_CONFIG_HOME="$HOME/.config"

# set ozone electron apps to open with wayland
export ELECTRON_OZONE_PLATFORM_HINT="wayland"

# zsh theme
ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# enable command auto-correction.
ENABLE_CORRECTION="true"

# display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(
    # other plugins...
    git
    zsh-autosuggestions
    fast-syntax-highlighting
    zsh-autocomplete
    colored-man-pages
    zsh-vi-mode
  )

# set -o vi

source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/custom/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# Default programs
export BROWSER="firefox"
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi
export VISUAL='nvim'

# Aliases
alias zshconfig="nvim ~/dots/zsh/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias nvimconfig="nvim ~/dots/nvim/"
alias v="nvim ."

alias gtst="git status"
alias gtcm="git commit -m "
alias ghcl="gh repo clone "
alias lg="lazygit"

# useful for django dev
alias djmng="python manage.py"

alias ffx="firefox --new-window https://"
alias whatsapp="firefox --new-window https://web.whatsapp.com &"

function mkcd {
  if [ ! -n "$1" ]; then
    echo "Enter directory name"
  elif [ -d "$1" ]; then
    echo "$1 already exists"
  else
    mkdir $1 && cd $1
  fi
}

# Add Oh My Posh, with default config theme:
eval "$(oh-my-posh init zsh --config '~/dots/oh-my-posh/thrly.yaml')"

# Add Zoxide for cd alternative
eval "$(zoxide init zsh)"
alias cd="z"

# export MANPAGER="less -R --use-color -Dd+r -Du+b"

export sssn_DIRS="$HOME/dev:$HOME/work:$HOME/projects"


# OMP zsh-vi-mode integration / not currently in use
#
# _omp_redraw-prompt() {
#   local precmd
#   for precmd in "${precmd_functions[@]}"; do
#     "$precmd"
#   done
#
#   zle .reset-prompt
# }
#
# export POSH_VI_MODE="I"
#
# function zvm_after_select_vi_mode() {
#   case $ZVM_MODE in
#   $ZVM_MODE_NORMAL)
#     POSH_VI_MODE="N"
#     ;;
#   $ZVM_MODE_INSERT)
#     POSH_VI_MODE="I"
#     ;;
#   $ZVM_MODE_VISUAL)
#     POSH_VI_MODE="V"
#     ;;
#   $ZVM_MODE_VISUAL_LINE)
#     POSH_VI_MODE="V-L"
#     ;;
#   $ZVM_MODE_REPLACE)
#     POSH_VI_MODE="R"
#     ;;
#   esac
#   _omp_redraw-prompt
# }

timenow=$(date "+%A %m %Y %R")
echo "Hello, $USER \nIt's $timenow"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
