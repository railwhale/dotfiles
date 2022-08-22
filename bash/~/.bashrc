# ~/.bashrc: Run by bash on startup, at the end of /etc/profile (the global .profile)

########################################################################
#
#      ██████╗     █████╗    ███████╗   ██╗  ██╗   ██████╗     ██████╗
#      ██╔══██╗   ██╔══██╗   ██╔════╝   ██║  ██║   ██╔══██╗   ██╔════╝
#      ██████╔╝   ███████║   ███████╗   ███████║   ██████╔╝   ██║
#      ██╔══██╗   ██╔══██║   ╚════██║   ██╔══██║   ██╔══██╗   ██║
#  ██╗ ██████╔╝   ██║  ██║   ███████║   ██║  ██║   ██║  ██║   ╚██████╗
#  ╚═╝ ╚═════╝    ╚═╝  ╚═╝   ╚══════╝   ╚═╝  ╚═╝   ╚═╝  ╚═╝    ╚═════╝
#
# My Bashrc
# Contents:
# Interactive check
# Run ~/.bash_config
# Run ~/.dir_colors
# Run ~/.bash_aliases
# Some startup commands
#####################################################

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Run a file called '.bash_config', if you have one. I do.
if [ -f ~/.bash_config ]; then
    . ~/.bash_config
fi

# If you have a custom colour config file (in your home), run it
if [ -f ~/.dir_colors ] then
       . ~/.dir_colors
fi

# Runs your bash aliases.
# For me, all aliases are in ~/.bash_aliases, even default ones.
if [ -f ~/.bash_aliases ]; then
        . ~/.bash_aliases
fi

# Startup commands
cd ~            # I use this for chromium OS, because it starts chronos in /
clear           # Also for chromium OS, to clear away the crosh prompt, but also works fine for everything else
date | #lolcat  # Shows the time and date of login, with lolcat if you want
printf "\n"     # A line between the date and your prompt

