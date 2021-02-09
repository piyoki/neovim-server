" Visual Mode Orange Background, Black Text
autocmd VimEnter * highlight Visual guifg=#1c1c1c guibg=#af87d7

" Default Colors for CursorLine
autocmd VimEnter * highlight CursorLine guibg=#303030
autocmd VimEnter * highlight Cursor guibg=#87ffff;

" Change Color when entering Insert Mode
autocmd InsertEnter * highlight CursorLine guibg=#262626
autocmd InsertEnter * highlight Cursor guibg=#ffffd7;

" Revert Color to default when leaving Insert Mode
autocmd InsertLeave * highlight CursorLine guibg=#303030
autocmd InsertLeave * highlight Cursor guibg=#87ffff;

set termguicolors
let g:space_vim_dark_background = 234
hi LineNr ctermbg=NONE guibg=NONE

