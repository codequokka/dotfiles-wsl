# Set a file name that histories are saved
export HISTFILE=~/.zsh_history

# Set the number of histories are saved
export HISTSIZE=1000000 # In memory
export SAVEHIST=1000000 # In $HISTFILE

# Save history with beginning timestamp and elapsed time
setopt extended_history

# Share histories among zsh sessions
setopt share_history

# Don't save duplicated history
setopt hist_ignore_all_dups
 
# Don't save history in starting with a white space
setopt hist_ignore_space

# Trim needless white spaces
setopt hist_reduce_blanks

# Don't save histories with history command
setopt hist_no_store
