# /etc/bash.bashrc: A system-wide .bashrc file for interactive bash(1) shells.

## If not running interactively, don't do anything
[ -z "$PS1" ] && return

if [ -f /etc/colors ]; then   # If /etc/colors exists, 
  . /etc/colors               # Run it
fi


# Set default prompt
PS1='\u@\h:\w \$ '     # == 'user@host:~/Directory $ '

# To make your own prompt, copy the template to your .bashrc or something like that, then edit it there.

# Use a red name for root
if [ "${UID}" -eq "0" ]; then 
  nameC="${txtred}" 
fi


# Enable bash completion in interactive shells
if ! shopt -oq posix; then                                      # If shell option 'posix' is disabled, then
  if [ -f /usr/share/bash-completion/bash_completion ]; then    # If/usr/share/bash-completion/bash_completion exists, 
    . /usr/share/bash-completion/bash_completion                # Run it
  elif [ -f /etc/bash_completion ]; then                        # otherwise, if /etc/bash_completion exists,
    . /etc/bash_completion                                      # Run
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
