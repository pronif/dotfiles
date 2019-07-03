" No need for backward compatibility
set nocompatible
" Enable line numbers
set number
" Show cursor position
set ruler

" Highlight search
set hlsearch
" Ignore case of search
set ignorecase
" Search dynamically
set incsearch

" File type settings
autocmd BufEnter *.launch :setlocal filetype=xml
autocmd BufEnter *.urdf :setlocal filetype=xml
