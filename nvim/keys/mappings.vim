" Basic Key Mappings

" Leader Key
let mapleader = " "

" Navigation
autocmd VimEnter * nnoremap <silent> J 5j
autocmd VimEnter * nnoremap <silent> K 5k
autocmd VimEnter * nnoremap <silent> L w
autocmd VimEnter * nnoremap <silent> H b
nnoremap <C-e> $
nnoremap <C-a> 0
vnoremap <C-e> $
vnoremap <C-a> 0
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>0
noremap = n
noremap - N
noremap <LEADER><CR> :nohlsearch<CR>
noremap <C-c> <Esc>

" Save, Quit, and Reload
map s <nop>
nnoremap S :w<CR>
nnoremap Q :q<CR>
map R :source $MYVIMRC<CR>

" Increment && Decrement
noremap + <C-a>
noremap _ <C-x>

" Spell Check
map sc :set spell!<CR>

" Figlet
map fg :r !figlet

" Folding
" noremap <C-o> za

" Use <space> =- to change tab
map tt :tabe<CR>
map <LEADER>- :-tabnext<CR>
map <LEADER>= :tabnext<CR>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" Use > or < to indent or unindent in visual line mode
vnoremap <S-TAB> <gv
vnoremap <TAB> >gv
" Use <TAB> to indent or unindent in normal mode
" nnoremap <TAB> >>
" nnoremap <S-TAB> <<
" Use TAB to indent and Shift-TAB to undent in insert mode
inoremap <TAB> <C-t>
inoremap <S-TAB> <C-d>

" Insert mode binding
inoremap jj <esc>:w<CR>
inoremap <C-o> <esc>o
inoremap vv <esc>:bv

" split window
map sr :set splitright<CR>:vsplit<CR>
map sl :set nosplitright<CR>:vsplit<CR>
map su :set nosplitbelow<CR>:split<CR>
map sb :set splitbelow<CR>:split<CR>

" change split direction
map sh <C-w>t<C-w>H
map sv <C-w>t<C-w>K

" Use <space> + hjkl to move focus on split window
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l

" Use <space> + arrow key to resize windows
map <LEADER><up> :res+5<CR>
map <LEADER><down> :res-5<CR>
map <LEADER><left> :vertical resize-5<CR>
map <LEADER><right> :vertical resize+5<CR>

"Commenter
autocmd VimEnter * noremap <LEADER>/ :call NERDComment(0,"toggle")<CR>


" ===
" === Useful Tools
" ===

" Opening a terminal window
"noremap <LEADER>, :set splitbelow<CR>:split<CR>:res +5<CR>:term<CR>

" Spelling Check with <space>sc
noremap <LEADER>sc :set spell!<CR>

" Find and Replace
noremap \s :%s//g<left><left>

" Wrap
noremap <LEADER>sw :set wrap<CR>

" Clipboard
nnoremap <C-v> "+gp
nnoremap <C-c> "+yy
vnoremap <C-c> "+y

" ===========================
" === Plugins Key Binding ===
" ===========================

" === Ranger
" nmap ff :RnvimrToggle<CR>
nmap <LEADER>r :RnvimrToggle<CR>

" === NERD Tree
autocmd VimEnter * nnoremap <silent> <C-N> :NERDTreeToggle<CR>

" === Tabular
vmap tb :Tabularize /

" === UndoTree
noremap <LEADER>u :UndotreeToggle<CR>

" === Floaterm
nnoremap <silent> <LEADER>T :FloatermToggle<CR>
tnoremap <silent> X <C-\><C-n>:FloatermToggle<CR>
nnoremap <silent> <C-x> :FloatermToggle<CR>
tnoremap <silent> <C-x> <C-\><C-n>:FloatermToggle<CR>

" === Minimap
nnoremap <silent> <LEADER>m :MinimapToggle<CR>

" === LeaderF
noremap ff :Leaderf file<CR>
noremap fs :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
noremap fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>

" === Lazygit
noremap <C-g> :tabe<CR>:term lazygit<CR>

" === FZF
" nnoremap ff :Files<CR>
" nnoremap fs :Lines<CR>

" === Asyncrun
" Python
noremap <C-p> :AsyncRun -raw python %<CR>
" Golang

