" Map leader to which_key
nnoremap <silent> <LEADER> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <LEADER> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0 

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['/'] = [ '<Plug>NERDCommenterToggle'  , 'Comment' ]
let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'Explorer' ]
let g:which_key_map['f'] = [ ':Files'                     , 'Search Files' ]
let g:which_key_map['r'] = [ ':RnvimrToogle'              , 'Ranger' ]
let g:which_key_map['S'] = [ ':Startify'                  , 'Start Screen' ]
let g:which_key_map['p'] = [ '<Plug>(coc-format-selected)', 'Prettier format' ]
let g:which_key_map['h'] = [ '<C-w>h'                     , 'Focus Left Window']
let g:which_key_map['k'] = [ '<C-w>k'                     , 'Focus Top Window']
let g:which_key_map['j'] = [ '<C-w>j'                     , 'Focus Bottom Window']
let g:which_key_map['l'] = [ '<C-w>l'                     , 'Focus Right Window']


" w is for window operations
let g:which_key_map.w = {
    \ 'name' : '+Window' ,
    \ 'v' : ['<C-w>v'          , 'Split window vertically']       ,
    \ 'h' : ['<C-w>s'          , 'Split window horizontally']     ,
    \ '=' : [':vertical res+5' , 'Increase current window width'] ,
    \ '-' : [':vertical res-5' , 'Decrease current window width'] ,
    \ }

" t is for terminal operations
let g:which_key_map.t = {
    \ 'name' : '+Terminal' ,
      \ ';' : [':FloatermNew'            , 'terminal'] ,
      \ 'd' : [':FloatermNew lazydocker' , 'docker']   ,
      \ 'y' : [':FloatermNew ytop'       , 'ytop']     ,
      \ 'b' : [':FloatermNew bashtop'    , 'bashtop']  ,
      \ 'r' : [':FloatermNew ranger'     , 'ranger']   ,
      \ 'g' : [':FloatermNew lazygit'    , 'lazygit']  ,
      \ }

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+Search' ,
      \ '/' : [':History/'     , 'history'],
      \ ';' : [':Commands'     , 'commands'],
      \ 'a' : [':Ag'           , 'text Ag'],
      \ 'b' : [':BLines'       , 'current buffer'],
      \ 'B' : [':Buffers'      , 'open buffers'],
      \ 'c' : [':Commits'      , 'commits'],
      \ 'C' : [':BCommits'     , 'buffer commits'],
      \ 'f' : [':Files'        , 'files'],
      \ 'g' : [':GFiles'       , 'git files'],
      \ 'G' : [':GFiles?'      , 'modified git files'],
      \ 'h' : [':History'      , 'file history'],
      \ 'H' : [':History:'     , 'command history'],
      \ 'l' : [':Lines'        , 'lines'] ,
      \ 'm' : [':Marks'        , 'marks'] ,
      \ 'M' : [':Maps'         , 'normal maps'] ,
      \ 'p' : [':Helptags'     , 'help tags'] ,
      \ 'P' : [':Tags'         , 'project tags'],
      \ 's' : [':Snippets'     , 'snippets'],
      \ 'S' : [':Colors'       , 'color schemes'],
      \ 't' : [':Rg'           , 'text Rg'],
      \ 'T' : [':BTags'        , 'buffer tags'],
      \ 'w' : [':Windows'      , 'search windows'],
      \ 'y' : [':Filetypes'    , 'file types'],
      \ 'z' : [':FZF'          , 'FZF'],
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
