# ~/.bash_aliases: An optional (but recommended) file for all your bash aliases
# My bash aliases
##########################################################
#   █████╗ ██╗     ██╗ █████╗ ███████╗███████╗███████╗
#  ██╔══██╗██║     ██║██╔══██╗██╔════╝██╔════╝██╔════╝
#  ███████║██║     ██║███████║███████╗█████╗  ███████╗
#  ██╔══██║██║     ██║██╔══██║╚════██║██╔══╝  ╚════██║
#  ██║  ██║███████╗██║██║  ██║███████║███████╗███████║
#  ╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
##########################################################

# Make this file smaller
alias al="alias"

# Aome very basic ones
al cl="clear"                # Logical
al his="history"             # Quicker
al nano="vim"                # Hehe
al v="vim"                   # Quicker
al svi="sudo vim"            # Quicker
al edal="v ~/.bash_aliases"  # Edit bash aliases
al edrc="v ~/.bashrc"        # Edit bashrc
al bash="source ~/.bashrc"   # So you don't have to exit many times if you are editing esting .bashrc or .bash_aliases
al ?="man"                   # Quicker
al :q="exit"                 # Quicker

# File management (ls, cd, others) aliases
al ls="ls --sort=extension --color=auto"
al ll="ls -l"
al la="ls -a"
al lf="ls -la"
al lg="la | grep"
al .="cd .."
al ...="cd .. && cd .."
alias mkdir="mkdir -pv"

# Prevent Accidents!
al rm="rm -i"
al cp="cp -i"
al mv="mv -i'"

# Multipurpose extractor (from github/wrfly/bash_aliases)
function extract() { 
    if [ -f $1 ] ; then 
      case $1 in 
        *.tar.bz2)   tar xjf $1     ;; 
        *.tar.gz)    tar xzf $1     ;; 
        *.bz2)       bunzip2 $1     ;; 
        *.rar)       unrar e $1     ;; 
        *.gz)        gunzip $1      ;; 
        *.tar)       tar xf $1      ;; 
        *.tbz2)      tar xjf $1     ;; 
        *.tgz)       tar xzf $1     ;; 
        *.zip)       unzip $1       ;; 
        *.Z)         uncompress $1  ;; 
        *.7z)        7z x $1        ;; 
        *)     echo "'$1' cannot be extracted via extract()" ;; 
         esac 
     else 
         echo "'$1' is not a valid file" 
     fi 
}


# Colours:
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


# apt aliases
al apt="sudo apt"
al syu ="apt update && apt upgrade && apt autoremove"
al 

# Functions:

# Search through your history
function hg() {
    history | grep "$1";
}

# Crouton Aliases

al inkde="sudo startkde"
al ="sudo enter-chroot"

# So I don't have to remember
al chroot-make="echo -e 'Chroot install commands: \n KDE Buster: sudo crouton -r buster -t core,x11,audio,gtk-extra,cli-extra,extension,keyboard,xiwi,xorg,kde \n LXDE Bullseye: sudo crouton -r bullseye -t core,x11,audio,gtk-extra,cli-extra,extension,keyboard,xiwi,xorg,lxde \nRemember names! (-n <name>)'"

al kbus-make="sudo crouton -r buster -t core,x11,audio,gtk-extra,cli-extra,extension,keyboard,xiwi,xorg,kde"

al cd-bust="cd /mnt/stateful_partition/crouton/chroots/buster"
