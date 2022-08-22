# My-config
My personal configuration and setup stuff (.bashrc, .config, etc)

The may be a lot of *borrowed* stuff in .bashrc and .bash_aliases <br />
Feel free to borrow from me.


Because it can be confusing, here is a heirachy of the order the files are run:
If shell is a login shell (e.g. via ssh), /etc/profile is run, followed by ~/.bash_profile OR ~/.bash_login OR ~/.profile, in that order.
My ~/.bashrc checks for ~/.bash_config, ~/.dir_colors, and ~/.bash_aliases, in that order.

( https://zwischenzugs.com/2019/02/27/bash-startup-explained was helpful)
