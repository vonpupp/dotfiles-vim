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


" Switch spellcheck languages
let b:myLang=0
let g:myLangList=["nospell","en_us","pt_br","es","fr"]
function! ToggleSpell()
  let b:myLang=b:myLang+1
  if b:myLang>=len(g:myLangList) | let b:myLang=0 | endif
  if b:myLang==0
    setlocal nospell
  else
    execute "setlocal spell spelllang=".get(g:myLangList, b:myLang)
  endif
  echo "spell checking language:" g:myLangList[b:myLang]
endfunction

nmap <silent> <F5> :call ToggleSpell()<CR>
