" Set commands for vim ---------------------------------------------------------------- {{{

" Set command code goes here.

set wrap
set number
set autoindent
set shiftwidth=4
filetype on
filetype indent on
filetype plugin on
set tabstop=4
set wildmenu
set path+=**
set expandtab
set ignorecase
set incsearch
set laststatus=2
set cursorline
set title
set mouse=a
set autoread
set confirm
set history=1000
set foldmethod=indent
set foldnestmax=3
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set cc=80
set backupdir=~/.cache/vim
set mouse=v
set showmatch
set splitright
set splitbelow
set clipboard+=unnamedplus "requires xclip for X11 and wl-copy and wl-paste for wayland"

" }}}

" PLUGINS ---------------------------------------------------------------- {{{

" Plugin code goes here.
call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'dracula/vim'
Plug 'neoclide/coc.nvim' , {'branch': 'release'}


call plug#end()
" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.


" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}



" Colors  ------------------------------------------------------------ {{{
" Vim colors go here.
colorscheme dracula

" }}}

