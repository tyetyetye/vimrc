"""""""""""""""""""
" Custom bindings "
"""""""""""""""""""

" Indent
map <leader>= mkgg=G'kzz
" Comment code block
" TODO check for filetype, making function to un-comment if first line is comment character
map <leader>/ mk<C-v>}kI//<esc>'k
map <leader>? mk<C-v>}klx<esc>'k
" open next line, remove auto-comment
map <leader>o o<esc>bcw

""""""""""""
" Settings "
""""""""""""
"

" Colorscheme
set background=dark
colorscheme purify

" Set indent
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Kitty support
let &t_ut=''

" General colors
if has('gui_running') || has('nvim')
  hi Normal 		guifg=#f6f3e8 guibg=#242424
else
  " Set the terminal default background and foreground colors, thereby
  " improving performance by not needing to set these colors on empty cells.
  hi Normal guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE
  let &t_ti = &t_ti . "\033]10;#f6f3e8\007\033]11;#242424\007"
  let &t_te = &t_te . "\033]110\007\033]111\007"
endif
