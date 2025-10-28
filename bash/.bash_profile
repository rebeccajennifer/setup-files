#_______________________________________________________________________
# .bash_profile
# 
# This file contains aliases and environment variables.
#_______________________________________________________________________

alias src='source ~/.bash_profile'

#_______________________________________________________________________
# LS_COLORS
#_______________________________________________________________________

# Reset LS_COLORS completely based on values
# loaded in the dircolors command
unset LS_COLORS

# Load custom color scheme
# Assumes ~/.dircolors-flux contains updated color mapping for file types
if [[ -f ~/.dircolors-flux ]]; then
  eval `dircolors -b ~/.dircolors-flux`
fi

#_______________________________________________________________________
# EDIT SETTINGS
#
# Edit various configuration files. The author's preferred text editor
# is vim. You may want to set these to use gedit, nano, or another
# text editor.
#_______________________________________________________________________

alias vimb='vim ~/.bash_profile; src'
alias vimv='vim ~/.vimrc'
alias vimt='vim ~/.tmux.conf'
alias vimz='vim ~/.zshrc'

#_______________________________________________________________________
# NAVIGATION
#_______________________________________________________________________
# Used to change directory then return after executing a command
alias save='    export TEMP_DIR=$PWD'
alias return='  cd $TEMP_DIR'

#_______________________________________________________________________
# GIT
#
# Assumes there is a git directory in home
#_______________________________________________________________________
export GIT_PATH=~/git

alias cds=' cd $GIT_PATH/setup-files'
alias cdg=' cd $GIT_PATH'


alias gs='      git status'
alias glo='     git log --oneline --decorate --all --graph'
alias gitdiff=' git difftool --no-symlinks --dir-diff'

alias dsa='exit'

#_______________________________________________________________________
# OTHER SHORTCUTS
alias la='ls -lah --color=auto'

#set -o vi

#_______________________________________________________________________
# ARDUINO
#
# These are commands used with arduino-cli
#_______________________________________________________________________
export NANO_ESP32=esp32:esp32:nano_nora
export MKR1000=arduino:samd:mkr1000
export ARDUINO_BOARD=$MKR1000
export ARDUINO_BOARD=$NANO_ESP32
export ARDUINO_COMM_PORT=/dev/ttyACM0
export ARDUINO_COMM_PORT=/dev/ttyACM1

alias ac='arduino-cli compile -b $ARDUINO_BOARD'
alias au='arduino-cli upload ./ -p $ARDUINO_COMM_PORT -b $ARDUINO_BOARD'
