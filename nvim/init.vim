" __  ____   __  _   ___     _____ __  __ ____   ____
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|

" Author: Kevin Yu (@yqlbu)


" ===========================
" === Bootstrap Functions ===
" ===========================

" === Auto load for first time uses
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" === Create a _machine_specific.vim file to adjust machine specific stuff, like python interpreter location
let has_machine_specific_file = 1
if empty(glob('~/.config/nvim/machine_specific.vim'))
  let has_machine_specific_file = 0
  silent! exec "!cp ~/.config/nvim/default_configs/machine_specific_default.vim ~/.config/nvim/machine_specific.vim"
endif


" ==========================
" === Terminal Behaviors ===
" ==========================
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:terminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'


" ====================
" === Key Bindings ===
" ====================
source $HOME/.config/nvim/keys/mappings.vim


" =========================
" === Markdown Settings ===
" =========================
" Snippets
source $HOME/.config/nvim/md-snippets.vim
" auto spell
autocmd BufRead,BufNewFile *.md setlocal spell


" =====================
" === Plugins Setup ===
" =====================

" Load Plugins
source $HOME/.config/nvim/vim-plugs/plugins.vim


" =============================
" === Plugin Configurations ===
" =============================

" === SpaceVimDark
source $HOME/.config/nvim/plug-configs/space-vim-dark.vim
" === Ranger
source $HOME/.config/nvim/plug-configs/rnvimr.vim
" === NERD Tree
source $HOME/.config/nvim/plug-configs/NERDTree-git.vim
" === Taglist
source $HOME/.config/nvim/plug-configs/Taglist.vim
" === GitGutter
source $HOME/.config/nvim/plug-configs/GitGutter.vim
" === Undotree
source $HOME/.config/nvim/plug-configs/UndoTree.vim
" === vim-go
source $HOME/.config/nvim/plug-configs/vim-go.vim
" === jsx
let g:vim_jsx_pretty_colorful_config = 1
" === xtabline
source $HOME/.config/nvim/plug-configs/xtabline.vim
" === COC
source $HOME/.config/nvim/plug-configs/coc.vim
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" === Startify
source $HOME/.config/nvim/plug-configs/startify.vim
" === which-key
source $HOME/.config/nvim/keys/which-key.vim
" === Minimap
source $HOME/.config/nvim/plug-configs/minimap.vim
" === NerdCommenter
source $HOME/.config/nvim/plug-configs/NERD-Commenter.vim
" === LeaderF
source $HOME/.config/nvim/plug-configs/leaderF.vim
" === vim-instant-markdown
source $HOME/.config/nvim/plug-configs/vim-instant-markdown.vim
" === vim-markdown
source $HOME/.config/nvim/plug-configs/vim-markdown.vim
" === asyncrun
source $HOME/.config/nvim/plug-configs/asyncrun.vim
" === fakeclip
" source $HOME/.config/nvim/plug-configs/fakeclip.vim
source $HOME/.config/nvim/plug-configs/terraform.vim

" ========================
" === General Settings ===
" ========================

source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/colorscheme.vim
