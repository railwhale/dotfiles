# Run this install script to install all these dotfiles on a linux system

# IMPORTANT NOTICE: this script will remove and replace any and all files
# with the same name in the same in your home, so make sure you you know what you are replacing

# If you want to only install all dotfiles, use install.sh

echo This will replace .bashrc, .bash_profile, and replace or create .bash_aliases and .bash_config

read -p "Please confirm install [Y/n] " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
  rm ~/.bashrc
  rm ~/.bash_profile
  rm ~/.bash_login
  rm ~/.profile
  rm ~/.bash_aliases
  rm ~/.bash_config

  cp ~/dotfiles/bash/home/* ~
  cd
  echo Applying config to current session...
  source .bashrc
  
fi
