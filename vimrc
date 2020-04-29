" No need for backward compatibility
set nocompatible
" Required for Vundle
filetype off

" Add Vundle to runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle manages Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all plugins here
" Python PEP8 indentation
Plugin 'vim-scripts/indentpython.vim'
" Color scheme
Plugin 'altercation/vim-colors-solarized'
" File navigation
Plugin 'scrooloose/nerdtree'
" Python formatter
Plugin 'mindriot101/vim-yapf'
" All of your Plugins must be added before the following line
call vundle#end()            
filetype plugin indent on    " Required for Vundle

" Select color scheme based gui/terminal mode
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  let g:solarized_termcolors=256
  let g:solarized_termtrans=1
  set background=dark
  colorscheme solarized
endif

" Key binding to toggle file navigation
map <C-n> :NERDTreeToggle<CR>

" Apply formatting to the whole file
:function FormatFile()
:  if (&ft=='cpp')
:    let l:lines="all"
:    py3f $HOME/.vim/scripts/clang-format.py
:  endif
:  if (&ft=='python')
:    :Yapf
:  endif
:  if (&ft=='cmake')
:    :%!cmake-format /dev/stdin
:  endif
:  if (&ft=='haskell')
:    :%!brittany --write-mode=inplace
:  endif

:endfunction

" Key binding to apply clang-format
map <C-m> :call FormatFile()<CR>

" No netrwhist file
:let g:netrw_dirhistmax = 0
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
" Intuitive splitting
set splitbelow
set splitright

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Highlight search
set hlsearch
" Ignore case of search
set ignorecase
" Case sensitive search pattern contains upper case characters
set smartcase
" Search dynamically
set incsearch

" Global indentation preferences
set shiftwidth=2
set expandtab
set tabstop=2
" C++ indentation
autocmd FileType cpp setlocal expandtab tabstop=2 shiftwidth=2

" Add mouse support
if has('mouse')
  set mouse=a
endif

" File type settings
autocmd BufEnter *.launch :setlocal filetype=xml
autocmd BufEnter *.urdf :setlocal filetype=xml
