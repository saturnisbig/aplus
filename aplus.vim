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
map <NL> j
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
nmap <silent> ,w,i <Plug>VimwikiDiaryGenerateLinks
nmap <silent> ,wi <Plug>VimwikiDiaryIndex
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
map ,5 :set syntax=markdown
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
map <Left> :bp
map <Right> :bn
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
map <C-Space> ?
imap  alert();hi
cnoremap  <Home>
cnoremap  <End>
inoremap  
imap 	 <Plug>SuperTabForward
inoremap <silent> <NL> =TriggerSnippet()
cnoremap  
inoremap  
imap  <Plug>SuperTabBackward
imap  
inoremap <silent> 	 =ShowAvailableSnips()
imap  console.log();hi
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
set dictionary=~/.vim/ftplugin/javascript.txt,~/.vim/ftplugin/css.txt
set errorformat=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
set expandtab
set fileencodings=ucs-bom,utf-8,GB18030,gbk
set fileformats=unix,dos,mac
set foldlevelstart=1
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
set omnifunc=csscomplete#CompleteCSS
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
badd +18 ~/sourcecode/davidblog/davidblog/admin.py
badd +49 ~/sourcecode/davidblog/davidblog/adminviews.py
badd +1 ~/sourcecode/davidblog/davidblog/davidblog.py
badd +64 ~/sourcecode/davidblog/davidblog/models.py
badd +536 ~/.vimrc
badd +55 ~/.vim/README
badd +1 ~/sourcecode/python/tpbmirror-read-only/config/settings.py
badd +12 ~/sourcecode/python/tpbmirror-read-only/config/url.py
badd +11 ~/sourcecode/python/tpbmirror-read-only/controllers/view.py
badd +1 ~/sourcecode/python/tpbmirror-read-only/models/mirrordb.py
badd +1 ~/sourcecode/python/tpbmirror-read-only/templates/index.html
badd +21 ~/sourcecode/python/tpbmirror-read-only/templates/view.html
badd +3 ~/sourcecode/python/tpbmirror-read-only/templates/hottype.html
badd +7 ~/sourcecode/python/tpbmirror-read-only/templates/header.html
badd +54 ~/sourcecode/python/tpbmirror-read-only/memcached-on-dotcloud/README.rst
badd +49 ~/sourcecode/python/tpbmirror-read-only/utils/fetchdouban.py
badd +158 ~/sourcecode/python/webpy.github.com/docs/0.3/tutorial.md
badd +19 ~/projects/djangoprojects/mysite/mysite/view.py
badd +12 ~/projects/djangoprojects/mysite/mysite/urls.py
badd +9 ~/vimwiki/index.wiki
badd +3 ~/vimwiki/DjangoBook.wiki
badd +17 ~/vimwiki/Chapter\ 3\ 视图和URL配置.wiki
badd +10 ~/.vim/bundle/vimwiki/ftplugin/vimwiki.vim
badd +18 ~/.vim/bundle/vimwiki/plugin/vimwiki.vim
badd +1 ~/vimwiki/Chapter\ 4\ 模板.wiki
badd +342 controllers/aplus.py
badd +2 templates/todo/edit.html
badd +39 templates/index.html.bk
badd +13 templates/header.html
badd +7 config/url.py
badd +13 templates/aplus/login.html
badd +1 templates/index.html
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
badd +40 config/settings.py
badd +1 ~/sourcecode/python/tpbmirror-read-only/controllers/daemon.py
badd +1 templates/submit.html
badd +1 templates/aplus/newCourse.html
badd +1 templates/aplus/newTeacher.html
badd +1 templates/aplus/newActivity.html
badd +7 ~/vimwiki/HowTos.wiki
badd +13 ~/vimwiki/MySQLHowTos.wiki
badd +24 templates/admin/newActivity.html
badd +20 templates/admin/index.html
badd +44 templates/admin/newCourse.html
badd +1 templates/createnew.html
badd +31 templates/admin/login.html
badd +41 templates/admin/newTeacher.html
badd +2 templates/layout.html
badd +1 templates/admin/editTeacher.html
badd +1 templates/index/index.html
badd +11 templates/footer.html
badd +13 static/sql/user.sql
badd +1 templates/admin/register.html
badd +1 ~/vimwiki/diary/2012-05-19.wiki
badd +4 ~/vimwiki/GitHowTos.wiki
badd +7 code.py
badd +4 templates/admin/upload.html
badd +1 ~/vimwiki/UbuntuHowTos.wiki
badd +1 ~/vimwiki/Markdown.wiki
badd +1 ~/vimwiki/VimHowTos.wiki
badd +1 ~/vimwiki/VimCloseAllTabs.wiki
badd +1 index.html
badd +18 static/js/slide.js
badd +11 static/js/jquery.js
badd +1 templates/index/about.html
badd +87 static/styles/lrtk.css
badd +5 ~/sourcecode/davidblog/davidblog/forms.py
badd +9 forms.py
badd +13 templates/base.html
badd +1 templates/foot.html
badd +48 static/styles/index/style.css
badd +2 templates/index/index.html
badd +4 templates/index/about.html
badd +10 templates/activitiesList.html
badd +12 templates/teachersList.html
badd +6 templates/courseList.html
badd +41 templates/about.html
badd +1 templates/activityDetail.html
badd +10 templates/contact.html
badd +0 templates/courseDetail.html
badd +0 controllers/views.py
badd +0 admin.py
badd +0 adminviews.py
badd +0 controllers/admin.py
badd +0 aplus.py
args controllers/aplus.py
edit templates/courseDetail.html
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
set foldlevel=1
setlocal foldlevel=1
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
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
let s:l = 4 - ((3 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 0
tabedit controllers/views.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
map <buffer> ,  :w!:!python %
inoremap <buffer> $d """"""O
inoremap <buffer> $p print 
inoremap <buffer> $i import 
inoremap <buffer> $c ### #kla
inoremap <buffer> $s self 
inoremap <buffer> $r return 
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
setlocal cinkeys=0{,0},0),:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:XCOMM,n:>,fb:-
setlocal commentstring=#%s
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
set foldlevel=1
setlocal foldlevel=1
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=pydoc
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
setlocal suffixesadd=.py
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
let s:l = 1 - ((0 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit controllers/admin.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
map <buffer> ,  :w!:!python %
inoremap <buffer> $d """"""O
inoremap <buffer> $p print 
inoremap <buffer> $i import 
inoremap <buffer> $c ### #kla
inoremap <buffer> $s self 
inoremap <buffer> $r return 
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
setlocal cinkeys=0{,0},0),:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:XCOMM,n:>,fb:-
setlocal commentstring=#%s
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
set foldlevel=1
setlocal foldlevel=1
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=pydoc
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
setlocal suffixesadd=.py
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
let s:l = 11 - ((10 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 041l
tabedit config/url.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
map <buffer> ,  :w!:!python %
inoremap <buffer> $d """"""O
inoremap <buffer> $p print 
inoremap <buffer> $i import 
inoremap <buffer> $c ### #kla
inoremap <buffer> $s self 
inoremap <buffer> $r return 
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
setlocal cinkeys=0{,0},0),:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:XCOMM,n:>,fb:-
setlocal commentstring=#%s
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
set foldlevel=1
setlocal foldlevel=1
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=pydoc
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
setlocal suffixesadd=.py
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
let s:l = 19 - ((15 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 04l
tabnext 4
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
