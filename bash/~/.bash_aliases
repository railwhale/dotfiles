# My bash aliases

# Makes this file smaller
alias al="alias $1"

# some very basic ones
al cl="clear"                # Logical
al his="history"             # Quicker
al nano="vim"                # Hehe
al v="vim"                   # Quicker
al edal="v ~/.bash_aliases"  # Edit bash aliases
al edrc="c ~/.bashrc"        # Edit bashrc
al bash="source ~/.bashrc"   # So you don't have to exit many times if you are editing esting .bashrc or .bash_aliases
al .="cd .."
al ..="cd .. && cd .."
al al-lis="alias -p"

# ls aliases
al ls="ls --sort=extension --color=auto"
al ll="ls -l"
al la="ls -a"
al lf="ls -la"


# Colours:
# Enable colour support of some other common commands
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


# Prevent Accidents!
al rm=r"m -i"
al cp="cp -i"
al mv="mv -i'"

# Info Aliases
al now="date +'Time: %T' && date +'Date: %d/%m/%Y'"
al sys-info="neofetch && uname -a && date"
al neo="neofetch"
al neof="neo --cpu_temp C"

# Crouton Aliases

al inkde="sudo startkde"
al ="sudo enter-chroot"

# So I don't have to remember
al chroot-make="echo -e 'Chroot install commands: \n KDE Buster: sudo crouton -r buster -t core,x11,audio,gtk-extra,cli-extra,extension,keyboard,xiwi,xorg,kde \n LXDE Bullseye: sudo crouton -r bullseye -t core,x11,audio,gtk-extra,cli-extra,extension,keyboard,xiwi,xorg,lxde \nRemember names! (-n <name>)'"

al kbus-make="sudo crouton -r buster -t core,x11,audio,gtk-extra,cli-extra,extension,keyboard,xiwi,xorg,kde"

al cd-bust="cd /mnt/stateful_partition/crouton/chroots/buster"
