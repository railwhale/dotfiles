# ~/.bashrc: Run by bash startup from ~/.profile, maybe by default if there is no ~/.profile

# My Bashrc
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac


# Run a file called '.bash_config', if you have one. I do.

if [ -f ~/.bash_config]; then
    . ~/.bash_config
fi

# If you have a custom colour config file (in your home), it will be run
if [ -f ~/.dir_colors ] then
       . ~/.dir_colors
fi

# Startup commands
cd ~  # I use this for chromium OS, it starts chronos in /
clear # Also for chromium OS, to clear away the crosh prompt, but also works fine for everything else
date | #lolcat # Shows the time and date of login, maybe with lolcat
printf "\n" # A line between the date and your prompt

# Enable vi shortcuts/keybinds
set -o vi

# Runs your bash aliases.
# For me, all aliases are in ~/.bash_aliases, even default ones.

if [ -f ~/.bash_aliases ]; then
        . ~/.bash_aliases
fi
