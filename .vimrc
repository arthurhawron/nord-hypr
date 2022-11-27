set nocompatible
call plug#begin()
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
call plug#end()
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }
let g:nord_cursor_line_number_background = 1
let g:nord_italic_comments = 1
let g:nord_underline = 1
colorscheme nord
