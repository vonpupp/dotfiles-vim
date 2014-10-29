
" Tab config
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab


Bundle 'klen/python-mode'
let g:pymode_run = 0
let g:pymode_rope = 0
let g:pymode_folding = 0
let g:pymode_indent = 0
let g:pymode_lint_cwindow = 0
let g:pymode_doc = 0
let g:pymode_doc_key = ''
let g:pymode_lint_ignore = 'W0401,E125,C901,C0110'
" let g:pymode_breakpoint_key = '<localleader>b'
let g:pymode_options = 0
autocmd FileType python noremap <F5> :PyLint<CR>
autocmd FileType python setlocal complete+=t
autocmd FileType python setlocal formatoptions-=t
autocmd FileType python setlocal nowrap
autocmd FileType python setlocal commentstring=#%s
" https://docs.google.com/presentation/d/1chL_z5BHfUR-VLbLDfp-GntCbX2XcobKe-QgsPZD_xk/present#slide=id.i115
map <Leader>g :call RopeGotoDefinition()<CR>
let ropevim_enable_shorcuts = 1
let g:pymode_rope_goto_def_newin = 1
let g:pymode_rope_extended_complete = 1
let g:pymode_syntax = 1
let g:pymode_breakpoint = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT <C-c>
set completeopt=longest,menuone


Bundle 'python_match.vim'


Bundle 'Valloric/python-indent'


Bundle 'davidhalter/jedi-vim'
let g:jedi#auto_initialization = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#popup_on_dot = 0
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#completions_enable = 0
nnoremap <silent> <buffer> <leader>K :call jedi#show_documentation()<cr>
nnoremap <silent> <buffer> <leader>R :call jedi#rename()<cr>
nnoremap <silent> <buffer> <leader>U :call jedi#usages()<cr>


Bundle 'bitc/vim-bad-whitespace'
nnoremap <leader>W :EraseBadWhitespace<CR>


