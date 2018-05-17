" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fireplace'
Plug 'guns/vim-clojure-static'
" Plug 'lervag/vimtex'
Plug 'vim-syntastic/syntastic'
Plug 'maxboisvert/vim-simple-complete'
Plug 'luochen1990/rainbow'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'matze/vim-tex-fold'


Plug 'edkolev/tmuxline.vim'
Plug 'dracula/vim',{'as':'dracula'}

" Initialize plugin system
call plug#end()

noremap      n      j
noremap      N      J
noremap     gn     gj
noremap     gN     gJ
noremap     zn     zj
noremap <c-w>n <c-w>j
noremap <c-w>N <c-w>J

noremap      e      k
noremap      E      K
noremap     ge     gk
noremap     gE     gK|" nop
noremap     ze     zk
noremap <c-w>e <c-w>k
noremap <c-w>E <c-w>K

noremap      i      l
noremap      I      L
noremap     zi     zl
noremap     zI     zL
noremap <c-w>i <c-w>l
noremap <c-w>I <c-w>L
noremap     [i     [l|" nop
noremap     [I     [L|" nop
noremap     ]i     ]l|" nop
noremap     ]I     ]L|" nop

noremap      j      e
noremap      J      E
noremap     gj     ge
noremap     gJ     gE
noremap     zj     ze
noremap     zJ     zE

noremap      k      n
noremap      K      N
noremap     gk     gn|" nop
noremap     zk     zn
noremap     zK     zN
noremap <c-w>k <c-w>n

noremap      l      i
noremap      L      I
noremap     gl     gi
noremap     gL     gI
noremap     zl     zi
noremap <c-w>l <c-w>i
noremap     [l     [i
noremap     [L     [I
noremap     ]l     ]i


filetype plugin indent on
set termguicolors
syntax on
set number
set laststatus=2
set ignorecase
set incsearch
set hlsearch
set scrolloff=999
set spelllang=nl
set spell
set mouse=a
set foldenable
set foldmethod=syntax


let mapleader="'"
color dracula

" LaTeX lstlistings with syntastic is annoying
let g:syntastic_disabled_filetypes=['tex']
let g:rainbow_active = 1
let g:indent_guides_enable_on_vim_startup = 1

	let g:rainbow_conf = {
	\	'guifgs': ['lightblue', 'darkorange3', 'seagreen3', 'firebrick'],
	\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': {},
	\		'tex': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\		},
	\		'lisp': {
	\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
	\		},
	\		'vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\		'html': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'css': 0,
	\	}
	\}
