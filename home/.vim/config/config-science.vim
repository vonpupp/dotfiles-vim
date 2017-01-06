Plug 'LaTeX-Box-Team/LaTeX-Box'
let g:LatexBox_complete_inlineMath = 1
let g:LatexBox_latexmk_options="-pdf -pvc"
" let g:LatexBox_latexmk_options = '-pv'
let g:LatexBox_viewer = 'zathura'
let g:LatexBox_output_type="pdf"
let g:LatexBox_latexmk_async=1
autocmd BufReadPre *.tex setlocal tabstop=2
autocmd BufReadPre *.tex setlocal softtabstop=2
autocmd BufReadPre *.tex setlocal shiftwidth=2
autocmd BufReadPre *.tex setlocal expandtab
autocmd BufReadPre *.tex nmap <leader>t :LatexTOCToggle<CR>
autocmd BufReadPre *.tex imap <buffer> [[ \begin{
autocmd BufReadPre *.tex imap <buffer> ]] <Plug>LatexCloseCurEnv
autocmd BufReadPre *.tex nmap <buffer> <F5> <Plug>LatexChangeEnv
autocmd BufReadPre *.tex vmap <buffer> <F6> <Plug>LatexWrapSelection
autocmd BufReadPre *.tex vmap <buffer> <F7> <Plug>LatexEnvWrapSelection


Plug 'jcfaria/Vim-R-plugin'


Plug 'JuliaLang/julia-vim'


Plug 'beloglazov/vim-online-thesaurus'


Plug 'chrisbra/csv.vim'
hi CSVColumnEven ctermbg=0
" hi CSVColumnOdd  ctermbg=235
hi CSVColumnOdd  ctermbg=0
let g:csv_autocmd_arrange = 1
let g:csv_nomap_cr = 1
let g:csv_highlight_column = 'y'


Plug 'tpope/vim-abolish'
