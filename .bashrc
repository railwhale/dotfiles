# ~/.bashrc: Run by ~/.bash_profile or ~/.profile 

# My Bashrc
# Contents:
# Interactive check
# Run ~/.bash_config
# Run ~/.dir_colors
# Run ~/.bash_aliases
# Some startup commands


# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Run a file called '.bash_config', if it exists
if [ -f ~/.bash_config ]; then
     . ~/.bash_config
fi

# If you have a custom colour config file (in your home), run it
if [ -f ~/.dir_colors ]; then
     . ~/.dir_colors
fi

# Runs your bash aliases.
if [ -f ~/.aliases ]; then
     . ~/.aliases
fi

# Startup commands
cd ~            # I use this for Chrome OS, because it starts chronos in /
clear           # Also for Chrome OS, to clear away the crosh prompt, but also works fine for everything else
date | lolcat || date  # Shows the time and date of login, with lolcat if you want
echo            # A line between the date and your prompt
