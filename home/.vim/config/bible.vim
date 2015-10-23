Bundle 'vonpupp/vim-bible'
let g:BibleTranslation = "KJV"
let g:BibleFormat = "\\4"
let g:BibleLocale = "en"
let g:BibleDelimiter = " "

nnoremap <leader>v y :call Bible()<CR>
vnoremap <leader>v y :call Bible(@*)<CR>

