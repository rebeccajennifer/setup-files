#_______________________________________________________________________
# DESCRIPTION
#
# This file contains aliases.
#_______________________________________________________________________

#_______________________________________________________________________
# EDIT SETTINGS
#
# Edit various configuration files. You may edit these commands to use
# your preferred text editor.
#_______________________________________________________________________

# Edit bash profile and immediately source it
alias nanob='nano $MY_HOME/.bash_profile; src'

#_______________________________________________________________________
bcompare='BCompare.exe'

#_______________________________________________________________________
# List files in directory
#
# -l  List format          
# -a  All files including hidden files
# -h  Human readable
# -g  Long format, no owner
# -p  Append / indicator to directories
# --color    Use dircolors
# --no-group Omit group column
alias la='ls -lahgp --color=auto --no-group \
   --group-directories-first'

