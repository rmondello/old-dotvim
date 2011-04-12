" Ricky's vimrc.

""" Experimental Section

augroup myvimrchooks
  au!
  autocmd bufwritepost .vimrc source ~/.vimrc
augroup END

nmap ;; :wa\|make<cr>
set hlsearch " Highlight words on search...
" But kill highlight on underscore.
nnoremap <silent> _ :nohl<CR> 
set clipboard=unnamedplus " * register is Mac OS clipboard!

""" End Experimental Section

" Silence the vim startup screen.
set shortmess=I
nmap <leader>w :w!<cr>

" escape with jj!
imap jj <Esc>

let g:SuperTabCompletionContexts = ['s:ContextText' , 's:ContextDiscover']
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
let g:SuperTabContextDiscoverDiscovery = ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]

" Pathogen, a sane package manager for Vim plugins.
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set mouse=a	" Enable mouse features. Scrolling. Text selection.
"set ttymouse=xterm2

" From Phil and Marshall:

let mapleader = ","
let g:mapleader = ","
nmap <leader>w :w!<cr>

set so=7
set wildmode=longest:full
set wildmenu    " autocomplete and fun stuff!
set ruler       " always show current pos
set cmdheight=2 " shortens cmd height

set backspace=eol,start,indent " backspace configuration
set whichwrap+=<,>,h,l

set ignorecase " Ignore case when searching
set smartcase

set incsearch " more like webbrowser search
set nolazyredraw " Don't redraw during macros

set magic " For regular expressions

set showmatch " Matching braces highlighting
set mat=2 " Blink for above

"No sound on errors
set noerrorbells
set novisualbell
"set visualbell
set t_vb=
set tm=500

"COLOR SETTINGS

syntax enable "Enable syntax hl
"set background=dark
set t_Co=256
if has("gui_running") || $TERM=="xterm-256color"
    set t_Co=256
    set guioptions-=T
    colorscheme sunburst
    set nonu
    "highlight OverLength ctermbg=209 ctermfg=0 guibg=#592929
    "match OverLength /\%81v.\+/
else "Had to do this in order to continue to allow syntax highlighting on non-
     "xterm-256color and non-GUI vims.  On OS X, the entire file flashes
     "if this is not set.
    set t_Co=256
    colorscheme sunburst
    set nonu
    "highlight OverLength ctermbg=red ctermfg=black
    "match OverLength /\%81v.\+/
endif

set encoding=utf8
try
    lang en_US
catch
endtry

set ffs=unix,dos,mac "Default file types

set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"Bracket and Paren auto expansion
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc>

" Map auto complete of (, ", ', [
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i
inoremap $t <><esc>i

set nocompatible 
set number

set textwidth=80
set tw=80
set wrap

" set default indentation (per-language settings below)
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab

" From Mike White:

" only complete up to longest common string, always show a menu
set completeopt=longest,menuone,preview

" Try Snipmate, then omnicompletion, before returning regular tab
" function! HandleTab()
" 	let snippet_response = exists("TriggerSnippet") ? TriggerSnippet() : "\<tab>"
" 	if snippet_response != "\<tab>"
" 		return snippet_response
" 	elseif exists("omnifunc") && col('.') > 1 && strpart( getline('.'), col('.')-2, 3) =~ '^\w'
" 		return "\<C-X>\<C-O>"
" 	else
" 		return "\<Tab>"
" 	endif
" endfunction

" inoremap <Tab> <C-R>=HandleTab()<CR>

if has("autocmd")
	" language-specific indentation settings
	autocmd FileType c,cpp				      setlocal ts=4 sts=4 sw=4 et tw=80 nowrap
	autocmd FileType sh,csh,tcsh,zsh	  setlocal ts=4 sts=4 sw=4 et
	autocmd FileType php,javascript,css	setlocal ts=4 sts=4 sw=4 et
	autocmd FileType text,txt,mkd		    setlocal ts=4 sts=4 sw=4 et tw=80 wrap
	
  autocmd FileType html,xhtml,xml		  setlocal ts=2 sts=2 sw=2 et
	autocmd FileType ruby,eruby,yaml	setlocal ts=2 sts=2 sw=2 et
	autocmd FileType scm,sml,lisp			    setlocal ts=2 sts=2 sw=2 et tw=80 nowrap

	" language-specific general settings
	autocmd FileType php noremap <C-M> :w!<CR>:!php %<CR>		" run file
	autocmd FileType php noremap <C-L> :w!<CR>:!php -l %<CR>	" check syntax

endif

au BufNewFile,BufRead *.uml set filetype=scheme

