" Airline theme
let g:airline_theme='luna'


" Colorscheme
set t_Co=256
set background=dark
colorscheme PaperColor
"colorscheme space-vim-dark

" === Color Options ===

" 235 -- Grey15
" 255 -- White
" 121 -- PaleGreen1
" 48  -- SpringGreen1

" =====================

" Pmenu colorscheme
hi Pmenu ctermbg=235
hi PmenuSel ctermbg=235 ctermfg=121

" Minimap colorscheme
let g:minimap_highlight = 'MinimapCurrentLine'
hi MinimapCurrentLine ctermfg=48 guifg=#50FA7B guibg=#262626 ctermbg=235

