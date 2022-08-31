# ~/.bash_profile: Executed by bash after /etc/profile completes.
# ~/.bash_profile: executed by the command interpreter for login shells.

# This file is the first of three in your home that bash checks for when it starts.
# The order of these checks is ~/.bash_profile, ~/.bash_login, ~/.profile

# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

if [ -n "$BASH_VERSION" ]; then   # If running bash;
    if [ -f "~/.bashrc" ]; then   # If user has a .bashrc;
        . "$HOME/.bashrc"         # Run it
    fi
fi
