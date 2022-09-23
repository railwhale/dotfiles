# To install only the user-specific files, use home-install.sh
clear

chmod +x ./home-install.sh     # Make home-install executable
. ~/dotfiles/home-install.sh   # Install the non-root configs


if [ -f /etc/profile ]; then
  mv /etc/profile ~/old-bash-config/etc-profile
fi

if [ -f /etc/bash.bashrc ]; then
  mv /etc/bash.bashrc ~/old-bash-config/bash.bashrc
fi

sudo cp -r ~/dotfiles/bash/etc/* /etc/     # copy all files in dotfile/bash/etc to /etc/
cd
