# ------------------------------------------------------------------------------------------------ #
# --- User .zshenv file -------------------------------------------------------------------------- #
# ------------------------------------------------------------------------------------------------ #

# --- Import user environemnt variables to shell context ----------------------------------------- #
export $(/usr/lib/systemd/user-environment-generators/30-systemd-environment-d-generator)

# --- Set up shell history ----------------------------------------------------------------------- #
HISTFILE="$XDG_STATE_HOME/zsh/history"
HISTFILESIZE=1000000000
HISTSIZE=1000000000
SAVEHIST=1000000000

setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt inc_append_history     # add commands to HISTFILE in order of execution
setopt share_history          # share command history data
