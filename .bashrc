# My Bashrc
## If not running interactively, don't do anything
[ -z "$PS1" ] && return


# Run a file called '.bash_config', if you have one. I do.

if [ -f ~/.bash_config]; then
    . ~/.bash_config
fi

# Startup commands
# cd ~
#clear
date | #lolcat
printf "\n"

# Enable vi shortcuts/keybinds
set -o vi

# Runs your bash aliases.
# For me, all aliases are in ~/.bash_aliases, even default ones.

if [ -f ~/.bash_aliases ]; then
        . ~/.bash_aliases
fi
