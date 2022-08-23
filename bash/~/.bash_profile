# ~/.bash_profile: executed by the command interpreter for login shells.

# This file is the first of three that bash checks for when it starts.
# The order of these checks is ~/.bash_profile, ~/.bash_login, ~/.profile
# See the README for more information.

# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi
