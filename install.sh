# To install only the user-specific files, use nome-install.sh
printf "Files retrived\n"
echo This will replace your .bashrc, .profile or .bash_login, or bash_profile, and create .bash_aliases, and .bash_config
echo /etc/bash.bashrc, and /etc/profile will also be replaced
echo Replaced files will be moved to $HOME/old-bash-config

read -p "Please confirm install [y/n] " -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]; then
  cd
  mkdir old-bash-config
  mv ~/.bashrc ~/old-bash-config
  
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
  
  mv /etc/profile ~/old-bash-config/etc-profile
  mv /etc/bash.bashrc ~/old-bash-config/bash.bashrc

  cp ~/dotfiles/bash/~/* ~ # copy all files in dotfiles/bash/~ (bashrc, bash aliases, more) to users home
  cp ~/dotfiles/bash/etc/* /etc/ # copy all file
  
  read -p " Apply config to current session? [y/N] (screen will clear)" -n 1 -r
  if [[ $REPLY =~ ^[Yy]$ ]]; then 
    source .bashrc
  fi
fi
