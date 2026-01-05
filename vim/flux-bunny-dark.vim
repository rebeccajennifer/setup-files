"_______________________________________________________________________
" Vim color file
" Maintainer:  Rebecca Rashkin <rebecca.jennifer.rabbit@gmail.com>
" Last Change: 2025 Aug 15
"_______________________________________________________________________
"
"_______________________________________________________________________
" NOTE
"_______________________________________________________________________
"
" This file sources other files that include the bulk of the color
" scheme contents (see body of file).
"
"_______________________________________________________________________
"
" To find a token's highlight group, place your cursor on it and run:
"
"   :echo synIDattr(synID(line('.'), col('.'), 1), 'name')
"
" The group name shows in the command area (bottom left).
"
" If blank, the token isn't recognized as part of a highlight group.
"
"_______________________________________________________________________

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = 'flux-bunny-dark'

"_______________________________________________________________________
" File containing color definitions
source ~/.vim/colors/flux-colors-dark.vim

" File containing the highlight group configurations
source ~/.vim/colors/flux-base.vim

