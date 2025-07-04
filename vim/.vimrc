"_______________________________________________________________________
" DESCRIPTION
" This file contains the setup commands for vim.
"_______________________________________________________________________

set cursorline
set hlsearch

" Edit .vimrc file
nnoremap vimrc  :e      ~/.vimrc <cr>

" Source .vimrc file while editing
nnoremap src    :source ~/.vimrc <cr>


" Set colorscheme
colorscheme flux-dark

" Load color scheme while editing
nnoremap cs     :colorscheme flux-dark <cr>

"_______________________________________________________________________
" LINE WRAPPING

" Text will wrap in window if it goes beyond window width
"set wrap

" Text will wrap when a word breaks
set linebreak

"_______________________________________________________________________
" NUMBERING

" Shows line numbers
set number

" Shows cursor location like row and column number
set ruler

"_______________________________________________________________________
" WHITESPACE

" Expand tabs unless in a makefile
let _curfile = expand("%:t")
if _curfile =~ "Makefile" || _curfile =~ "makefile" || _curfile =~ ".*\.mk"
set noexpandtab
else
set expandtab
set tabstop=2
set shiftwidth=2
endif

"_______________________________________________________________________
" OTHER SETTINGS

" Show syntax coloring
syntax on

highlight LineNr ctermfg=8

set formatoptions+=nrco

"_______________________________________________________________________
" KEYMAPS

" remap :
nnoremap ;; :

" remap esc key
inoremap cx <esc>
inoremap CX <esc>
nnoremap cx <esc>
nnoremap CX <esc>

" remap save
inoremap fds <esc>:w<cr>
inoremap FDS <esc>:w<cr>
nnoremap fds      :w<cr>
nnoremap FDS      :w<cr>

" remap quit without save
inoremap dsa <esc> :q!
inoremap DSA <esc> :q!
nnoremap dsa       :q!
nnoremap DSA       :q!


"append a line of the next typed character below the current line.
" inoremap Q yypv$r

" make backspace behave properly
set backspace=2

