# /root/.bash_profile: A bash profile for the root user (so be careful)

if [ -n "$BASH_VERSION" ]; then    # If running bash;
    if [ -f /root/.bashrc ]; then  # If user has a .bashrc;
        . /root/.bashrc            # Run it
    fi
fi
