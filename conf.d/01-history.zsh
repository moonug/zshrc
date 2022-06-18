export HISTFILE="$HOME/.zsh_history"    # History filepath
export HISTSIZE=999999999               # Maximum events for internal history
export SAVEHIST=999999999               # Maximum events in history file
setopt HIST_SAVE_NO_DUPS                # Do not write a duplicate event to the history file.
setopt SHARE_HISTORY                    # share history across multiple zsh sessions
#setopt APPEND_HISTORY                  # append to history
#setopt INC_APPEND_HISTORY              # adds commands as they are typed, not at shell exit
setopt EXTENDED_HISTORY                 # timestamp in unix epoch time and elapsed time of the command
setopt HIST_EXPIRE_DUPS_FIRST           # expire duplicates first
setopt HIST_IGNORE_DUPS                 # do not store duplications
setopt HIST_FIND_NO_DUPS                # ignore duplicates when searching
setopt HIST_REDUCE_BLANKS               # removes blank lines from history
