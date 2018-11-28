# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ludwig/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
source  ~/powerlevel9k/powerlevel9k.zsh-theme

DEFAULT_USER="ludwig"
POWERLEVEL9K_COLOR_SCHEME='light'
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
# POWERLEVEL9K_SHORTEN_STRATEGY="truncate_to_unique"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir root_indicator vcs background_jobs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()#(status command_execution_time vcs root_indicator background_jobs)

# You can additionally have the cursor placed at the end of the line once you have selected your desired command from zsh's history by using the history-search-end function (typically located in /usr/share/zsh/functions/Zle/) and appending -end to the end of each line, like so:
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

alias ls='ls --color=auto'
alias aus='sudo shutdown now'
alias update='sudo pacman -Syyu'
alias cal='cal -w --color'
alias gist='git status'
alias gicm='git commit -m'
alias gihk='git checkout'

ttyctl -f
