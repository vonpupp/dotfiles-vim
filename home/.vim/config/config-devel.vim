
Plug 'tacahiroy/ctrlp-funky'
let g:ctrlp_extensions = ['funky']
nnoremap <leader>f :CtrlPFunky<CR>
" Narrow the list down with a word under cursor
nnoremap <leader>F :execute 'CtrlPFunky ' . expand('<cword>')<CR>
" TODO: Replace ctrl-p with fzf?


Plug 'vim-scripts/taglist.vim'
let Tlist_Auto_Update = 1
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Close_On_Select = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_File_Fold_Auto_Close = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Highlight_Tag_On_BufEnter = 1
noremap <silent> <leader>t :TlistToggle<CR>


Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'

"nnoremap <Leader>ga  :Git add<CR>
nnoremap <Leader>gau :Git add -u<CR>                                    " ok

nnoremap <Leader>gco :Gcommit<CR>                                       " ok
nnoremap <Leader>gca :Gcommit --amend<CR>                               " ok

nnoremap <Leader>gdf :Gdiff<CR>                                         " ok
nnoremap <Leader>gds :Gdiff --staged<CR>                                " ok

nnoremap <Leader>gss :Gstatus<CR>                                       " ok
nnoremap <Leader>gll :exe ':!cd ' . expand('%:p:h') . '; git l'<CR>

nnoremap <Leader>gpl :Git pull<CR>
nnoremap <Leader>gpr :Git pull --rebase<CR>

nnoremap <Leader>gps :Git push<CR>
nnoremap <Leader>gpf :Git push --force<CR>

nnoremap <Leader>gbl :Gblame<CR>

"nnoremap <Leader>gb :Gblame<CR>
"nnoremap <Leader>gL :exe ':!cd ' . expand('%:p:h') . '; git la'<CR>
"nnoremap <Leader>gh :Silent Glog<CR>
"nnoremap <Leader>gH :Silent Glog<CR>:set nofoldenable<CR>
"nnoremap <Leader>gr :Gread<CR>
"nnoremap <Leader>gw :Gwrite<CR>
"nnoremap <Leader>g- :Silent Git stash<CR>:e<CR>
"nnoremap <Leader>g+ :Silent Git stash pop<CR>:e<CR>
"noremap <silent> <f12> :Gstatus<CR>

"ok  s = status
"ok  l = log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --
"    # Add
"    au = add -u
"    all = add --all .
"    # Commit
"ok  co = commit -m
"ok  ca = commit --amend
"    cam = commit --amend -m
"    # Diff
"ok  ds = diff --staged
"    # Push
"ok  pf = push --force
"    # Others
"ok  pb = pull --rebase


Plug 'tpope/vim-commentary'


Plug 'terryma/vim-multiple-cursors'
let g:multi_cursor_start_key = '<F6>'
let g:multi_cursor_quit_key = '<C-q>'


function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    !./install.py
  endif
endfunction

Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }

" nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
" inoremap <S-Tab> pumvisible() ? "\<C-P>" : "\<S-Tab>"
" let g:ycm_complete_in_comments = 1
" let g:ycm_collect_identifiers_from_tags_files = 1
" let g:ycm_seed_identifiers_with_syntax = 1
" let g:ycm_add_preview_to_completeopt = 1
" let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:ycm_key_detailed_diagnostics = '<leader>yd'
let g:EclimCompletionMethod = 'omnifunc'


""Plug 'mattn/gist-vim'


""Plug 'jaxbot/github-issues.vim'


Plug 'tpope/vim-markdown'


""Plug 'Rykka/clickable.vim'


""Plug 'Rykka/riv.vim'

Plug 'osyo-manga/vim-over'
" Fire up manually with :OverCommandLine


Plug 'Rykka/InstantRst'
Plug 'wakatime/vim-wakatime'


Plug 'mileszs/ack.vim'
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
let g:ackhighlight = 1
let g:ack_autofold_results = 1
let g:ack_qhandler = "botright copen 30"

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

  " Override ack with ag
  let g:ackprg = 'ag --vimgrep'
  "let g:ackprg = 'ag --nogroup --nocolor'
endif

" bind K to grep word under cursor
"nnoremap S :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

"Plug 'dkprice/vim-easygrep'
