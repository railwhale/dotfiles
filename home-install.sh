# Run this install script to install all dotfiles that go in your home to a linux system, might work on other *NIXes

# If you want to install all dotfiles, use install.sh

echo Replaced files will be moved to $HOME/old-bash-config

cd
mkdir old-bash-config

if [ -f ~/.bashrc ]; then
  mv ~/.bashrc ~/old-bash-config
fi

if [ -f ~/.bash_profile ]; then
  mv ~/.bash_profile ~/old-bash-config
fi

if [ -f ~/.bash_login ]; then
  mv ~/.bash_login ~/old-bash-config
fi

if [ -f ~/.profile ]; then
  mv ~/.profile ~/old-bash-config
fi

if [ -f ~/.bash_aliases ]; then
  mv ~/.bash_aliases ~/old-bash-config
fi

if [ -f ~/.bash_config ]; then
  mv ~/.bash_config ~/old-bash-config
fi

cp -r ~/dotfiles/bash/home/* $HOME
cd

echo
echo To apply these changes, restart your terminal emulator
