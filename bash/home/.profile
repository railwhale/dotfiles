# ~/.profile: executed by the command interpreter for login shells (After /etc/profile).

# This file is the first of three in your home that any shell checks for when it starts.
# The order of these checks is typically ~/.<SHELL>_profile, ~/.<SHELL>_login, ~/.profile
# This file is called .profile, so it has the lowest priority, but it will work with all shells
# This is pretty empty,


# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

if [ -n "$BASH_VERSION" ]; then   # If running bash;
    if [ -f "~/.bashrc" ]; then   # If user has a .bashrc;
        . "~/.bashrc"             # Run it
    fi
fi

if [ -n "$FISH_VERSION" ]; then   # If running fish;
    if [ -f "~/.fishrc" ]; then   # If user has a .fishrc;
        . "~/.fishrc"             # Run it
    fi
fi

if [ -n "$ZSH_VERSION" ]; then   # If running zsh;
    if [ -f "~/.zshrc" ]; then   # If user has a .fishrc;
        . "~/.zshrc"             # Run it
    fi
fi
