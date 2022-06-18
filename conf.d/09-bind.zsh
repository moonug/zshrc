bindkey "^[[3~" delete-char     # make delete key work
bindkey ';5D' backward-word     # ctrl+left
bindkey ';5C' forward-word      # ctrl+right
#
# search in history by up/down arrow
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
bindkey "${terminfo[kcuu1]}"  history-beginning-search-backward
bindkey "${terminfo[kcud1]}"  history-beginning-search-forward
