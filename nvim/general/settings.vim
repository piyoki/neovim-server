" === System
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

                    "  View and Edit
set number          "  enable line numbers
"set relativenumber  "  enable relative line numbers
"set guicursor=      "  set block cursor for insert mode
set cursorline      "  enable highlighting of the current line
set ruler           "  show the cursor position all the time
set splitbelow      "  horizontal splits will automatically be below
set splitright      "  vertical splits will automatically be to the right
set t_co=256        "  support 256 colors
set tabstop=2       "  insert 2 spaces for a tab
set shiftwidth=2    "  change the number of space characters inserted for indentation
set showtabline     "  always show tabline
set smarttab        "  makes tabbing smarter will realize you have 2 vs 4
set expandtab       "  converts tabs to spaces
set autoindent      "  good auto indent
set smartindent     "  makes indenting smart
set laststatus=0    "  always display the status line
set wrap            "  wrap text
set nocompatible    "  fixed system error warning
set signcolumn=yes  "  always show the signcolumn, or it would shift the text each time

" coc
set hidden          " required to keep multiple buffers in the background; textedit might fail if hidden is not set
set cmdheight=2     " More space for displaying messages
set nobackup
set nowritebackup

" History (Work with UndoTree Plugin)
"set noswapfile
"set nobackup
"set undoir=~/.vim/undodir
"set undofile

" Extra
set list
set listchars=tab:\|\ ,trail:▫                            "  tab display format
set scrolloff=8                                           "  add extra lines for scrolling
set viewoptions=cursor,slash,folds,unix
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set shortmess+=c
set inccommand=split
set termguicolors
set conceallevel=0                                        "  To see `` in markdown files
set completeopt=longest,noinsert,menuone,noselect,preview
set ttyfast                                               "  Make scrolling faster
set lazyredraw                                            "  Make scrolling faster
set visualbell
"set colorcolumn=80                                        " Envoke colorcolumn on the right
set updatetime=100                                        " Faster completion
"set notimeout                                             " Set notimeout
set timeoutlen=300                                        " By default timeoutlen is 1000 ms
set virtualedit=block
set clipboard=unnamedplus                                 " Copy paste between vim and everything else

" === Searching ===
set hlsearch      "  Enables highlight search
exec "nohlsearch"
set incsearch     "  Enable inline search
set ignorecase    "  Enable ignore case sensitivity
set smartcase     "  Enable smart casing

" === Functional Behaviors
au! BufWritePost $MYVIMRC source % " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif " Return to the previous edit position

