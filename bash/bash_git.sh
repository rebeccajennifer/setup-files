#_______________________________________________________________________
# .bash_git
#
# This file contains aliases, environment variables, and bash functions
# related to git.
#_______________________________________________________________________

alias gs='  git status'
alias glo=' git log --oneline --decorate --graph'
alias gloa='glo --all'

alias gdt=' git difftool --no-symlinks --dir-diff'
#__git_complete gdt _git_difftool


# Format git --oneline
#
# %h  Commit hash abbreviated
# %H  Commit hash full
# %an Author name
# %ad Author date
# %ae Author email
# %ar Relative date
# %ai ISO 8601 date
# %s  Commit subject
# %d  Ref names in parens
# %D  Ref names no parens

AUTO='%C(auto)'
CLR='%Creset'
RED='%Cred'
GRN='%Cgreen'
YEL='%Cyellow'
BLU='%Cblue'

alias glo='git log --pretty=format:"${AUTO}%h \
  ${GRN}%ad${CLR} %<(15,trunc)%an ${AUTO}%d${CLR} %s" --date=short --graph'

#__git_complete glo _git_log

alias gloa='glo --all'

