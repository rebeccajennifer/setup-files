#_______________________________________________________________________
# This file contains setup regarding terminal colors.
#_______________________________________________________________________

export TERM=xterm-256color

# Allows you to reset LS COLORS completely based on values
# loaded in the dircolors command
unset LS_COLORS

DIR_COLORS_FILE='$STARTUP_FILES/.dircolors-flux'

# Load custom color scheme
# Assumes ~/.dircolors-flux contains color mapping for file types
if [[ -f $STARTUP_FILES/.dircolors-flux ]]; then
  #unset DIR_COLORS
  eval `dircolors -b $STARTUP_FILES/.dircolors-flux`
fi

#_______________________________________________________________
# ANSI COLORS
#---------------------------------------------------------------
# Note: The ANSI colors are defined in the terminal profile.
#---------------------------------------------------------------
# Index   Color         Index   Color
#---------------------------------------------------------------
# 30      Black         90      Bright Black          
# 31      Red           91      Bright Red            
# 32      Green         92      Bright Green          
# 33      Yellow        93      Bright Yellow         
# 34      Blue          94      Bright Blue           
# 35      Magenta       95      Bright Magenta        
# 36      Cyan          96      Bright Cyan           
# 37      White         97      Bright White          
#
# 00      No color (default)
#---------------------------------------------------------------
# BACKGROUND COLORS
#---------------------------------------------------------------
# Index   Color
#---------------------------------------------------------------
# 40      Black   background
# 41      Red     background
# 42      Green   background
# 43      Yellow  background
# 44      Blue    background
# 45      Magenta background
# 46      Cyan    background
# 47      White   background
#---------------------------------------------------------------

