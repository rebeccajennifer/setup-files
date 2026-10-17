#_______________________________________________________________
# DESCRIPTION
# Prompt set up
#_______________________________________________________________

#_______________________________________________________________
# PROMPT


if [[ -z $ENV_STR ]]; then
  if [[ -n $BASH_VERSION ]]; then
    ENV_STR='bash'

    CLR_='\[\e[0m\]'
    RED_='\[\e[91m\]'
    GRN_='\[\e[92m\]'
    YEL_='\[\e[93m\]'
    BLU_='\[\e[94m\]'
    VIO_='\[\e[95m\]'
    CYA_='\[\e[96m\]'

    # \A    time
    # \w    current working directory
    TIME_STR='\A'
    WORK_DIR='\w'

  elif [[ -n $ZSH_VERSION ]]; then
    ENV_STR='zsh '

    CLR_='%f'
    RED_='%F{9}'
    GRN_='%F{10}'
    YEL_='%F{11}'
    BLU_='%F{12}'
    VIO_='%F{13}'
    CYA_='%F{14}'

    TIME_STR='%D{%H:%M}'
    WORK_DIR='%~'

  else
    CLR_=''
    RED_=''
    GRN_=''
    YEL_=''
    BLU_=''
    VIO_=''
    CYA_=''

    TIME_STR=''
    WORK_DIR=''
  fi

fi

PS1="${RED_}${ENV_STR}$CLR_ 🐰 $VIO_$TIME_STR$CLR_ [$BLU_$WORK_DIR$CLR_] $GRN_>$CLR_ "

#_______________________________________________________________
# REFERENCE
#_______________________________________________________________

#_______________________________________________________________
# Zsh prompt variables
#---------------------------------------------------------------
# %n          : Username of the current user.
# %m          : Hostname up to the first '.'.
# %~          : Current working directory
# $(git_prompt_info):
#---------------------------------------------------------------
# %D{format}  : Current date and time formatted according to format.
#               format ex: %D{%H:%M:%S}

