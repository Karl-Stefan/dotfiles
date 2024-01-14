# ------------------------------------------------------------------------------------------------ #
# --- User .zshrc file --------------------------------------------------------------------------- #
# ------------------------------------------------------------------------------------------------ #
#

# --- Activate Starship prompt ------------------------------------------------------------------- #
eval "$(starship init zsh)"

# --- Add empty line after each command ---------------------------------------------------------- #
precmd() { precmd() { echo } }

# --- Enable vi-mode ----------------------------------------------------------------------------- #
bindkey -v

# --- Import dircolors --------------------------------------------------------------------------- #
test -r ~/.config/dir_colors && eval $(dircolors ~/.config/dir_colors)

# --- Autocomplete related settings -------------------------------------------------------------- #
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd 'v' edit-command-line

# --- zsh-autocomplete related settings ---------------------------------------------------------- #
source $XDG_DATA_HOME/zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
zstyle ':autocomplete:tab:*' add-ending no
zstyle ':chpwd:*' recent-dirs-file "$XDG_CACHE_HOME/zsh/chpwd-recent-dirs"
zstyle ':completion:*:*:*:*:warnings' format '%B%F{yellow}--- %F{white}no matches %F{yellow}---%f'
zstyle ':autocomplete:*' min-delay 0.25
bindkey '\t' menu-select "$terminfo[kcbt]" menu-select
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history


# ------------------------------------------------------------------------------------------------ #
# --- Shell aliases ------------------------------------------------------------------------------ #
# ------------------------------------------------------------------------------------------------ #

# --- Convenience -------------------------------------------------------------------------------- #
alias ..="cd .."
alias df="df -h"
alias icat="kitty +kitten icat --align left"
alias config="git --git-dir=$XDG_CONFIG_HOME/dotfiles --work-tree=$XDG_CONFIG_HOME"

# --- Remappings --------------------------------------------------------------------------------- #
alias vim="nvim"
alias cat="bat"
alias top="btop"

# --- Misc. colorize ----------------------------------------------------------------------------- #
alias eza="eza --color=auto --icons --group-directories-first"
alias bat="bat --theme=Nord"
alias ip="ip -color"
alias grep="grep --color=auto"
alias diff="diff --color=auto"

# --- Directory listing -------------------------------------------------------------------------- #
alias ls="eza --git"
alias ll="eza -l --git --time-style=long-iso"
alias lla="eza -la --git --time-style=long-iso"
alias la="eza -a --git"
alias tree="eza --tree"

# --- Set default terminal applications ---------------------------------------------------------- #
alias -s png=icat
alias -s jpg=icat
alias -s jpeg=icat
alias -s gif=icat
alias -s svg=icat
