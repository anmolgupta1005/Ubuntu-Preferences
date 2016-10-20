####################################################################################################################################################################################
# Section-I
# Newer versions of Ubuntu may already have these features

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


####################################################################################################################################################################################
# Section-II
# Self-added features for the terminal

#for git-completion
if [ -f ~/.git-completion.bash ]; then
	source ~/.git-completion.bash
fi

# Terminal format Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# commonly used ssh definitions.
if [ -f ~/.bash_ssh ]; then
    . ~/.bash_ssh
fi

#for git-configurations
if [ -f ~/.gitconfig ]; then
    source ~/.gitconfig
fi
comment

# git commands
alias commit="git add . &&  git commit -m \"AUTOCOMMIT `whoami`@`hostname`:`date`\""
alias push="git push origin master"
alias send="git add . &&  git commit -m \"AUTOCOMMIT `whoami`@`hostname`:`date`\" && git push origin master"


#customization to terminal prompt - Will overwrite the the default and the current PS1 values
PS1="\n\[\e[40;1;33m\]>> \[\e[0m\]"
####################################################################################################################################################################################
