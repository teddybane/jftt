let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
map! <S-Insert> *
inoremap <Plug>ZenCodingAnchorizeSummary :call zencoding#anchorizeURL(1)a
inoremap <Plug>ZenCodingAnchorizeURL :call zencoding#anchorizeURL(0)a
inoremap <Plug>ZenCodingRemoveTag :call zencoding#removeTag()a
inoremap <Plug>ZenCodingSplitJoinTagInsert :call zencoding#splitJoinTag()
inoremap <Plug>ZenCodingToggleComment :call zencoding#toggleComment()a
inoremap <Plug>ZenCodingImageSize :call zencoding#imageSize()a
inoremap <Plug>ZenCodingPrev :call zencoding#moveNextPrev(1)
inoremap <Plug>ZenCodingNext :call zencoding#moveNextPrev(0)
inoremap <Plug>ZenCodingBalanceTagOutwardInsert :call zencoding#balanceTag(-1)
inoremap <Plug>ZenCodingBalanceTagInwardInsert :call zencoding#balanceTag(1)
inoremap <Plug>ZenCodingExpandWord u:call zencoding#expandAbbr(1,"")a
inoremap <Plug>ZenCodingExpandAbbr u:call zencoding#expandAbbr(0,"")a
imap <silent> <Plug>IMAP_JumpBack =IMAP_Jumpfunc('b', 0)
imap <silent> <Plug>IMAP_JumpForward =IMAP_Jumpfunc('', 0)
vmap <NL> <Plug>IMAP_JumpForward
nmap <NL> <Plug>IMAP_JumpForward
vmap c <Plug>ZenCodingCodePretty
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
nmap , <Plug>ZenCodingExpandNormal
vmap , <Plug>ZenCodingExpandVisual
map ;a 
map Q gq
nmap <silent> \ubs :call BASH_RemoveGuiMenus()
nmap <silent> \lbs :call BASH_CreateGuiMenus()
vmap <silent> \x <Plug>VisualTraditional
vmap <silent> \c <Plug>VisualTraditionalj
nmap <silent> \x <Plug>Traditional
nmap <silent> \c <Plug>Traditionalj
nnoremap <silent> \b :CommandTBuffer
nnoremap <silent> \t :CommandT
nmap \qa <Plug>QAToolsToggle
nmap \qc <Plug>CodeCoverageToggle
vnoremap <silent> \\w :call EasyMotion#WB(1, 0)
onoremap <silent> \\w :call EasyMotion#WB(0, 0)
nnoremap <silent> \\w :call EasyMotion#WB(0, 0)
vnoremap <silent> \\t :call EasyMotion#T(1, 0)
onoremap <silent> \\t :call EasyMotion#T(0, 0)
nnoremap <silent> \\t :call EasyMotion#T(0, 0)
vnoremap <silent> \\n :call EasyMotion#Search(1, 0)
onoremap <silent> \\n :call EasyMotion#Search(0, 0)
nnoremap <silent> \\n :call EasyMotion#Search(0, 0)
vnoremap <silent> \\k :call EasyMotion#JK(1, 1)
onoremap <silent> \\k :call EasyMotion#JK(0, 1)
nnoremap <silent> \\k :call EasyMotion#JK(0, 1)
vnoremap <silent> \\j :call EasyMotion#JK(1, 0)
onoremap <silent> \\j :call EasyMotion#JK(0, 0)
nnoremap <silent> \\j :call EasyMotion#JK(0, 0)
vnoremap <silent> \\gE :call EasyMotion#EW(1, 1)
onoremap <silent> \\gE :call EasyMotion#EW(0, 1)
nnoremap <silent> \\gE :call EasyMotion#EW(0, 1)
vnoremap <silent> \\f :call EasyMotion#F(1, 0)
onoremap <silent> \\f :call EasyMotion#F(0, 0)
nnoremap <silent> \\f :call EasyMotion#F(0, 0)
vnoremap <silent> \\e :call EasyMotion#E(1, 0)
onoremap <silent> \\e :call EasyMotion#E(0, 0)
nnoremap <silent> \\e :call EasyMotion#E(0, 0)
vnoremap <silent> \\b :call EasyMotion#WB(1, 1)
onoremap <silent> \\b :call EasyMotion#WB(0, 1)
nnoremap <silent> \\b :call EasyMotion#WB(0, 1)
vnoremap <silent> \\W :call EasyMotion#WBW(1, 0)
onoremap <silent> \\W :call EasyMotion#WBW(0, 0)
nnoremap <silent> \\W :call EasyMotion#WBW(0, 0)
vnoremap <silent> \\T :call EasyMotion#T(1, 1)
onoremap <silent> \\T :call EasyMotion#T(0, 1)
nnoremap <silent> \\T :call EasyMotion#T(0, 1)
vnoremap <silent> \\N :call EasyMotion#Search(1, 1)
onoremap <silent> \\N :call EasyMotion#Search(0, 1)
nnoremap <silent> \\N :call EasyMotion#Search(0, 1)
vnoremap <silent> \\ge :call EasyMotion#E(1, 1)
onoremap <silent> \\ge :call EasyMotion#E(0, 1)
nnoremap <silent> \\ge :call EasyMotion#E(0, 1)
vnoremap <silent> \\F :call EasyMotion#F(1, 1)
onoremap <silent> \\F :call EasyMotion#F(0, 1)
nnoremap <silent> \\F :call EasyMotion#F(0, 1)
vnoremap <silent> \\E :call EasyMotion#EW(1, 0)
onoremap <silent> \\E :call EasyMotion#EW(0, 0)
nnoremap <silent> \\E :call EasyMotion#EW(0, 0)
vnoremap <silent> \\B :call EasyMotion#WBW(1, 1)
onoremap <silent> \\B :call EasyMotion#WBW(0, 1)
nnoremap <silent> \\B :call EasyMotion#WBW(0, 1)
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <SNR>36_CodeCoverageToggle :call phpqa#CodeCoverageToggle()
nnoremap <silent> <SNR>36_QAToolsToggle :call phpqa#QAToolsToggle()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
vnoremap <Plug>ZenCodingCodePretty :call zencoding#codePretty()
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
nnoremap <Plug>ZenCodingExpandWord :call zencoding#expandAbbr(1,"")
nnoremap <Plug>ZenCodingExpandNormal :call zencoding#expandAbbr(3,"")
vnoremap <Plug>ZenCodingExpandVisual :call zencoding#expandAbbr(2,"")
vmap <silent> <Plug>IMAP_JumpBack `<i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpBack "_<Del>i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpForward "_<Del>i=IMAP_Jumpfunc('', 0)
nmap <silent> <Plug>IMAP_JumpBack i=IMAP_Jumpfunc('b', 0)
nmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
nnoremap <silent> <F11> :call conque_term#exec_file()
noremap <Plug>VisualFirstLine :call EnhancedCommentify('', 'first',   line("'<"), line("'>"))
noremap <Plug>VisualTraditional :call EnhancedCommentify('', 'guess',   line("'<"), line("'>"))
noremap <Plug>VisualDeComment :call EnhancedCommentify('', 'decomment',   line("'<"), line("'>"))
noremap <Plug>VisualComment :call EnhancedCommentify('', 'comment',   line("'<"), line("'>"))
noremap <Plug>FirstLine :call EnhancedCommentify('', 'first')
noremap <Plug>Traditional :call EnhancedCommentify('', 'guess')
noremap <Plug>DeComment :call EnhancedCommentify('', 'decomment')
noremap <Plug>Comment :call EnhancedCommentify('', 'comment')
nnoremap <silent> <SNR>42_QAToolsToggle :call phpqa#QAToolsToggle()
nnoremap <silent> <SNR>42_CodeCoverageToggle :call phpqa#CodeCoverageToggle()
imap <NL> <Plug>IMAP_JumpForward
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
imap , <Plug>ZenCodingExpandAbbr
imap ;a 
imap <silent> \x <Plug>Traditional
imap <silent> \c <Plug>Traditionalji
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=2
set cindent
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set grepprg=grep\ -nH\ $*
set helplang=pl
set hlsearch
set iminsert=0
set imsearch=0
set mouse=a
set mousemodel=popup
set ruler
set runtimepath=~/.vim/bundle/vim-fugitive,~/.vim/bundle/vim-easymotion,~/.vim/bundle/sparkup/vim/,~/.vim/bundle/vim-rails,~/.vim/bundle/vim-phpqa,~/.vim/bundle/L9,~/.vim/bundle/FuzzyFinder,~/.vim/bundle/command-t,~/.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,~/.vim/after,~/.vim/bundle/vundle/,~/.vim/bundle/vim-fugitive/after,~/.vim/bundle/vim-easymotion/after,~/.vim/bundle/sparkup/vim//after,~/.vim/bundle/vim-rails/after,~/.vim/bundle/vim-phpqa/after,~/.vim/bundle/L9/after,~/.vim/bundle/FuzzyFinder/after,~/.vim/bundle/command-t/after
set softtabstop=8
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.info,.aux,.log,.dvi,.bbl,.out,.o,.lo
set termencoding=utf-8
set window=25
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/projekty/jftt/l3
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +145 _calc.y
badd +21 ../mfcalc/mf.y
badd +101 ../l2z4.lex
badd +34 ../mfcalc/calc.h
badd +1 calc.h
badd +35 tst.calc_h.c
badd +12 _Makefile
badd +1 _calc.y\!
badd +1 Makefile
badd +1 main.cc
badd +1 plik_testowy
badd +39 prev_calc.lex
badd +116 przed_net_nawias_calc.y
badd +1 _calc.h
badd +81 calc.y
badd +120 prev_calc.y
badd +1 calc.lex
args _calc.y
edit calc.lex
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
if &filetype != 'lex'
setlocal filetype=lex
endif
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
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=8
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'lex'
setlocal syntax=lex
endif
setlocal tabstop=8
setlocal tags=~/projekty/jftt/.git/lex.tags,~/projekty/jftt/.git/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 15 - ((11 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 0
tabedit calc.y
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
if &filetype != 'yacc'
setlocal filetype=yacc
endif
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
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetYaccIndent()
setlocal indentkeys=!^F,o,O
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=8
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'yacc'
setlocal syntax=yacc
endif
setlocal tabstop=8
setlocal tags=~/projekty/jftt/.git/yacc.tags,~/projekty/jftt/.git/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 42 - ((41 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
42
normal! 0
tabedit calc.h
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
imap <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
nnoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
nnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
nnoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
nnoremap <buffer> <silent> \cx :call C_CommentToggle( )
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"    )
nnoremap <buffer> <silent> \in :call C_CodeFor("down"    )
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
nnoremap <buffer> <silent> \np :call C_ProtoPick("function")
nnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
nnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
nmap <buffer> <silent> \rh :call C_Hardcopy()
vnoremap <buffer> <silent> \sb :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.block","v")
nnoremap <buffer> <silent> \sb :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.block")
vnoremap <buffer> <silent> \sc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.case")
nnoremap <buffer> <silent> \sc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.case")
vnoremap <buffer> <silent> \ss :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.switch","v")
nnoremap <buffer> <silent> \ss :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.switch")
vnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while block","v")
nnoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while block")
vnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while")
nnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while")
vnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.else block","v")
nnoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.else block")
vnoremap <buffer> <silent> \sife :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block else","v")
nnoremap <buffer> <silent> \sife :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block else")
vnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if else","v")
nnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if else")
vnoremap <buffer> <silent> \sif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block","v")
nnoremap <buffer> <silent> \sif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block")
vnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if")
nnoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if")
vnoremap <buffer> <silent> \sfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.range-based for","v")
nnoremap <buffer> <silent> \sfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.range-based for")
vnoremap <buffer> <silent> \sfo :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for block","v")
nnoremap <buffer> <silent> \sfo :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for block")
vnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for")
nnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for")
vnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.do while","v")
nnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.do while")
vnoremap <buffer> <silent> \pw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.warning")
nnoremap <buffer> <silent> \pw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.warning")
vnoremap <buffer> <silent> \pp :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.pragma")
nnoremap <buffer> <silent> \pp :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.pragma")
vnoremap <buffer> <silent> \pli :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.line")
nnoremap <buffer> <silent> \pli :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.line")
vnoremap <buffer> <silent> \pe :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.error")
nnoremap <buffer> <silent> \pe :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.error")
vnoremap <buffer> <silent> \pind :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-def-endif","v")
nnoremap <buffer> <silent> \pind :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-def-endif")
vnoremap <buffer> <silent> \pin :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-else-endif","v")
nnoremap <buffer> <silent> \pin :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-else-endif")
vnoremap <buffer> <silent> \pid :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifdef-else-endif","v")
nnoremap <buffer> <silent> \pid :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifdef-else-endif")
vnoremap <buffer> <silent> \pie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-else-endif","v")
nnoremap <buffer> <silent> \pie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-else-endif")
vnoremap <buffer> <silent> \pif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-endif","v")
nnoremap <buffer> <silent> \pif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-endif")
vnoremap <buffer> <silent> \pu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.undefine")
nnoremap <buffer> <silent> \pu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.undefine")
vnoremap <buffer> <silent> \pd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.define")
nnoremap <buffer> <silent> \pd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.define")
vnoremap <buffer> <silent> \pl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-local")
nnoremap <buffer> <silent> \pl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-local")
vnoremap <buffer> <silent> \pg :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-global")
nnoremap <buffer> <silent> \pg :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-global")
vnoremap <buffer> <silent> \pih :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include std lib header")
nnoremap <buffer> <silent> \pih :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include std lib header")
vnoremap <buffer> <silent> \ifpr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fscanf")
nnoremap <buffer> <silent> \ifpr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fscanf")
vnoremap <buffer> <silent> \ifsc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fprintf")
nnoremap <buffer> <silent> \ifsc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fprintf")
vnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-output-file","v")
nnoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-output-file")
vnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-input-file","v")
nnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-input-file")
vnoremap <buffer> <silent> \ias :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.assert","v")
nnoremap <buffer> <silent> \ias :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.assert")
vnoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.sizeof","v")
nnoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.sizeof")
vnoremap <buffer> <silent> \ire :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.realloc")
nnoremap <buffer> <silent> \ire :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.realloc")
vnoremap <buffer> <silent> \ima :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.malloc")
nnoremap <buffer> <silent> \ima :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.malloc")
vnoremap <buffer> <silent> \ica :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.calloc")
nnoremap <buffer> <silent> \ica :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.calloc")
vnoremap <buffer> <silent> \ipr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.printf")
nnoremap <buffer> <silent> \ipr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.printf")
vnoremap <buffer> <silent> \isc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.scanf")
nnoremap <buffer> <silent> \isc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.scanf")
vnoremap <buffer> <silent> \iu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.union","v")
nnoremap <buffer> <silent> \iu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.union")
vnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.struct","v")
nnoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.struct")
vnoremap <buffer> <silent> \ie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.enum","v")
nnoremap <buffer> <silent> \ie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.enum")
vnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.main","v")
nnoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.main")
vnoremap <buffer> <silent> \isf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function-static","v")
nnoremap <buffer> <silent> \isf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function-static")
vnoremap <buffer> <silent> \if :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function","v")
nnoremap <buffer> <silent> \if :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function")
vnoremap <buffer> <silent> \+rt :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.RTTI","v")
nnoremap <buffer> <silent> \+rt :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.RTTI")
vnoremap <buffer> <silent> \+na :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace alias")
nnoremap <buffer> <silent> \+na :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace alias")
vnoremap <buffer> <silent> \+unb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace block xxx","v")
nnoremap <buffer> <silent> \+unb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace block xxx")
vnoremap <buffer> <silent> \+un :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace xxx")
nnoremap <buffer> <silent> \+un :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace xxx")
vnoremap <buffer> <silent> \+uns :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace std")
nnoremap <buffer> <silent> \+uns :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace std")
vnoremap <buffer> <silent> \+oof :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open output file","v")
nnoremap <buffer> <silent> \+oof :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open output file")
vnoremap <buffer> <silent> \+oif :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open input file","v")
nnoremap <buffer> <silent> \+oif :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open input file")
vnoremap <buffer> <silent> \+ex :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.extern C","v")
nnoremap <buffer> <silent> \+ex :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.extern C")
vnoremap <buffer> <silent> \+caa :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch all","v")
nnoremap <buffer> <silent> \+caa :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch all")
vnoremap <buffer> <silent> \+ca :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch","v")
nnoremap <buffer> <silent> \+ca :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch")
vnoremap <buffer> <silent> \+tr :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.try catch","v")
nnoremap <buffer> <silent> \+tr :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.try catch")
vnoremap <buffer> <silent> \+ioi :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, in")
nnoremap <buffer> <silent> \+ioi :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, in")
vnoremap <buffer> <silent> \+ioo :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, out")
nnoremap <buffer> <silent> \+ioo :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, out")
vnoremap <buffer> <silent> \+tf :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template function")
nnoremap <buffer> <silent> \+tf :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template function")
vnoremap <buffer> <silent> \+ita :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template accessor")
nnoremap <buffer> <silent> \+ita :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template accessor")
vnoremap <buffer> <silent> \+itm :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template method")
nnoremap <buffer> <silent> \+itm :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template method")
vnoremap <buffer> <silent> \+itcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class using new")
nnoremap <buffer> <silent> \+itcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class using new")
vnoremap <buffer> <silent> \+itc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class")
nnoremap <buffer> <silent> \+itc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class")
vnoremap <buffer> <silent> \+ia :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.accessor")
nnoremap <buffer> <silent> \+ia :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.accessor")
vnoremap <buffer> <silent> \+im :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.method")
nnoremap <buffer> <silent> \+im :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.method")
vnoremap <buffer> <silent> \+icn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class using new")
nnoremap <buffer> <silent> \+icn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class using new")
vnoremap <buffer> <silent> \+ic :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class")
nnoremap <buffer> <silent> \+ic :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class")
vnoremap <buffer> <silent> \+ec :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.error class")
nnoremap <buffer> <silent> \+ec :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.error class")
vnoremap <buffer> <silent> \+tcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class using new")
nnoremap <buffer> <silent> \+tcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class using new")
vnoremap <buffer> <silent> \+tc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class")
nnoremap <buffer> <silent> \+tc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class")
vnoremap <buffer> <silent> \+cn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class using new")
nnoremap <buffer> <silent> \+cn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class using new")
vnoremap <buffer> <silent> \+c :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class")
nnoremap <buffer> <silent> \+c :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class")
vnoremap <buffer> <silent> \+fb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.ios flagbits")
nnoremap <buffer> <silent> \+fb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.ios flagbits")
vnoremap <buffer> <silent> \+om :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.output manipulators")
nnoremap <buffer> <silent> \+om :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.output manipulators")
vnoremap <buffer> <silent> \+ich :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C std lib header")
nnoremap <buffer> <silent> \+ich :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C std lib header")
vnoremap <buffer> <silent> \+ih :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C++ std lib header")
nnoremap <buffer> <silent> \+ih :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C++ std lib header")
vnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.macros")
nnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.macros")
vnoremap <buffer> <silent> \csc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.special comments")
nnoremap <buffer> <silent> \csc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.special comments")
vnoremap <buffer> <silent> \ckc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.keyword comments")
nnoremap <buffer> <silent> \ckc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.keyword comments")
vnoremap <buffer> <silent> \chs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.H file sections")
nnoremap <buffer> <silent> \chs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.H file sections")
vnoremap <buffer> <silent> \ccs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.C file sections")
nnoremap <buffer> <silent> \ccs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.C file sections")
vnoremap <buffer> <silent> \cfdh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description header")
nnoremap <buffer> <silent> \cfdh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description header")
vnoremap <buffer> <silent> \cfdi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description impl")
nnoremap <buffer> <silent> \cfdi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description impl")
vnoremap <buffer> <silent> \ccl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.class")
nnoremap <buffer> <silent> \ccl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.class")
vnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.method")
nnoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.method")
vnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.function")
nnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.function")
vnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.frame")
nnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.frame")
vnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:C_Templates,"Snippets.jump tags")
nnoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:C_Templates,"Snippets.jump tags")
map <buffer> <silent> \hm :call C_Help("m")
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
map <buffer> <silent> \rs :call C_Settings()
vmap <buffer> <silent> \rh :call C_Hardcopy()
omap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \ri :call C_Indent()
map <buffer> <silent> \rccs :call C_CppcheckSeverityInput()
map <buffer> <silent> \rcc :call C_CppcheckCheck():call C_HlMessage()
map <buffer> <silent> \rpa :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
map <buffer> <silent> \rma :call C_MakeArguments()
map <buffer> <silent> \rme :call C_ExeToRun()
map <buffer> <silent> \rmc :call C_MakeClean()
map <buffer> <silent> \rcm :call C_ChooseMakefile()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link():call C_HlMessage()
map <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
nnoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:C_Templates,"!pick")
nnoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:C_Templates,"reload","all")
nnoremap <buffer> <silent> \ntg :call mmtemplates#core#EditTemplateFiles(g:C_Templates,1)
nnoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:C_Templates,-1)
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ni :call C_ProtoInsert()
vnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
onoremap <buffer> <silent> \nm :call C_ProtoPick("method")
vnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
onoremap <buffer> <silent> \nf :call C_ProtoPick("function")
vnoremap <buffer> <silent> \np :call C_ProtoPick("function")
onoremap <buffer> <silent> \np :call C_ProtoPick("function")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
noremap <buffer> <silent> \nv :call C_CodeSnippet("view")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
vnoremap <buffer> <silent> \in :call C_CodeFor("down","v")
onoremap <buffer> <silent> \in :call C_CodeFor("down"    )
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up","v")
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"    )
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
vnoremap <buffer> <silent> \cx :call C_CommentToggle( )
onoremap <buffer> <silent> \cx :call C_CommentToggle( )
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')a
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')a
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
vnoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
onoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
vnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
onoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
vnoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
onoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
noremap <buffer> <silent> \cl :call C_EndOfLineComment()
vnoremap <buffer> { S{}Pk=iB
map <buffer> <silent> <S-F9> :call C_Arguments()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
map <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
inoremap <buffer> /* /*/kA 
inoremap <buffer> /* /*  */<Left><Left><Left>
inoremap <buffer> <silent> \sb :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.block")
inoremap <buffer> <silent> \sc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.case")
inoremap <buffer> <silent> \ss :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.switch")
inoremap <buffer> <silent> \swh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while block")
inoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.while")
inoremap <buffer> <silent> \se :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.else block")
inoremap <buffer> <silent> \sife :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block else")
inoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if else")
inoremap <buffer> <silent> \sif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if block")
inoremap <buffer> <silent> \si :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.if")
inoremap <buffer> <silent> \sfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.range-based for")
inoremap <buffer> <silent> \sfo :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for block")
inoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.for")
inoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Statements.do while")
inoremap <buffer> <silent> \pw :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.warning")
inoremap <buffer> <silent> \pp :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.pragma")
inoremap <buffer> <silent> \pli :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.line")
inoremap <buffer> <silent> \pe :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.error")
inoremap <buffer> <silent> \pind :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pin :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pid :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-else-endif")
inoremap <buffer> <silent> \pif :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.if-endif")
inoremap <buffer> <silent> \pu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.undefine")
inoremap <buffer> <silent> \pd :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.define")
inoremap <buffer> <silent> \pl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-local")
inoremap <buffer> <silent> \pg :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include-global")
inoremap <buffer> <silent> \pih :call mmtemplates#core#InsertTemplate(g:C_Templates,"Preprocessor.include std lib header")
inoremap <buffer> <silent> \ifpr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fscanf")
inoremap <buffer> <silent> \ifsc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.fprintf")
inoremap <buffer> <silent> \io :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-output-file")
inoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.open-input-file")
inoremap <buffer> <silent> \ias :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.assert")
inoremap <buffer> <silent> \isi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.sizeof")
inoremap <buffer> <silent> \ire :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.realloc")
inoremap <buffer> <silent> \ima :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.malloc")
inoremap <buffer> <silent> \ica :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.calloc")
inoremap <buffer> <silent> \ipr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.printf")
inoremap <buffer> <silent> \isc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.scanf")
inoremap <buffer> <silent> \iu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.union")
inoremap <buffer> <silent> \is :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.struct")
inoremap <buffer> <silent> \ie :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.enum")
inoremap <buffer> <silent> \im :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.main")
inoremap <buffer> <silent> \isf :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function-static")
inoremap <buffer> <silent> \if :call mmtemplates#core#InsertTemplate(g:C_Templates,"Idioms.function")
inoremap <buffer> <silent> \+rt :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.RTTI")
inoremap <buffer> <silent> \+na :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace alias")
inoremap <buffer> <silent> \+unb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.namespace block xxx")
inoremap <buffer> <silent> \+un :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace xxx")
inoremap <buffer> <silent> \+uns :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.using namespace std")
inoremap <buffer> <silent> \+oof :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open output file")
inoremap <buffer> <silent> \+oif :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.open input file")
inoremap <buffer> <silent> \+ex :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.extern C")
inoremap <buffer> <silent> \+caa :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch all")
inoremap <buffer> <silent> \+ca :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.catch")
inoremap <buffer> <silent> \+tr :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.try catch")
inoremap <buffer> <silent> \+ioi :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, in")
inoremap <buffer> <silent> \+ioo :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.operator, out")
inoremap <buffer> <silent> \+tf :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template function")
inoremap <buffer> <silent> \+ita :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template accessor")
inoremap <buffer> <silent> \+itm :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template method")
inoremap <buffer> <silent> \+itcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class using new")
inoremap <buffer> <silent> \+itc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.template class")
inoremap <buffer> <silent> \+ia :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.accessor")
inoremap <buffer> <silent> \+im :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.method")
inoremap <buffer> <silent> \+icn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class using new")
inoremap <buffer> <silent> \+ic :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.IMPLEMENTATION.class")
inoremap <buffer> <silent> \+ec :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.error class")
inoremap <buffer> <silent> \+tcn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class using new")
inoremap <buffer> <silent> \+tc :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.template class")
inoremap <buffer> <silent> \+cn :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class using new")
inoremap <buffer> <silent> \+c :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.class")
inoremap <buffer> <silent> \+fb :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.ios flagbits")
inoremap <buffer> <silent> \+om :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.output manipulators")
inoremap <buffer> <silent> \+ich :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C std lib header")
inoremap <buffer> <silent> \+ih :call mmtemplates#core#InsertTemplate(g:C_Templates,"C++.include C++ std lib header")
inoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.macros")
inoremap <buffer> <silent> \csc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.special comments")
inoremap <buffer> <silent> \ckc :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.keyword comments")
inoremap <buffer> <silent> \chs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.H file sections")
inoremap <buffer> <silent> \ccs :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.C file sections")
inoremap <buffer> <silent> \cfdh :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description header")
inoremap <buffer> <silent> \cfdi :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.file description impl")
inoremap <buffer> <silent> \ccl :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.class")
inoremap <buffer> <silent> \cme :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.method")
inoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.function")
inoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:C_Templates,"Comments.frame")
inoremap <buffer> <silent> \njt :call mmtemplates#core#InsertTemplate(g:C_Templates,"Snippets.jump tags")
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rh :call C_Hardcopy()
imap <buffer> <silent> \ri :call C_Indent()
imap <buffer> <silent> \rccs :call C_CppcheckSeverityInput()
imap <buffer> <silent> \rcc :call C_CppcheckCheck():call C_HlMessage()
imap <buffer> <silent> \rpa :call C_SplintArguments()
imap <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
imap <buffer> <silent> \rma :call C_MakeArguments()
imap <buffer> <silent> \rme :call C_ExeToRun()
imap <buffer> <silent> \rmc :call C_MakeClean()
imap <buffer> <silent> \rcm :call C_ChooseMakefile()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \rl :call C_Link():call C_HlMessage()
imap <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
inoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:C_Templates,"!pick")
inoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:C_Templates,"reload","all")
inoremap <buffer> <silent> \ntg :call mmtemplates#core#EditTemplateFiles(g:C_Templates,1)
inoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:C_Templates,-1)
inoremap <buffer> <silent> \ns :call C_ProtoShow()
inoremap <buffer> <silent> \nc :call C_ProtoClear()
inoremap <buffer> <silent> \ni :call C_ProtoInsert()
inoremap <buffer> <silent> \nm :call C_ProtoPick("method")
inoremap <buffer> <silent> \nf :call C_ProtoPick("function")
inoremap <buffer> <silent> \np :call C_ProtoPick("function")
inoremap <buffer> <silent> \ne :call C_CodeSnippet("e")
inoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
inoremap <buffer> <silent> \nv :call C_CodeSnippet("view")
inoremap <buffer> <silent> \nr :call C_CodeSnippet("r")
inoremap <buffer> <silent> \in :call C_CodeFor("down"    )
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"    )
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
inoremap <buffer> <silent> \cx :call C_CommentToggle( )
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')a
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')a
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()a
inoremap <buffer> <silent> \cl :call C_EndOfLineComment()
inoremap <buffer> { {}O
let &cpo=s:cpo_save
unlet s:cpo_save
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
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
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
setlocal dictionary=/usr/share/vim/vimfiles/c-support/wordlists/c-c++-keywords.list,/usr/share/vim/vimfiles/c-support/wordlists/k+r.list,/usr/share/vim/vimfiles/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
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
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=8
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=8
setlocal tags=~/projekty/jftt/.git/cpp.tags,~/projekty/jftt/.git/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 64 - ((11 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
64
normal! 050|
tabedit Makefile
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <C-F9> :call C_Make()
map <buffer> <silent> \rma :call C_MakeArguments()
map <buffer> <silent> \rme :call C_MakeExeToRun()
map <buffer> <silent> \rmc :call C_MakeClean()
map <buffer> <silent> \rcm :call C_ChooseMakefile()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> <C-F9> :call C_Make()
imap <buffer> <silent> \rma :call C_MakeArguments()
imap <buffer> <silent> \rme :call C_MakeExeToRun()
imap <buffer> <silent> \rmc :call C_MakeClean()
imap <buffer> <silent> \rcm :call C_ChooseMakefile()
imap <buffer> <silent> \rm :call C_Make()
let &cpo=s:cpo_save
unlet s:cpo_save
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
setlocal comments=sO:#\ -,mO:#\ \ ,b:#
setlocal commentstring=#\ %s
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
setlocal noexpandtab
if &filetype != 'make'
setlocal filetype=make
endif
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
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*include
setlocal includeexpr=
setlocal indentexpr=GetMakeIndent()
setlocal indentkeys=!^F,o,O,<:>,=else,=endif
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'make'
setlocal syntax=make
endif
setlocal tabstop=8
setlocal tags=~/projekty/jftt/.git/make.tags,~/projekty/jftt/.git/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 025|
tabedit plik_testowy
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
if &filetype != ''
setlocal filetype=
endif
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
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=8
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 04|
tabnext 3
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
