# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export XDG_CONFIG_HOME="$HOME/.config"

# zsh theme
ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(
    # other plugins...
    git
    zsh-autosuggestions
    fast-syntax-highlighting
    zsh-autocomplete
    colored-man-pages
    # zsh-vi-mode
  )

source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/custom/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

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
alias vvv="nvim ."

alias gtst="git status"
alias gtcm="git commit -m "
alias ghcl="gh repo clone "
alias lg="lazygit"

# Add Oh My Posh, with default config theme:
eval "$(oh-my-posh init zsh --config '~/dots/oh-my-posh/thrly.yaml')"

# Add Zoxide for cd alternative
eval "$(zoxide init zsh)"

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
