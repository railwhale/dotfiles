# To install only the user-specific files, use nome-install.sh
clear
echo /etc/bash.bashrc, and /etc/profile will also be replaced
echo

. ~/dotfiles/home-install.sh

if [ -f /etc/profile ]; then
  mv /etc/profile ~/old-bash-config/etc-profile
fi

if [ -f /etc/bash.bashrc ]; then
  mv /etc/bash.bashrc ~/old-bash-config/bash.bashrc
fi

shopt -s globstar
sudo cp -r /home/$USER/dotfiles/bash/etc/** /etc/     # copy all files in dotfile/bash/etc to /etc/
cd

echo To apply these changes, restart your terminal emulator
