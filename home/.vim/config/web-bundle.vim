" Based on:
" http://gosukiwi.svbtle.com/vim-configuration-for-web-development
" http://stackoverflow.com/questions/3173963/useful-vim-plugins-for-web-development-and-design-php-html-css-javascript

Bundle 'mattn/emmet-vim'

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

let g:user_emmet_leader_key='<C-E>'

Bundle 'jaxbot/browserlink.vim'

" Bundle 'vim-scripts/FuzzyFinder'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'Shutnik/jshint2.vim'
" Bundle 'skammer/vim-css-color'
" Bundle 'hail2u/vim-css3-syntax'
" Bundle 'kchmck/vim-coffee-script'
" Bundle 'groenewege/vim-less'
" Bundle 'tpope/vim-haml'
" Bundle 'digitaltoad/vim-jade'