
" Encoding
set encoding=utf-8

" Allow unsaved changes when opening another file
set hidden

" Search
set ignorecase
set smartcase
set incsearch


" Substitute all matches in the line
set gdefault


" History and undo sizes
set history=1000
set undolevels=1000


" Share the system clipboard
set clipboard=unnamedplus


" Scrolling by blocks
set scrolloff=3
let &scrolljump=&lines / 2 - 1


" Terminal escape timeout
set ttimeout
set ttimeoutlen=100


" Extended backspace
set backspace=indent,eol,start


" Auto-indent
set autoindent


" Move backup files
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp


" Line length and wrapping
set textwidth=80
set colorcolumn=81
highlight ColorColumn ctermbg=233


" Hide black line tildas
highlight NonText ctermfg=0

filetype plugin indent on


" Omni-completion
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone


" Wildmenu
set wildmenu
set wildmode=longest:full,full
set wildcharm=<Tab>
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.pyc,*/.ropeproject/*,*.egg,*.egg-info/*,*build/*,*bin/*,*target/*


" Disable swap files
set noswapfile


" Spell checking
"autocmd BufRead *.tex,*.md setlocal spell spelllang=en_au
"autocmd BufRead *.tex,*.md,*.rst setlocal spell spelllang=en,pt,es,fr,it
autocmd BufRead *.tex,*.md,*.rst setlocal spell spelllang=en
autocmd BufRead *.tex,*.md,*.rst highlight clear SpellBad
autocmd BufRead *.tex,*.md,*.rst highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
"set spellfile=~/.vim/spell.en.add
nmap <leader>= 1z=
":inoremap <C-z> <Esc>[s1z=gi

" Yaml
autocmd BufReadPre *.yaml setlocal nowrap
autocmd BufReadPre *.yaml setlocal tabstop=2
autocmd BufReadPre *.yaml setlocal softtabstop=2
autocmd BufReadPre *.yaml setlocal shiftwidth=2
" autocmd BufEnter,BufNew,BufReadPost,BufWritePost *.yaml match yamlPathKeyword "\v[a-zA-Z_.*]+[a-zA-Z0-9-_.*]*/[a-zA-Z0-9-_.*/]*"
" highlight link yamlPathKeyword Keyword
