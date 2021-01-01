" Reminder: Open folds with zo

"{{{ Package Management
function! PackInit() abort
    packadd minpac

    call minpac#init()
    call minpac#add('k-takata/minpac', {'type': 'opt'})

    " Additional plugins here.
    call minpac#add('dense-analysis/ale')
    call minpac#add('vim-airline/vim-airline')
    call minpac#add('vim-airline/vim-airline-themes')
    call minpac#add('OmniSharp/omnisharp-vim')
endfunction

" Define user commands for updating/cleaning the plugins.
" Each of them calls PackInit() to load minpac and register
" the information of plugins, then performs the task.
command! PackUpdate call PackInit() | call minpac#update()
command! PackClean  call PackInit() | call minpac#clean()
command! PackStatus packadd minpac | call minpac#status()
"}}}

"{{{ Plugin Configuration

" NOTE:
" Flawfinder is awesome, but is a little overaggressive
" So aggressive that BSD libraries (that GCC has no issues with compiling on the most pedantic settings) aren't valid according to it.
"let b:ale_fixers = ['gcc']
let g:ale_linters = {
            \   'c': ['gcc'],
            \}
"}}}

"{{{ Basic Settings
set termguicolors
set showmatch
set mouse=a
set clipboard+=unnamedplus

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

set wildmode=longest,list
set path+=**
set ignorecase
set hlsearch
set incsearch

set title
"set background=dark
set t_Cp=256
"colorscheme PaperColor
"colorscheme space-vim-dark
"colorscheme president
"colorscheme base16-unikitty-dark
colorscheme challenger_deep

highlight Cursor guifg=black guibg=white
highlight iCursor guifg=black guibg=white
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor

filetype plugin indent on
syntax on

"set showtabline=2
set cursorline
set laststatus=2
set number

set hidden
set nowrap
set linebreak

"{{{ Auto-scrolling

set scrolloff=999       " Have cursor always* in the middle of screen
set sidescrolloff=50    " Start scrolling when 50 chars from margin
set sidescroll=10        " Scroll horizontally by 10 chars at a time
"}}}

"}}}

"{{{ Filetype Specific
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
augroup c_is_c
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c
augroup END

augroup filetype_ruby
    autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2 foldmethod=syntax foldnestmax=2
augroup END

"}}}

"{{{ Mappings

"}}}

"{{{ Status Line


"}}}
