" No need for backward compatibility
set nocompatible
" Use system clipboard by default
set clipboard=unnamed
" Enhance command autocompletion
set wildmenu
" Set UTF-8 encoding
set encoding=utf-8
" Enable line numbers
set number
" Show cursor position
set ruler
" Show command while typing
set showcmd
" Show mode
set showmode

" Highlight search
set hlsearch
" Ignore case of search
set ignorecase
" Case sensitive search pattern contains upper case characters
set smartcase
" Search dynamically
set incsearch

" Add mouse support
if has('mouse')
  set mouse=a
endif

" File type settings
autocmd BufEnter *.launch :setlocal filetype=xml
autocmd BufEnter *.urdf :setlocal filetype=xml
