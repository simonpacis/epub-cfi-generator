let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <M-Bslash> <Plug>(codeium-complete)
imap <M-[> <Plug>(codeium-previous)
imap <M-]> <Plug>(codeium-next-or-complete)
imap <Plug>(codeium-complete) <Cmd>call codeium#Complete()
imap <Plug>(codeium-previous) <Cmd>call codeium#CycleCompletions(-1)
imap <Plug>(codeium-next-or-complete) <Cmd>call codeium#CycleOrComplete()
imap <Plug>(codeium-next) <Cmd>call codeium#CycleCompletions(1)
imap <Plug>(codeium-dismiss) <Cmd>call codeium#Clear()
imap <C-G>S <Plug>ISurround
imap <C-G>s <Plug>Isurround
imap <C-S> <Plug>Isurround
inoremap <Plug>(emmet-merge-lines) =emmet#util#closePopup()
=emmet#mergeLines()
inoremap <Plug>(emmet-anchorize-summary) =emmet#util#closePopup()
=emmet#anchorizeURL(1)
inoremap <Plug>(emmet-anchorize-url) =emmet#util#closePopup()
=emmet#anchorizeURL(0)
inoremap <Plug>(emmet-remove-tag) =emmet#util#closePopup()
=emmet#removeTag()
inoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
inoremap <Plug>(emmet-toggle-comment) =emmet#util#closePopup()
=emmet#toggleComment()
inoremap <Plug>(emmet-image-encode) =emmet#util#closePopup()
=emmet#imageEncode()
inoremap <Plug>(emmet-image-size) =emmet#util#closePopup()
=emmet#imageSize()
inoremap <Plug>(emmet-move-prev-item) :call emmet#moveNextPrevItem(1)
inoremap <Plug>(emmet-move-next-item) :call emmet#moveNextPrevItem(0)
inoremap <Plug>(emmet-move-prev) =emmet#util#closePopup()
=emmet#moveNextPrev(1)
inoremap <Plug>(emmet-move-next) =emmet#util#closePopup()
=emmet#moveNextPrev(0)
inoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
inoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
inoremap <Plug>(emmet-update-tag) =emmet#util#closePopup()
=emmet#updateTag()
inoremap <Plug>(emmet-expand-word) =emmet#util#closePopup()
=emmet#expandAbbr(1,"")
inoremap <Plug>(emmet-expand-abbr) =emmet#util#closePopup()
=emmet#expandAbbr(0,"")
map! <D-v> *
nnoremap  h
nnoremap <NL> j
nnoremap  k
nnoremap  l
nnoremap <silent>  :CtrlP
nnoremap -m zg
nnoremap -, [s
nnoremap -. ]s
nnoremap <silent> -cp :call CenterParagraph()
map -y <Plug>(operator-poweryank-osc52)
vnoremap -d ""d
nnoremap -D ""D
nnoremap -d ""d
nnoremap -ø :Mdto docx
nnoremap -æ :Mdto pdf
nnoremap -p :call WlTable()
nnoremap -bl :ls
nnoremap -bq :bp | bd #
nnoremap -h :bprevious
nnoremap -l :bnext
nnoremap -t :call NewBufferWithoutNerdTree()
nnoremap -9 :blast
nnoremap -8 <Plug>AirlineSelectTab8
nnoremap -7 <Plug>AirlineSelectTab7
nnoremap -6 <Plug>AirlineSelectTab6
nnoremap -5 <Plug>AirlineSelectTab5
nnoremap -4 <Plug>AirlineSelectTab4
nnoremap -3 <Plug>AirlineSelectTab3
nnoremap -2 <Plug>AirlineSelectTab2
nnoremap -1 <Plug>AirlineSelectTab1
nnoremap -q :Bonly
nnoremap -w :bp|bd #
nnoremap -n :call ToggleNERDTree()
nmap -r :NERDTreeFocus
R
nnoremap -å :Combine
nnoremap <silent> -z :call GoyoOpenWithoutNerdTree()
imap ¨m <Plug>(emmet-merge-lines)
imap ¨A <Plug>(emmet-anchorize-summary)
imap ¨a <Plug>(emmet-anchorize-url)
imap ¨k <Plug>(emmet-remove-tag)
imap ¨j <Plug>(emmet-split-join-tag)
imap ¨/ <Plug>(emmet-toggle-comment)
imap ¨I <Plug>(emmet-image-encode)
imap ¨i <Plug>(emmet-image-size)
imap ¨N <Plug>(emmet-move-prev)
imap ¨n <Plug>(emmet-move-next)
imap ¨D <Plug>(emmet-balance-tag-outword)
imap ¨d <Plug>(emmet-balance-tag-inward)
imap ¨u <Plug>(emmet-update-tag)
imap ¨; <Plug>(emmet-expand-word)
imap ¨, <Plug>(emmet-expand-abbr)
imap Ü <Plug>(codeium-complete)
imap Û <Plug>(codeium-previous)
imap Ý <Plug>(codeium-next-or-complete)
nnoremap D "_D
xmap S <Plug>VSurround
nnoremap <silent> [unite]cx :exec "Unite  -default-action=start citation/key:" . escape(input('Search Key : '),' ') 
nnoremap <silent> [unite]c :Unite -buffer-name=citation-start-insert -default-action=append      citation/key
nnoremap [unite] <Nop>
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
vnoremap d "_d
nnoremap d "_d
xnoremap gx <ScriptCmd>vim9.Open(getregion(getpos('v'), getpos('.'), { type: mode() })->join())
nnoremap gx <ScriptCmd>vim9.Open(GetWordUnderCursor())
xmap gS <Plug>VgSurround
nnoremap x "_x
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
onoremap <silent> <Plug>(operator-poweryank-osc52) g@
xnoremap <silent> <Plug>(operator-poweryank-osc52) :call poweryank#opfunc_osc52(visualmode(), 1)
nnoremap <silent> <Plug>(operator-poweryank-osc52) :set opfunc=poweryank#opfunc_osc52
g@
nnoremap <silent> <Plug>SurroundRepeat .
vnoremap <Plug>(emmet-code-pretty) :call emmet#codePretty()
nnoremap <Plug>(emmet-merge-lines) :call emmet#mergeLines()
nnoremap <Plug>(emmet-anchorize-summary) :call emmet#anchorizeURL(1)
nnoremap <Plug>(emmet-anchorize-url) :call emmet#anchorizeURL(0)
nnoremap <Plug>(emmet-remove-tag) :call emmet#removeTag()
nnoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
nnoremap <Plug>(emmet-toggle-comment) :call emmet#toggleComment()
nnoremap <Plug>(emmet-image-encode) :call emmet#imageEncode()
nnoremap <Plug>(emmet-image-size) :call emmet#imageSize()
nnoremap <Plug>(emmet-move-prev-item) :call emmet#moveNextPrevItem(1)
nnoremap <Plug>(emmet-move-next-item) :call emmet#moveNextPrevItem(0)
nnoremap <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
nnoremap <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
vnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
nnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
vnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
nnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
nnoremap <Plug>(emmet-update-tag) :call emmet#updateTag()
nnoremap <Plug>(emmet-expand-word) :call emmet#expandAbbr(1,"")
vnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(2,"")
nnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(3,"")
nnoremap <silent> <C-P> :CtrlP
xnoremap <silent> <Plug>(Limelight) :Limelight
nnoremap <silent> <Plug>(Limelight) :set opfunc=limelight#operator
g@
noremap <Right> <Nop>
noremap <Left> <Nop>
noremap <Down> <Nop>
noremap <Up> <Nop>
nnoremap <C-H> h
nnoremap <C-L> l
nnoremap <C-K> k
nnoremap <C-J> j
vmap <BS> "-d
vmap <D-x> "*d
vmap <D-c> "*y
vmap <D-v> "-d"*P
nmap <D-v> "*P
imap S <Plug>ISurround
imap s <Plug>Isurround
imap  <Plug>Isurround
vmap ¨c <Plug>(emmet-code-pretty)
nmap ¨m <Plug>(emmet-merge-lines)
nmap ¨A <Plug>(emmet-anchorize-summary)
nmap ¨a <Plug>(emmet-anchorize-url)
nmap ¨k <Plug>(emmet-remove-tag)
nmap ¨j <Plug>(emmet-split-join-tag)
nmap ¨/ <Plug>(emmet-toggle-comment)
nmap ¨I <Plug>(emmet-image-encode)
nmap ¨i <Plug>(emmet-image-size)
nmap ¨N <Plug>(emmet-move-prev)
nmap ¨n <Plug>(emmet-move-next)
vmap ¨D <Plug>(emmet-balance-tag-outword)
nmap ¨D <Plug>(emmet-balance-tag-outword)
vmap ¨d <Plug>(emmet-balance-tag-inward)
nmap ¨d <Plug>(emmet-balance-tag-inward)
nmap ¨u <Plug>(emmet-update-tag)
nmap ¨; <Plug>(emmet-expand-word)
vmap ¨, <Plug>(emmet-expand-abbr)
nmap ¨, <Plug>(emmet-expand-abbr)
cnoreabbr <expr> !! getcmdtype() == ':' && getcmdline() ==# '!!' ? 'Remote' : '!!'
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set clipboard=unnamed
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set hidden
set laststatus=2
set listchars=tab:|\ 
set mouse=n
set regexpengine=2
set runtimepath=
set runtimepath+=~/.vim
set runtimepath+=~/.vim/pack/vendor/start/nerdtree
set runtimepath+=~/.vim/pack/thirdparty/start/vimoutliner
set runtimepath+=~/.vim/pack/themes/start/dracula
set runtimepath+=~/.vim/pack/Exafunction/start/windsurf.vim
set runtimepath+=~/.vim/pack/dist/start/vim-airline
set runtimepath+=~/.vim/plugged/limelight.vim
set runtimepath+=~/.vim/bundle/ack.vim
set runtimepath+=~/.vim/bundle/citation.vim
set runtimepath+=~/.vim/bundle/codi.vim
set runtimepath+=~/.vim/bundle/ctrlp.vim
set runtimepath+=~/.vim/bundle/emmet-vim
set runtimepath+=~/.vim/bundle/goyo.vim
set runtimepath+=~/.vim/bundle/gruvbox
set runtimepath+=~/.vim/bundle/loremipsum
set runtimepath+=~/.vim/bundle/nerdtree
set runtimepath+=~/.vim/bundle/PHP-Indenting-for-VIm
set runtimepath+=~/.vim/bundle/send.vim
set runtimepath+=~/.vim/bundle/sparkup
set runtimepath+=~/.vim/bundle/surround
set runtimepath+=~/.vim/bundle/unite.vim
set runtimepath+=~/.vim/bundle/vim-colors-pencil
set runtimepath+=~/.vim/bundle/vim-javascript
set runtimepath+=~/.vim/bundle/vim-poweryank
set runtimepath+=~/.vim/bundle/vim-svelte
set runtimepath+=~/.vim/bundle/Vundle.vim
set runtimepath+=/usr/local/share/vim/vimfiles
set runtimepath+=/usr/local/share/vim/vim91
set runtimepath+=/usr/local/share/vim/vim91/pack/dist/opt/netrw
set runtimepath+=~/.vim/pack/themes/start/dracula/after
set runtimepath+=/usr/local/share/vim/vimfiles/after
set runtimepath+=~/.vim/bundle/vim-javascript/after
set runtimepath+=~/.vim/after
set shiftwidth=2
set showtabline=2
set smartindent
set tabline=%!airline#extensions#tabline#get()
set tabstop=2
set viminfo='100,<50,s10,h,!
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/Development/epub-cfi-generator
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +14 README.md
badd +3 .gitignore
argglobal
%argdel
edit README.md
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 76) / 152)
exe 'vert 2resize ' . ((&columns * 120 + 76) / 152)
argglobal
enew
balt README.md
let s:cpo_save=&cpo
set cpo&vim
nnoremap <buffer> <silent> <NL> :call nerdtree#ui_glue#invokeKeyMap("<C-j>")
nnoremap <buffer> <silent>  :call nerdtree#ui_glue#invokeKeyMap("<C-k>")
nnoremap <buffer> <silent> 
 :call nerdtree#ui_glue#invokeKeyMap("<CR>")
nnoremap <buffer> <silent> ? :call nerdtree#ui_glue#invokeKeyMap("?")
nnoremap <buffer> <silent> A :call nerdtree#ui_glue#invokeKeyMap("A")
nnoremap <buffer> <silent> B :call nerdtree#ui_glue#invokeKeyMap("B")
nnoremap <buffer> <silent> C :call nerdtree#ui_glue#invokeKeyMap("C")
nnoremap <buffer> <silent> CD :call nerdtree#ui_glue#invokeKeyMap("CD")
nnoremap <buffer> <silent> D :call nerdtree#ui_glue#invokeKeyMap("D")
nnoremap <buffer> <silent> F :call nerdtree#ui_glue#invokeKeyMap("F")
nnoremap <buffer> <silent> I :call nerdtree#ui_glue#invokeKeyMap("I")
nnoremap <buffer> <silent> J :call nerdtree#ui_glue#invokeKeyMap("J")
nnoremap <buffer> <silent> K :call nerdtree#ui_glue#invokeKeyMap("K")
nnoremap <buffer> <silent> O :call nerdtree#ui_glue#invokeKeyMap("O")
nnoremap <buffer> <silent> P :call nerdtree#ui_glue#invokeKeyMap("P")
nnoremap <buffer> <silent> R :call nerdtree#ui_glue#invokeKeyMap("R")
nnoremap <buffer> <silent> T :call nerdtree#ui_glue#invokeKeyMap("T")
nnoremap <buffer> <silent> U :call nerdtree#ui_glue#invokeKeyMap("U")
nnoremap <buffer> <silent> X :call nerdtree#ui_glue#invokeKeyMap("X")
nnoremap <buffer> <silent> cd :call nerdtree#ui_glue#invokeKeyMap("cd")
nnoremap <buffer> <silent> e :call nerdtree#ui_glue#invokeKeyMap("e")
nnoremap <buffer> <silent> f :call nerdtree#ui_glue#invokeKeyMap("f")
nnoremap <buffer> <silent> go :call nerdtree#ui_glue#invokeKeyMap("go")
nnoremap <buffer> <silent> gi :call nerdtree#ui_glue#invokeKeyMap("gi")
nnoremap <buffer> <silent> gs :call nerdtree#ui_glue#invokeKeyMap("gs")
nnoremap <buffer> <silent> i :call nerdtree#ui_glue#invokeKeyMap("i")
nnoremap <buffer> <silent> m :call nerdtree#ui_glue#invokeKeyMap("m")
nnoremap <buffer> <silent> o :call nerdtree#ui_glue#invokeKeyMap("o")
nnoremap <buffer> <silent> p :call nerdtree#ui_glue#invokeKeyMap("p")
nnoremap <buffer> <silent> q :call nerdtree#ui_glue#invokeKeyMap("q")
nnoremap <buffer> <silent> r :call nerdtree#ui_glue#invokeKeyMap("r")
nnoremap <buffer> <silent> s :call nerdtree#ui_glue#invokeKeyMap("s")
nnoremap <buffer> <silent> t :call nerdtree#ui_glue#invokeKeyMap("t")
nnoremap <buffer> <silent> u :call nerdtree#ui_glue#invokeKeyMap("u")
nnoremap <buffer> <silent> x :call nerdtree#ui_glue#invokeKeyMap("x")
nnoremap <buffer> <silent> <MiddleMouse> :call nerdtree#ui_glue#invokeKeyMap("<MiddleMouse>")
nnoremap <buffer> <silent> <2-LeftMouse> :call nerdtree#ui_glue#invokeKeyMap("<2-LeftMouse>")
nnoremap <buffer> <silent> <C-K> :call nerdtree#ui_glue#invokeKeyMap("<C-k>")
nnoremap <buffer> <silent> <C-J> :call nerdtree#ui_glue#invokeKeyMap("<C-j>")
nnoremap <buffer> <silent> <LeftRelease> <LeftRelease>:call nerdtree#ui_glue#invokeKeyMap("<LeftRelease>")
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=hide
setlocal nobuflisted
setlocal buftype=nofile
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*\ %s\ */
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal completeopt=
setlocal concealcursor=nvic
setlocal conceallevel=2
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal eventignorewin=
setlocal noexpandtab
if &filetype != 'nerdtree'
setlocal filetype=nerdtree
endif
setlocal fillchars=
setlocal findfunc=
setlocal fixendofline
setlocal foldcolumn=0
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatoptions=tcq
setlocal formatprg=
setlocal grepformat=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal isexpand=
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal lhistory=10
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
set list
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal nomodifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal readonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal nosmoothscroll
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'nerdtree'
setlocal syntax=nerdtree
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixbuf
setlocal nowinfixheight
setlocal winfixwidth
setlocal nowrap
setlocal wrapmargin=0
wincmd w
argglobal
balt .gitignore
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <C-N> <Plug>SparkupNext
imap <buffer> <C-E> <Plug>SparkupExecute
xnoremap <buffer> <silent> [[ :exe "normal! gv"|call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "bsW")
nnoremap <buffer> <silent> [[ :call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "bsW")
xnoremap <buffer> <silent> ]] :exe "normal! gv"|call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "sW")
nnoremap <buffer> <silent> ]] :call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "sW")
imap <buffer>  <Plug>SparkupExecute
imap <buffer>  <Plug>SparkupNext
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=fb:*,fb:-,fb:+,n:>
setlocal commentstring=<!--\ %s\ -->
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal completeopt=
setlocal concealcursor=
setlocal conceallevel=0
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal eventignorewin=
setlocal expandtab
if &filetype != 'markdown'
setlocal filetype=markdown
endif
setlocal fillchars=
setlocal findfunc=
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\|^\\s*[-*+]\\s\\+\\|^\\[^\\ze[^\\]]\\+\\]:\\&^.\\{4\\}
setlocal formatoptions=tcqln
setlocal formatprg=
setlocal grepformat=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal isexpand=
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal lhistory=10
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
set list
setlocal list
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal nosmoothscroll
setlocal softtabstop=4
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'markdown'
setlocal syntax=markdown
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixbuf
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 32 - ((31 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 32
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 76) / 152)
exe 'vert 2resize ' . ((&columns * 120 + 76) / 152)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
set shortmess=filnxtToOS
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
let g:Pyvar=0