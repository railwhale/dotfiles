# My-config
My personal configuration and setup stuff (.bashrc, .config, etc)

The may be a lot of *borrowed* stuff in .bashrc and .bash_aliases
Feel free to borrow from me.

The fancy titles on bash files are "Dark with Shadow" on https://textpaint.net

Because it can be confusing, here is a heirachy of the order the files are run:
If shell is a login shell (e.g. via ssh), /etc/profile is run, followed by ~/.bash_profile OR ~/.bash_login OR ~/.profile, in that order.
My ~/.bashrc checks for ~/.bash_config, ~/.dir_colors, and ~/.bash_aliases, in that order.

( https://zwischenzugs.com/2019/02/27/bash-startup-explained was helpful)


## Install:

To automatically install everything, copy and paste this command into your terminal:
```bash
cd && git clone https://github.com/railwhale/dotfiles && printf "Files retrived\n" && cd dotfiles && && sudo ./install.sh
```
sudo is required because the script operates in /etc/, which requires root to edit

### Rootless Install
```bash
cd && git clone https://github.com/railwhale/dotfiles && printf "Files retrived\n" && cd dotfiles && ./home-install.sh
```
