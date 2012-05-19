let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <Plug>ZenCodingAnchorizeSummary :call zencoding#anchorizeURL(1)a
inoremap <Plug>ZenCodingAnchorizeURL :call zencoding#anchorizeURL(0)a
inoremap <Plug>ZenCodingRemoveTag :call zencoding#removeTag()a
inoremap <Plug>ZenCodingSplitJoinTagInsert :call zencoding#splitJoinTag()a
inoremap <Plug>ZenCodingToggleComment :call zencoding#toggleComment()a
inoremap <Plug>ZenCodingImageSize :call zencoding#imageSize()a
inoremap <Plug>ZenCodingPrev :call zencoding#moveNextPrev(1)
inoremap <Plug>ZenCodingNext :call zencoding#moveNextPrev(0)
inoremap <Plug>ZenCodingBalanceTagOutwardInsert :call zencoding#balanceTag(-1)a
inoremap <Plug>ZenCodingBalanceTagInwardInsert :call zencoding#balanceTag(1)a
inoremap <Plug>ZenCodingExpandWord u:call zencoding#expandAbbr(1)a
inoremap <Plug>ZenCodingExpandAbbr u:call zencoding#expandAbbr(0)a
inoremap <silent> <S-Tab> =BackwardsSnippet()
inoremap <C-Tab> 	
map  h
nmap <NL> j
xmap <NL> j
snoremap <silent> <NL> i<Right>=TriggerSnippet()
omap <NL> j
map  k
map  l
map  :sb 
map  <NL>:q:botright cw 10
snoremap  b<BS>
nmap A <Plug>ZenCodingAnchorizeSummary
nmap a <Plug>ZenCodingAnchorizeURL
nmap k <Plug>ZenCodingRemoveTag
nmap j <Plug>ZenCodingSplitJoinTagNormal
vmap m <Plug>ZenCodingMergeLines
nmap / <Plug>ZenCodingToggleComment
nmap i <Plug>ZenCodingImageSize
nmap N <Plug>ZenCodingPrev
nmap n <Plug>ZenCodingNext
vmap D <Plug>ZenCodingBalanceTagOutwardVisual
nmap D <Plug>ZenCodingBalanceTagOutwardNormal
vmap d <Plug>ZenCodingBalanceTagInwardVisual
nmap d <Plug>ZenCodingBalanceTagInwardNormal
nmap , <Plug>ZenCodingExpandWord
nmap  <Plug>ZenCodingExpandNormal
vmap  <Plug>ZenCodingExpandVisual
map   /
vnoremap <silent> # :call VisualSearch('b')
vnoremap $w `>a"`<i"
vnoremap $q `>a'`<i'
vnoremap $$ `>a"`<i"
vnoremap $3 `>a}`<i{
vnoremap $2 `>a]`<i[
vnoremap $1 `>a)`<i(
snoremap % b<BS>%
snoremap ' b<BS>'
vnoremap <silent> * :call VisualSearch('f')
map <silent> ,w,t <Plug>VimwikiTabMakeDiaryNote
map <silent> ,w,w <Plug>VimwikiMakeDiaryNote
map <silent> ,ws <Plug>VimwikiUISelect
map <silent> ,wt <Plug>VimwikiTabIndex
map <silent> ,ww <Plug>VimwikiIndex
noremap ,m mmHmt:%s///ge'tzt'm
map ,c :botright cw 10
map ,p :cp
map ,n :cn
map <silent> , :noh
map ,y :YRShow
map ,s? z=
map ,sa zg
map ,sp [s
map ,sn ]s
map ,t4 :set shiftwidth=4
map ,t2 :set shiftwidth=2
map ,q :e ~/buffer
map ,cd :cd %:p:h
map ,tm :tabmove 
map ,tc :tabclose
map ,te :tabedit 
map ,tn :tabnew %
nmap ,fu :se ff=unix
nmap ,fd :se ff=dos
map ,$ :syntax sync fromstart
map ,4 :set syntax=javascript
map ,3 :set syntax=python
map ,2 :set syntax=xhtml
map ,1 :set syntax=cheetah
nmap ,f :find
nmap ,w :w!
map 0 ^
imap ° 0i
imap ¤ $a
imap ì :exec "normal f" . leavechara
snoremap U b<BS>U
snoremap \ b<BS>\
snoremap ^ b<BS>^
snoremap ` b<BS>`
nmap gx <Plug>NetrwBrowseX
vmap <F7> :call Python_Eval_VSplit() 
nmap <Left> :bp
xmap <Left> :bp
nmap <Right> :bn
xmap <Right> :bn
snoremap <Left> bi
snoremap <Right> a
snoremap <BS> b<BS>
snoremap <silent> <S-Tab> i<Right>=BackwardsSnippet()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nnoremap <Plug>ZenCodingAnchorizeSummary :call zencoding#anchorizeURL(1)
nnoremap <Plug>ZenCodingAnchorizeURL :call zencoding#anchorizeURL(0)
nnoremap <Plug>ZenCodingRemoveTag :call zencoding#removeTag()
nnoremap <Plug>ZenCodingSplitJoinTagNormal :call zencoding#splitJoinTag()
vnoremap <Plug>ZenCodingMergeLines :call zencoding#mergeLines()
nnoremap <Plug>ZenCodingToggleComment :call zencoding#toggleComment()
nnoremap <Plug>ZenCodingImageSize :call zencoding#imageSize()
nnoremap <Plug>ZenCodingPrev :call zencoding#moveNextPrev(1)
nnoremap <Plug>ZenCodingNext :call zencoding#moveNextPrev(0)
vnoremap <Plug>ZenCodingBalanceTagOutwardVisual :call zencoding#balanceTag(-2)
nnoremap <Plug>ZenCodingBalanceTagOutwardNormal :call zencoding#balanceTag(-1)
vnoremap <Plug>ZenCodingBalanceTagInwardVisual :call zencoding#balanceTag(2)
nnoremap <Plug>ZenCodingBalanceTagInwardNormal :call zencoding#balanceTag(1)
nnoremap <Plug>ZenCodingExpandWord :call zencoding#expandAbbr(1)
nnoremap <Plug>ZenCodingExpandNormal :call zencoding#expandAbbr(3)
vnoremap <Plug>ZenCodingExpandVisual :call zencoding#expandAbbr(2)
map <F6> a=strftime("%Y-%m-%d %H:%M:%S") 
map <F2> :%s/\s*$//g:noh''
map <F8> :new:read !svn diff:set syntax=diff buftype=nofilegg
map <F9> ggVGg?
omap <Left> :bp
omap <Right> :bn
map <C-Space> ?
cnoremap  <Home>
cnoremap  <End>
inoremap  
imap 	 <Plug>SuperTabForward
inoremap <silent> <NL> =TriggerSnippet()
cnoremap  
imap  <Plug>SuperTabBackward
imap  
inoremap <silent> 	 =ShowAvailableSnips()
inoremap  :set pastemui+mv'uV'v=:set nopaste
imap A <Plug>ZenCodingAnchorizeSummary
imap a <Plug>ZenCodingAnchorizeURL
imap k <Plug>ZenCodingRemoveTag
imap j <Plug>ZenCodingSplitJoinTagInsert
imap / <Plug>ZenCodingToggleComment
imap i <Plug>ZenCodingImageSize
imap N <Plug>ZenCodingPrev
imap n <Plug>ZenCodingNext
imap D <Plug>ZenCodingBalanceTagOutwardInsert
imap d <Plug>ZenCodingBalanceTagInwardInsert
imap ; <Plug>ZenCodingExpandWord
imap  <Plug>ZenCodingExpandAbbr
cnoremap $td tabnew ~/Desktop/
cnoremap $th tabnew ~/
cnoremap $tc eCurrentFileDir("tabnew")
cnoremap $c e eCurrentFileDir("e")
cnoremap $q eDeleteTillSlash()
cnoremap $j e ./
cnoremap $d e ~/Desktop/
cnoremap $h e ~/
inoremap $w "":let leavechar='"'i
inoremap $q '':let leavechar="'"i
inoremap $3 {}:let leavechar="}"i
inoremap $4 {o}:let leavechar="}"O
inoremap $2 []:let leavechar="]"i
inoremap $1 ():let leavechar=")"i
imap <d-l> :exec "normal f" . leavechara
imap <D-0> 0i
imap <D-$> $a
vmap ë :m'<-2`>my`<mzgv`yo`z
vmap ê :m'>+`<my`>mzgv`yo`z
nmap ë mz:m-2`z
nmap ê mz:m+`z
iabbr xname Teddy Fish
iabbr xdate =strftime("%d/%m/%y %H:%M:%S")
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set autowriteall
set background=dark
set backspace=eol,start,indent
set cindent
set cmdheight=2
set completeopt=menu
set cscopeprg=/usr/bin/cscope
set cscopetag
set cscopetagorder=1
set cscopeverbose
set errorformat=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
set expandtab
set fileencodings=ucs-bom,utf-8,GB18030,gbk
set fileformats=unix,dos,mac
set grepprg=grep\ -nH\ $*
set guifont=Panic\ Sans\ 12
set guifontwide=WenQuanYi\ Zen\ Hei\ 12
set helplang=en
set hidden
set history=400
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set listchars=tab:▸\ ,eol:¬
set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
set matchtime=2
set mouse=a
set omnifunc=sqlcomplete#Complete
set pastetoggle=<F3>
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim,~/.vim/bundle/OmniCppComplete,~/.vim/bundle/html5,~/.vim/bundle/javascript.vim,~/.vim/bundle/nerdtree,~/.vim/bundle/snipMate,~/.vim/bundle/supertab,~/.vim/bundle/tag_list,~/.vim/bundle/vim-colors-solarized,~/.vim/bundle/vim-pathogen,~/.vim/bundle/vim-task,~/.vim/bundle/vimwiki,~/.vim/bundle/zencoding-vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/bundle/OmniCppComplete/after,~/.vim/bundle/snipMate/after,~/.vim/after
set scrolloff=7
set shiftwidth=2
set showmatch
set showtabline=2
set smartindent
set smarttab
set statusline=\ %f%m%r%h\ %y%{\"[\".(&fenc==\"\"?&enc:&fenc).\"]\"}\ \ CWD:\ %r%{CurDir()}%h\ \ Line:\ %l/%L:%c
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set noswapfile
set switchbuf=usetab
set textwidth=500
set viminfo='10,\"100,:20,%,n~/.viminfo
set whichwrap=b,s,<,>,h,l
set wildignore=*.pyc
set wildmenu
set window=28
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/projects/aplus
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +55 ~/.vim/README
badd +1 ~/sourcecode/python/tpbmirror-read-only/config/settings.py
badd +12 ~/sourcecode/python/tpbmirror-read-only/config/url.py
badd +11 ~/sourcecode/python/tpbmirror-read-only/controllers/view.py
badd +1 ~/sourcecode/python/tpbmirror-read-only/models/mirrordb.py
badd +1 ~/sourcecode/python/tpbmirror-read-only/templates/index.html
badd +21 ~/sourcecode/python/tpbmirror-read-only/templates/view.html
badd +3 ~/sourcecode/python/tpbmirror-read-only/templates/hottype.html
badd +365 ~/.vimrc
badd +7 ~/sourcecode/python/tpbmirror-read-only/templates/header.html
badd +54 ~/sourcecode/python/tpbmirror-read-only/memcached-on-dotcloud/README.rst
badd +49 ~/sourcecode/python/tpbmirror-read-only/utils/fetchdouban.py
badd +158 ~/sourcecode/python/webpy.github.com/docs/0.3/tutorial.md
badd +19 ~/projects/djangoprojects/mysite/mysite/view.py
badd +12 ~/projects/djangoprojects/mysite/mysite/urls.py
badd +9 ~/vimwiki/index.wiki
badd +4 ~/vimwiki/DjangoBook.wiki
badd +61 ~/vimwiki/Chapter\ 3\ 视图和URL配置.wiki
badd +10 ~/.vim/bundle/vimwiki/ftplugin/vimwiki.vim
badd +18 ~/.vim/bundle/vimwiki/plugin/vimwiki.vim
badd +1 ~/vimwiki/Chapter\ 4\ 模板.wiki
badd +240 controllers/aplus.py
badd +2 templates/todo/edit.html
badd +39 templates/index.html.bk
badd +6 templates/header.html
badd +28 config/url.py
badd +13 templates/aplus/login.html
badd +2 templates/index.html
badd +230 static/sql/ap.sql
badd +1 ~/vimwiki/diary/2012-04-23.wiki
badd +1 ~/vimwiki/diary/diary.wiki
badd +5 templates/aplus/courseDetail.html
badd +2 templates/foot.html.bk
badd +12 templates/header.html.bk
badd +7 templates/aplus/courseList.html
badd +1 ~/sourcecode/python/simple-todo-read-only/config/url.py
badd +2 /var/www/redditriver/config/riverconfig.py
badd +274 /var/www/redditriver/web/redditriver.py
badd +1 /var/www/redditriver/web/templates/about.tpl.html
badd +20 config/settings.py
badd +1 ~/sourcecode/python/tpbmirror-read-only/controllers/daemon.py
badd +1 templates/submit.html
badd +1 templates/aplus/newCourse.html
badd +1 templates/aplus/newTeacher.html
badd +1 templates/aplus/newActivity.html
badd +4 ~/vimwiki/HowTos.wiki
badd +13 ~/vimwiki/MySQLHowTos.wiki
badd +24 templates/admin/newActivity.html
badd +12 templates/admin/index.html
badd +44 templates/admin/newCourse.html
badd +1 templates/createnew.html
badd +1 templates/admin/login.html
badd +2 templates/admin/newTeacher.html
badd +2 templates/layout.html
badd +4 templates/admin/editTeacher.html
badd +46 templates/index/index.html
badd +11 templates/footer.html
badd +13 static/sql/user.sql
badd +0 templates/admin/register.html
args controllers/aplus.py
edit controllers/aplus.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
noremap <buffer> <silent> ,tk :call Toggle_task_status()
map <buffer> ,  :w!:!python %
noremap <buffer> <silent> <C-D-CR> :call Toggle_task_status()
inoremap <buffer> $d """"""O
inoremap <buffer> $p print 
inoremap <buffer> $i import 
inoremap <buffer> $c ### #kla
inoremap <buffer> $s self 
inoremap <buffer> $r return 
inoremap <buffer> <silent> <C-D-CR> :call Toggle_task_status()i
inoreabbr <buffer> cifelse =IMAP_PutTextWithMovement("if <++>:\n<++>\nelse:\n<++>")
inoreabbr <buffer> cif =IMAP_PutTextWithMovement("if <++>:\n<++>")
inoreabbr <buffer> cfor =IMAP_PutTextWithMovement("for <++> in <++>:\n<++>")
inoreabbr <buffer> cclass =IMAP_PutTextWithMovement("class <++>:\n<++>")
inoreabbr <buffer> cfun =IMAP_PutTextWithMovement("def <++>(<++>):\n<++>\nreturn <++>")
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal foldcolumn=0
set nofoldenable
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
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=pythoncomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=500
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 219 - ((15 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
219
normal! 038l
tabedit templates/admin/register.html
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'html'
setlocal filetype=html
endif
setlocal foldcolumn=0
set nofoldenable
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
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndentGet(v:lnum)
setlocal indentkeys=o,O,*<Return>,<>>,{,}
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
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
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'html'
setlocal syntax=html
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=500
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 9 - ((8 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 04l
tabedit templates/admin/login.html
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'xhtml'
setlocal filetype=xhtml
endif
setlocal foldcolumn=0
set nofoldenable
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
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndentGet(v:lnum)
setlocal indentkeys=o,O,*<Return>,<>>,{,}
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
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
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'xhtml'
setlocal syntax=xhtml
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=500
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 20 - ((18 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 04l
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
