Plug 'vonpupp/vim-bible'
let g:BibleTranslation = "nlt-se"
let g:BibleFormat = "\\4"
let g:BibleLocale = "en"
let g:BibleDelimiter = " "

"nnoremap <C-I>n y :call Bible("nlt-se", "\\4", "en", " ", 0)<CR>
"vnoremap <C-I>n y :call Bible("nlt-se", "\\4", "en", " ", 0, @*)<CR>

nnoremap <C-I>n y :call Bible("nvi", "\\4", "en", " ", 0)<CR>
vnoremap <C-I>n y :call Bible("nvi", "\\4", "en", " ", 0, @*)<CR>

nnoremap <C-I>t y :call Bible("ntlh_com_cabecalhos", "\\4", "en", " ", 0)<CR>
vnoremap <C-I>t y :call Bible("ntlh_com_cabecalhos", "\\4", "en", " ", 0, @*)<CR>

nnoremap <C-I>i y :call Bible("TS2009", "\\4", "en", " ", 0)<CR>
vnoremap <C-I>i y :call Bible("TS2009", "\\4", "en", " ", 0, @*)<CR>

nnoremap <C-I>k y :call Bible("KJV", "\\4", "en", " ", 1)<CR>
vnoremap <C-I>k y :call Bible("KJV", "\\4", "en", " ", 1, @*)<CR>

nnoremap <C-I>j y :call Bible("jfa-rc", "\\4", "en", " ", 0)<CR>
vnoremap <C-I>j y :call Bible("jfa-rc", "\\4", "en", " ", 0, @*)<CR>
