#_______________________________________________________________________
# .bash_profile
#
# This file is a template that you can use to create your own
# bash profile.
#
# INSTRUCTIONS
#
# COPY this file and save it to your home drive with the file name
# .bash_profile
#_______________________________________________________________________

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# NOTE
#
# This section is only necessary if you are using Cygwin, but want to
# set your home drive to your Windows home drive instead of the one
# created by Cygwin
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# SET HOME
#_______________________________________________________________________
# Check which terminal is running, set home path accordingly
#_______________________________________________________________________
#case "$(uname -s)" in
#    CYGWIN*)
#        MY_HOME='/cygdrive/c/Users/RebeccaRashkin'
#        ;;
#    MINGW*|MSYS*)
#        MY_HOME='/c/Users/RebeccaRashkin'
#        ;;
#    *)
#        MY_HOME="$HOME"
#        ;;
#esac
#
#export MY_HOME
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

# Delete this line if defining $MY_HOME above 
export MY_HOME=$HOME

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

export MY_BASH_PROFILE=$MY_HOME/.bash_profile
alias src='source $MY_BASH_PROFILE'

#_______________________________________________________________________
# SOURCE OTHER FILES
#_______________________________________________________________________

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# DEFINE THESE PATHS
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
export GIT_PATH=$MY_HOME/repos
export STARTUP_FILES=$GIT_PATH/startup
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

source $STARTUP_FILES/bash_colors.sh
source $STARTUP_FILES/bash_git.sh
source $STARTUP_FILES/bash_alias.sh
source $STARTUP_FILES/bash_fun.sh
source $STARTUP_FILES/bash_prompt.sh
#_______________________________________________________________________

export DISPLAY=:0.0

#_______________________________________________________________________
# USER DEFINED SHORTCUTS
#_______________________________________________________________________

alias cds=' cd $GIT_PATH/startup'
alias cdg=' cd $GIT_PATH'

#_______________________________________________________________________
# USER DEFINED PATH MODIFICATIONS
#_______________________________________________________________________

