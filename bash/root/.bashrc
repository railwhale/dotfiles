[ -z "$PS1" ] && return # If not interactive, do nothing (for safety)

# Set root-specific aliases
if [ -f /root/.aliases ]; then
  . /root/.aliases
fi
