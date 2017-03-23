autocmd FileType html,htmldjango,j2,xml setlocal ts=4 sts=4 sw=4 tw=0 shiftround expandtab

" Based on:
" http://gosukiwi.svbtle.com/vim-configuration-for-web-development
" http://stackoverflow.com/questions/3173963/useful-vim-plugins-for-web-development-and-design-php-html-css-javascript

Plug 'mattn/emmet-vim'
" Default trigger: Ctrl + y + ','

"let g:user_emmet_install_global = 0
"autocmd FileType html,css EmmetInstall
"let g:user_emmet_leader_key='<C-E>'


""Plug 'skammer/vim-css-color'
Plug 'ap/vim-css-color'
Plug 'hail2u/vim-css3-syntax'

Plug 'lepture/vim-jinja'

Plug 'jaxbot/browserlink.vim'

""Plug 'vim-scripts/FuzzyFinder'
"" Plug 'Lokaltog/vim-easymotion'
"" Plug 'Shutnik/jshint2.vim'
"" Plug 'kchmck/vim-coffee-script'

"" Plug 'groenewege/vim-less'
"" Plug 'tpope/vim-haml'
"" Plug 'digitaltoad/vim-jade'
"" Plug 'myhere/vim-nodejs-complete'
"" Plug 'moll/vim-node'
"" Plug 'jelera/vim-javascript-syntax'
"" Plug 'tpope/vim-sleuth'
"" Plug 'tpope/vim-commentary'

Plug 'elzr/vim-json'
Plug 'sukima/xmledit'
