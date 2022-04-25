" ---------------------
" Basic editor settings
" ---------------------

" Disable legacy compatibility mode
set nocompatible

" Disable the default Vim startup message
set shortmess+=I

" Show status bar even if you have only a single file open
set laststatus=2

" Show n lines above or below if possible
set scrolloff=5

" Show command while typing
set showcmd

" Show menu with list of possible command completions
set wildmenu

" Display current line number
set number

" Show relative line number
set relativenumber

" Display cursor position
set ruler

" Soft wrap lines at complete words
set linebreak

" Backspace behaves as you would expect
set backspace=indent,eol,start

" Lowercase search is case unsensitive, uppercase is sensitive
set ignorecase
set smartcase

" Enable incremental search
set incsearch

" Highlight all matching words
set hlsearch

" Enable mouse support
set mouse+=a

" Intuitively move cursor to newly opened split
set splitbelow
set splitright

"------------------
" Syntax and indent
"------------------

" Enable syntax highlighting
syntax on

" Detect file type
filetype plugin indent on

" Automatically indent files
set autoindent

" Set tab config
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"-------------
" Key bindings
"-------------

" Unbind Ex mode key binding
nmap Q <Nop>

" Simplify split windows navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"--------
" Plugins
"--------

" NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

