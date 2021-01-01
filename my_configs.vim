" Custom bindings
"
" Indent
map <leader>= mkgg=G'kzz
" Comment code block
" TODO check for filetype, making function to un-comment if first line is comment character
map <leader>/ mk<C-v>}kI//<esc>'k
map <leader>? mk<C-v>}klx<esc>'k

" Colorscheme
set background=dark
colorscheme purify

" Set indent
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Spell check
"set spell

" Set number
"set number

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

" Rainbow parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['lightred',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16

