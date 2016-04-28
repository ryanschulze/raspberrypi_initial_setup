# ==================================================================
[ -z "$PS1" ] && return
# ------------------------------------------------------------------
export PATH="${PATH}:~/bin/"
export EDITOR=vim
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoreboth
export HISTFILESIZE=300000
export HISTSIZE=50000
# ==================================================================
# Entering a directory name as a bare word will change into that directory
shopt -s autocd
# Automatically correct off-by-one typing mistakes when changing directories
shopt -s cdspell
# Make Bash wrap text properly if the terminal size changes
shopt -s checkwinsize
# Store multi-line commands in shell history as one-liners for easy editing
shopt -s cmdhist
# Correct off-by-one typing mistakes when tab-completing directories
shopt -s dirspell
# Allow aliases to be expanded even in non-interactive sessions
shopt -s expand_aliases
# Enable fancy globbing functions
shopt -s extglob
# Enable the recursive glob (**) function
shopt -s globstar
# Don't clobber other sessions' changes to global history when exiting
shopt -s histappend
# Don't try to complete on empty lines
shopt -s no_empty_cmd_completion
# Globs won't consider case
shopt -s nocaseglob
# Globs will consider hidden files, too
shopt -s dotglob
# ==================================================================
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    export LS_OPTIONS='--color=auto --human'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'
alias tmux='tmux -2u'
alias bc='bc -ql'
alias nssh="ssh -o connecttimeout=10 -o stricthostkeychecking=no"
alias nscp="scp -o connecttimeout=10 -o stricthostkeychecking=no"
# ==================================================================
[ -r /etc/bash.prompt ] && source /etc/bash.prompt
### ==================================================================

