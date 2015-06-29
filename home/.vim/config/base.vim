
Bundle 'Raimondi/delimitMate'
let delimitMate_balance_matchpairs = 1
au FileType python let b:delimitMate_nesting_quotes = ['"']

Bundle 'tpope/vim-surround'

Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-repeat'
Bundle 'vim-scripts/visualrepeat'
Bundle 'goldfeld/vim-seek'
Bundle 'mileszs/ack.vim'

Bundle 'milkypostman/vim-togglelist'
let g:toggle_list_no_mappings = 1
nnoremap <script> <silent> <f10> :call ToggleQuickfixList()<CR>

Bundle 'farseer90718/vim-taskwarrior'
noremap <silent> <leader>w :TW<CR>


Bundle 'jamessan/vim-gnupg'
