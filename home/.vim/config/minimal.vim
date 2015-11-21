filetype plugin indent on


Bundle 'mhinz/vim-startify'


Bundle 'beloglazov/vim-statline'
set noshowmode
set laststatus=2
let g:statline_fugitive = 1
let g:statline_show_n_buffers = 0
let g:statline_show_encoding = 0
let g:statline_filename_relative = 1


Bundle 'molok/vim-smartusline'
let g:smartusline_string_to_highlight = '[%n]'


Bundle 'scrooloose/nerdtree'
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['.*\.pyc$']
noremap <silent> <f1> :NERDTreeToggle<CR>
noremap <silent> <f2> :NERDTreeFind<CR>

"Bundle 'kien/ctrlp.vim'
Bundle 'ctrlpvim/ctrlp.vim'
let g:ctrlp_show_hidden = 1
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_prompt_mappings = { 'PrtExit()': ['<esc>', '<c-q>'] }
let g:ctrlp_max_height = 30
noremap <leader>o :CtrlP<CR>
noremap <leader>O :CtrlPCurFile<CR>
noremap <leader>b :CtrlPBuffer<CR>
noremap <leader>r :CtrlPMRUFiles<CR>
noremap <leader>; :CtrlPLine<CR>


Bundle 'vim-scripts/YankRing.vim'
nnoremap <silent> <F3> :YRShow<CR>
function! YRRunAfterMaps()
    nnoremap Y :<C-U>YRYankCount 'y$'<CR>
endfunction


Bundle 'christoomey/vim-tmux-navigator'
