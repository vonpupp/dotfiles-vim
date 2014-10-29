" Key bindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Home row beginning / end of line
noremap H ^
noremap L $

" Escape
inoremap jk <Esc>`^
" inoremap kj <Esc>`^
inoremap <C-q> <Esc>`^
noremap <C-q> <Esc>
vnoremap <C-q> <Esc>
cmap <C-q> <C-c>

" Enter the command-line mode
noremap <CR> :

" Better command-line editing
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" Open .vimrc
nnoremap <leader>ve :split $MYVIMRC<CR>

" Source .vimrc
nnoremap <leader>vs :source $MYVIMRC<CR>i<Esc>

" Operator movements
onoremap p i(
onoremap b i{
onoremap ( i(
onoremap { i{
onoremap [ i[
onoremap < i<
onoremap q i'
onoremap ` i"
onoremap ' i'
onoremap " i"
onoremap np :<C-u>normal! f(lvi(<CR>
onoremap n( :<C-u>normal! f(lvi(<CR>
onoremap n{ :<C-u>normal! f{lvi{<CR>
onoremap nb :<C-u>normal! fblvib<CR>
onoremap n[ :<C-u>normal! f[lvi[<CR>
onoremap n< :<C-u>normal! f<lvi<<CR>
onoremap nq :<C-u>normal! f'lvi'<CR>
onoremap n` :<C-u>normal! f"lvi"<CR>
onoremap n' :<C-u>normal! f'lvi'<CR>
onoremap n" :<C-u>normal! f"lvi"<CR>

onoremap q :<C-u>call <SID>SmartMotionsQuote()<CR>
nnoremap <leader>A :call <SID>GetClosestCharInFront()<CR>

function! s:GetClosestCharInFront()
    let s:chars = ['"', "'"]
    return s:GetClosestChar(s:chars, 1)
endfunction

function! s:GetClosestChar(chars, direction)
    " let s:chars = ['"', "'"]
    let s:line = getline('.')
    let s:col = col('.')
    if a:direction
        let s:range = range(s:col, len(s:line))
    else
        let s:range = range(0, s:col - 1)
    endif
    " echom s:col
    " echom s:line
    for s:c in s:range
        if index(a:chars, s:line[s:c]) > -1
            echom s:line[s:c]
            return
        endif
    endfor
    echom "Not found"
endfunction

" test 'qwe1' asd 'qwe' asd 'qwe3' asd
" test `qwe1` asd `qwe2` asd `qwe3` asd
function! s:SmartMotionsQuote()
    let s:line = getline('.')
    " let s:column = getpos('.')[2]
    let s:column = col('.')
    let s:lineHead = s:line[: s:column - 1]
    let s:lineTail = s:line[s:column :]
    let s:quotes = ["'", '"']
    let s:headQuoteCnts = {}
    let s:tailQuoteCnts = {}
    let s:totalQuoteCnts = {}

    " echom string(searchpos("'", 'cs'))

    for s:q in s:quotes
        let s:headQuoteCnts[s:q] = strlen(substitute(s:lineHead, '[^' . s:q . ']', '', 'g'))
        let s:tailQuoteCnts[s:q] = strlen(substitute(s:lineTail, '[^' . s:q . ']', '', 'g'))
        let s:totalQuoteCnts[s:q] = s:headQuoteCnts[s:q] + s:tailQuoteCnts[s:q]
    endfor

    for s:q in s:quotes
        " if s:headQuoteCnts[s:q] % 2 && !(s:totalQuoteCnts[s:q] % 2)
        if s:headQuoteCnts[s:q] % 2 && s:tailQuoteCnts[s:q] > 0
            exec 'normal! vi' . s:q
            return
        endif
    endfor

    for s:q in s:quotes
        if s:tailQuoteCnts[s:q] > 0
            exec 'normal! f' . s:q . 'lvi'. s:q
            return
        endif
    endfor

    for s:q in s:quotes
        if s:headQuoteCnts[s:q] > 0
            exec 'normal! F' . s:q . 'vi'. s:q
            return
        endif
    endfor
endfunction

" Insert mode movement
inoremap OO <Esc>o
" inoremap CC <Esc>C
" inoremap DD <C-o>dd
inoremap UU <C-o>u

" AFU: Removed
" inoremap <C-k> <Up>
" inoremap <C-j> <Down>
" inoremap <C-l> <Right>
" inoremap <C-h> <Left>

" Insert mode delete a character forward
" inoremap <C-l> <Delete>

" Insert mode movement
" inoremap <C-j> <S-Left>
" inoremap <C-k> <S-Right>

" Insert mode beginning / end of line
inoremap <C-a> <Home>
inoremap <C-e> <End>

" Insert mode delete a word forward
inoremap <C-d> <C-o>dw

" Insert mode dedent the current line
inoremap <C-f> <C-d>

" Save
noremap  <silent> <C-s> :update<CR>
vnoremap <silent> <C-s> <C-c>:update<CR>
inoremap <silent> <C-s> <C-o>:update<CR>

" Quit
noremap Q :quit<CR>

" Reflow a paragraph
vmap <leader>q gq
nmap <leader>q gqap

" AFU: Removed
" Jump between windows
" noremap <leader>w <C-w>w
" noremap <Up> <C-w>k
" noremap <Down> <C-w>j
" noremap <Left> <C-w>h
" noremap <Right> <C-w>l

" Jump between buffers
noremap <silent> <leader>j :bnext<CR>
noremap <silent> <leader>k :bprev<CR>
noremap <silent> <leader>l :b#<CR>

" Delete the current buffer
noremap <leader>d :bdelete<CR>

" Edit a file
noremap <leader>e :e <Tab>

" AFU: Removed
" Scroll screen with the cursor
" noremap <C-j> j<C-e>
" noremap <C-k> k<C-y>

" Very magic regex search by default
nnoremap / /\v

" Center the screen with search jumps
noremap n nzz
noremap N Nzz

" Sort in visual mode
vnoremap <leader>s :sort<CR>

" Moving blocks of text in visual mode
vnoremap < <gv
vnoremap > >gv

" Copy the selected region and jump to its end
vmap y y`]

" Up / down on wrapped lines
nnoremap j gj
nnoremap k gk

" Force saving that requires root permissions
cmap w!! %!sudo tee > /dev/null %

" Select all text
map <leader>a ggVG

" Easier increment / decrement
nnoremap + <C-a>
nnoremap - <C-x>

" Duplicate a line and comment the first copy
nmap gcd yyPgcc

" Indent everything
noremap <leader>I gg=G<C-o><C-o>

" Indent selection in visual mode
vnoremap <leader>i =

" Indent the current line
noremap <leader>i v=

" Switch capitalization of the first letter of the current word
nmap crf m`T<Space>~``

" Change current word - kill
noremap K ciw

" Change current WORD - kill
noremap J ciW

" Join lines
nnoremap <leader>J J

" Insert a space
nnoremap <leader><Space> i<Space><Esc>


"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
"nnoremap j gj
"nnoremap k gk
