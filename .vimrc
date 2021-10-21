" General
syntax on
set nocompatible
set ruler
set number
set cursorline
set title
set wildmenu wildmode=list:full
set noswapfile

set tabstop=2
set wrap
set autoindent

" Searching
set hlsearch
set ignorecase
set incsearch

" backspace
set backspace=indent,eol,start

" clipboard
set clipboard+=unnamed

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Status bar
set laststatus=2

" Others
set belloff=all

"
" Plugins
"
call plug#begin('~/.vim/plugged')

" Status-bar 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" File tree
Plug 'scrooloose/nerdtree'

" themes
Plug 'gertjanreynaert/cobalt2-vim-theme'
Plug 'ulwlu/elly.vim'

call plug#end()

" themes
autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight LineNr ctermbg=none
colorscheme cobalt2 
set termguicolors
let g:airline_theme='cobalt2'
hi clear CursorLine

"
" Key bindings
"

" NERDTree
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" Undo
nnoremap U <c-r>

