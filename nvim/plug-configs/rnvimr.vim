" Make Ranger replace netrw and be the file explorer
let g:rnvimr_ex_enable = 1

" Allow border
let g:rnvimr_draw_border = 1

" Make Ranger to be hidden after picking a file
let g:rnvimr_pick_enable = 1

let g:rnvimr_ranger_cmd = 'ranger --cmd="set column_ratios 1,1"'

" Draw border with both
"let g:rnvimr_ranger_cmd = 'ranger --cmd="set draw_borders both"'

" Change the border's color
let g:rnvimr_border_attr = {'fg': 254, 'bg': -1}

let g:rnvimr_presets = [
            \ {'width': 0.800, 'height': 0.800}]

" Map Rnvimr action
let g:rnvimr_action = {
            \ '<CR>': 'NvimEdit tabedit',
			      \ '<C-t>': 'NvimEdit tabedit',
            \ '<C-x>': 'NvimEdit split',
            \ '<C-v>': 'NvimEdit vsplit',
            \ 'gw': 'JumpNvimCwd',
            \ 'yw': 'EmitRangerCwd'
            \ }


