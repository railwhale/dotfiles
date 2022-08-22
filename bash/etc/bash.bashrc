# /etc/bash.bashrc: A system-wide .bashrc file for interactive bash(1) shells.

# To enable the settings and commands in this file for login shells as well,
# this file has to be sourced in /etc/profile.

## If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Set default prompt
PS1='\u@\h:\w $ '

# This template makes this prompt:
# 'user@host:~/Folder $ '
# To make your own prompt, copy the template to your .bashrc or something like that, then edit it there.

# Enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# if the command-not-found package is installed, use it
if [ -x /usr/lib/command-not-found -o -x /usr/share/command-not-found/command-not-found ]; then
        function command_not_found_handle {
                # check because c-n-f could've been removed in the meantime
                if [ -x /usr/lib/command-not-found ]; then
                   /usr/lib/command-not-found -- "$1"
                   return $?
                elif [ -x /usr/share/command-not-found/command-not-found ]; then
                   /usr/share/command-not-found/command-not-found -- "$1"
                   return $?
                else
                   printf "%s: command not found\n" "$1" >&2
                   return 127
                fi
        }
fi
