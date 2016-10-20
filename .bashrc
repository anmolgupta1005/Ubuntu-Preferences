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


#customization to terminal prompt - Will overwrite the the default and the current PS1 values
# I regurlary use
export PS1="\n\[\e[40;1;33m\]>> \[\e[0m\]"

# I also like the following configurations
#export PS1='\[\e[0;33m\]\u\[\e[0;31m\]@\[\e[0;36m\]\h\[\e[0;32m\]$(pwd)$\[\e[0m\] '
#export PS1="\[\e[0;33m\]\u\[\e[0;31m\]@\[\e[0;36m\]\h\[\e[0;32m\]:$(pwd)$\[\e[0m\] [\`if [ \$? = 0 ]; then echo -e \[\e[32m\]\"\\xE2\\x9C\\x93\"\[\e[0m\]; else echo -e \[\e[31m\]\"\\xE2\\x9D\\x8C\"\[\e[0m\]; fi\`]\n\$> "
#export PS1='\[\e[0;33m\]\u\[\e[0;31m\]@\[\e[0;36m\]\h\[\e[0;32m\]:$(pwd)$\[\e[0m\]\n\$>[\`if [ \$? = 0 ]; then echo -e \[\e[32m\]\"\\xE2\\x9C\\x93\"\[\e[0m\]; else echo -e \[\e[31m\]\"\\xE2\\x9D\\x8C\"\[\e[0m\]; fi\`] '
#export PS1='\[\e[0;33m\]\u\[\e[0;31m\]@\[\e[0;36m\]\h\[\e[0;32m\]:$(pwd)$\[\e[0m\]\n\$> '
#export PS1="\`if [ \$? = 0 ]; then echo \[\e[33m\]^_^\[\e[0m\]; else echo \[\e[31m\]O_O\[\e[0m\]; fi\`[\u@\h:\w]\\$ "
####################################################################################################################################################################################
