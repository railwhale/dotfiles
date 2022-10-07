# My Dotfiles
My personal configuration and setup stuff (.bashrc, .config, etc)

There is a fair ammount of borrowed stuff in here.  
Feel free to borrow from me.

Because it can be confusing, here is a somewhat reasonable explanation on the order the files are run:
If the shell is a login shell (e.g. you open a terminal emulator on the host or login via ssh) , /etc/profile is run, 
followed by ~/.$SHELL_profile OR ~/.$SHELL_login OR ~/.profile, in that order.  
$SHELL, logicly, stands for the shell you are using  
I 

If it's not a login shell, (e.g. in bash you enter the command ```bash``` to start another instance in the same session),
then /etc/bash.bashrc and ~/.bashrc are run (and any files that are called in those files)

[Bash Startup Explained (on zwischenzugs.com)](https://zwischenzugs.com/2019/02/27/bash-startup-explained) was helpful

My ~/.bashrc checks for ~/.bash_config, ~/.dir_colors, and ~/.aliases, in that order.


## Download/Install:
You should look through all files and make any edits aplicable to you before copying them into place
```bash
cd && git clone https://github.com/railwhale/dotfiles && cd dotfiles
```
Download
```bash
chmod +x install.sh && ./install.sh
```
Copy per-user files into your home  
To apply system wide files, copy them manually to /etc/
