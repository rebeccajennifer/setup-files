
# If tree doesn't exist, then source file with tree function
if declare -F tree >/dev/null; then
  source $STARTUP_FILES/bash_fun_tree.sh
fi

source $STARTUP_FILES/bash_fun_rename_lower.sh
