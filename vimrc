call plug#begin('~/.vim/plugged')
" PLUGINS
	" basic
Plug 'Lokaltog/vim-easymotion'
Plug 'tpope/vim-sensible'
Plug 'SirVer/ultisnips'
	" appearance 
Plug 'bling/vim-airline'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'tomasr/molokai'
Plug 'scrooloose/syntastic'
	" edit
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'mbbill/undotree',			{ 'on': 'UndotreeToggle' }
	" browsing
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree',		{ 'on': 'NERDTreeToggle' }
Plug 'justinmk/vim-gtfo'
	" git
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv',			{ 'on': 'Gitv' }
Plug 'airblade/vim-gitgutter'
	" lang
Plug 'fatih/vim-go'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-fireplace',			{ 'for': 'clojure' }
Plug 'guns/vim-clojure-static',		{ 'for': 'clojure' }
Plug 'guns/vim-clojure-highlight',	{ 'for': 'clojure' }
Plug 'kovisoft/paredit',			{ 'for': 'clojure' }
Plug 'groenewege/vim-less'
Plug 'pangloss/vim-javascript'
Plug 'kchmck/vim-coffee-script'
Plug 'honza/dockerfile.vim'
Plug 'klen/python-mode'
Plug 'digitaltoad/vim-jade'
call plug#end()

" KEYBINDINGS
let mapleader		= ' '
let maplocalleader	= ' '

nnoremap <C-e> :NERDTreeToggle<cr>
nnoremap U :UndotreeToggle<cr>

nnoremap <Leader><tab> :bn<cr>
nnoremap <Leader>t :enew<cr>
nnoremap <Leader>w :bw<cr>
nnoremap <Leader>l :bn<cr>
nnoremap <Leader>p :bp<cr>

nnoremap <silent> <C-k> :move-2<cr>
nnoremap <silent> <C-j> :move+<cr>
" PLUGIN SETTINGS
	" nerdtree
let NERDTreeQuitOnOpen=1

	" airline
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod=':t'

	" fugitive
nnoremap <Leader>g :Gstatus<cr>gg<c-n>
nnoremap <Leader>d :Gdiff<cr>

	" indentLine
let g:indentLine_enabled =1

	" undotree
let g:undotree_WindowLayout =2

	"clojure
augroup lisp
	autocmd!
	autocmd FileType lisp.clojure.scheme RainbowParentheses
augroup END
let g:paredit_smartjump =1

" BASIC SETTINGS

set nu
set autoindent
set smartindent
set showcmd

set tabstop=4
set shiftwidth=4
set softtabstop=4

set hidden
colorscheme Tomorrow-Night

" 80 chars/line
set textwidth=0
if exists('&colorcolumn')
	set colorcolumn=80
endif

" open at close line
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" 256 colors
set t_Co=256
