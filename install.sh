# To install only the user-specific files, use nome-install.sh
clear

echo This will replace your .bashrc, .profile or .bash_login, or bash_profile, and create or replace .bash_aliases, and .bash_config
echo /etc/bash.bashrc, and /etc/profile will also be replaced
echo Replaced files will be moved to $HOME/old-bash-config
echo

. ~/dotfiles/home-install.sh

if [ -f /etc/profile ]; then
  mv /etc/profile ~/old-bash-config/etc-profile
fi

if [ -f /etc/bash.bashrc ]; then
  mv /etc/bash.bashrc ~/old-bash-config/bash.bashrc
fi

shopt -s globstar
cp -r /home/$USER/dotfiles/bash/home/** ~        # copy all files in dotfiles/bash/home (bashrc, bash aliases, more) to users home
sudo cp -r /home/$USER/dotfiles/bash/etc/** /etc/     # copy all files in dotfile/bash/etc to /etc/
cd

echo To apply these changes, restart your terminal emulator
