" === System
set clipboard=unnamedplus
let mapleader = " "
let &t_ut     = ''
set autochdir
set encoding=utf-8 " The encoding displayed

" === Rebind Caplock with Esc

" === Editor behavior
syntax enable " Enable syntax highlighting
set showcmd
set wildmenu
set mouse=a
set exrc
set secure
"set relativenumber

" View and Edit
set number       " Enable line numbers
set cursorline   " Enable highlighting of the current line
set ruler        " Show the cursor position all the time
set splitbelow   " Horizontal splits will automatically be below
set splitright   " Vertical splits will automatically be to the right
set t_Co=256     " Support 256 colors
set tabstop=2    " Insert 2 spaces for a tab
set shiftwidth=2 " Change the number of space characters inserted for indentation
set smarttab     " Makes tabbing smarter will realize you have 2 vs 4
set expandtab    " Converts tabs to spaces
set autoindent   " Good auto indent
set smartindent  " Makes indenting smart
set laststatus=0 " Always display the status line
set wrap         " Wrap text
set nocompatible " Fixed system error warning"

" COC
set hidden        " Required to keep multiple buffers; TextEdit might fail if hidden is not set
set cmdheight=2   " More space for displaying messages
set nobackup
set nowritebackup

"Extra
set list
set listchars=tab:\|\ ,trail:▫
set scrolloff=4
set viewoptions=cursor,slash,folds,unix
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set shortmess+=c
set inccommand=split
set conceallevel=0                                        " To see `` in markdown files
set completeopt=longest,noinsert,menuone,noselect,preview
set ttyfast                                               " Make scrolling faster
set lazyredraw                                            " Make scrolling faster
set visualbell
"set colorcolumn=100                                      " Envoke colorcolumn on the right
set updatetime=200                                        " Faster completion
"set notimeout                                            " Set notimeout
set timeoutlen=500                                        " By default timeoutlen is 1000 ms
set virtualedit=block
set clipboard=unnamedplus                                 " Copy paste between vim and everything else

" === Searching ===
set hlsearch   " Enables highlight search
exec "nohlsearch"
set incsearch  " Enable inline search
set ignorecase " Enable ignore case sensitivity
set smartcase  " Enable smart casing

" === Functional Behaviors
au! BufWritePost $MYVIMRC source % " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif " Return to the previous edit position

