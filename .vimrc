set nocompatible " be iMprved, required
filetype off " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'jelera/vim-javascript-syntax' " Javascript syntax highlighting

Plugin 'scrooloose/nerdtree'

Plugin 'othree/html5.vim'

Plugin 'kien/ctrlp.vim'

Plugin 'Valloric/YouCompleteMe'

Plugin 'bronson/vim-trailing-whitespace'

Plugin 'mileszs/ack.vim'

Plugin 'christoomey/vim-tmux-navigator'

Plugin 'vim-syntastic/syntastic'

Plugin 'tpope/vim-fugitive'

Plugin 'airblade/vim-gitgutter'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

" All of your plugins must be added before the following line
call vundle#end() " require
"filetype plugin indent on " required

let mapleader = ","
nmap <leader>ne :NERDTree<cr>

"Colors
colorscheme badwolf
syntax enable "enable syntax processing

"Tabs
set expandtab
set fileformat=unix

set noshowmode
set smartcase


au BufNewFile,BufRead *.py,*.c,*.cpp
    \ set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 autoindent

au BufNewFile,BufRead *.js,*.html,*.css,*hs
    \ set tabstop=2 softtabstop=2 shiftwidth=2 autoindent

"UI
set number " show line numbers
set showcmd " show command in bottom bar
set cursorline " highlight current line
filetype indent on " load filetype-specific indent files
set showmatch " highlight matching [{()}]
set wildmenu " visual autocomplete for command menu

"Searching
set incsearch " search as characters ar entered
set hlsearch " highlight matches

" Turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Silver searcher
let g:ackprg = 'ag --nogroup --nocolor --column'
nnoremap <leader>a :Ack<space>

let g:airline_theme='badwolf'

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

nnoremap 0 ^
