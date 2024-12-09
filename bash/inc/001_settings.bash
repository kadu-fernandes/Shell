##### HISTORY
############################################################################

# Save 5,000 lines of history in memory
HISTSIZE=10000

# Save 2,000,000 lines of history to disk (will have to grep ~/.bash_history for full listing)
HISTFILESIZE=2000000

# Append to history instead of overwrite
shopt -s histappend

# Ignore redundant or space commands
HISTCONTROL=ignoreboth

# Ignore more
HISTIGNORE='ls:la:pwd:clear:reset:history'

# Set time format
HISTTIMEFORMAT='%F %T '

# Multiple commands on one line show up as a single line
shopt -s cmdhist

# Append new history lines, clear the history list, re-read the history list, print prompt.
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

##### OTHER
############################################################################

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# If set, minor errors in the spelling of a directory component in a cd command will be corrected.
shopt -s cdspell

# If set, Bash includes filenames beginning with a ‘.’ in the results of filename expansion.
shopt -s dotglob

# Auto change to a directory if it exists
shopt -s autocd

# Replace directory names with the results of word expansion when performing filename completion.
shopt -s direxpand

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

