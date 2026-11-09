#_______________________________________________________________________
# DESCRIPTION
#
# This file contains setup regarding terminal colors.
#_______________________________________________________________________

export TERM=xterm-256color

#_______________________________________________________________________
# tmux requires a different TERM variable
#_______________________________________________________________________
if [[ -n $TMUX ]]; then
  export TERM=tmux-256color
fi
#_______________________________________________________________________

# Allows you to reset LS COLORS completely based on values
# loaded in the dircolors command
unset LS_COLORS

DIR_COLORS_FILE='$STARTUP_FILES/.dircolors'

# Load custom color scheme
# Assumes $STARTUP_FILES/.dircolors contains color mapping for file types
if [[ -f $STARTUP_FILES/.dircolors ]]; then
  #unset DIR_COLORS
  eval `dircolors -b $STARTUP_FILES/.dircolors`
fi
