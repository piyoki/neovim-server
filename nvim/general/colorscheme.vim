" Airline theme
let g:airline_theme='luna'


" Colorscheme
set t_Co=256
set background=dark
colorscheme PaperColor
"colorscheme space-vim-dark

" === Color Options ===

" 235 -- Grey15         --- #262626
" 255 -- White          --- #eeeeee
" 121 -- PaleGreen1     --- #87ffaf
" 85  -- SpringGreen1   --- #5fffaf	

" =====================

"Pmenu colorscheme
hi Pmenu guifg=#eeeeee guibg=#262626
hi PmenuSel guifg=#262626 guifg=#5fffaf

" Minimap colorscheme
let g:minimap_highlight = 'MinimapCurrentLine'
hi MinimapCurrentLine ctermfg=48 guifg=#50FA7B guibg=#262626 ctermbg=235

