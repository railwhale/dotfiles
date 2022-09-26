# My Dotfiles
My personal configuration and setup stuff (.bashrc, .config, etc)


The may be a lot of *borrowed* stuff in all dotfiles.
Feel free to borrow from me.

Because it can be confusing, here is a somewhat good explanation on the order the files are run:
If the shell is a login shell (e.g. you open a terminal emulator on the host or login via ssh) , /etc/profile is run, 
followed by ~/.$SHELL_profile OR ~/.$SHELL_login OR ~/.profile, in that order.

If it's not a login shell, (e.g. in bash you enter the command ```bash``` to start another instance in the same session),
then /etc/bash.bashrc and ~/.bashrc are run (and any files that are called in those files)

[Bash Startup Explained (on zwischenzugs.com)](https://zwischenzugs.com/2019/02/27/bash-startup-explained) was helpful

My ~/.bashrc checks for ~/.bash_config, ~/.dir_colors, and ~/.aliases, in that order.


## Install:

To automatically install everything, copy and paste this command into your terminal:
```bash
cd && git clone https://github.com/railwhale/dotfiles && cd dotfiles && chmod +x install.sh && clear && sudo bash install.sh
```
sudo is required because the script operates in /etc/, which requires root to edit

### Rootless Install
```bash
cd && git clone https://github.com/railwhale/dotfiles && cd dotfiles && chmod +x ./home-install.sh && clear && bash home-install.sh
```
Installs only .bashrc, .bash_profile, .bash_aliases, and .bash_config
