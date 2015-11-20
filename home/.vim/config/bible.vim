Bundle 'vonpupp/vim-bible'
let g:BibleTranslation = "nlt-se"
let g:BibleFormat = "\\4"
let g:BibleLocale = "en"
let g:BibleDelimiter = " "

nnoremap <leader>v y :call Bible()<CR>
vnoremap <leader>v y :call Bible(@*)<CR>

