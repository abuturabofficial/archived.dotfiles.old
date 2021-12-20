" Set commands for vim ---------------------------------------------------------------- {{{

" Set command code goes here.

set completeopt=menuone,noinsert,noselect
set wrap
set number
set relativenumber
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
set foldnestmax=1
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set cc=80
set backupdir=~/.cache/nvim
set mouse=v
set signcolumn=yes
set cmdheight=1
set updatetime=750
let mapleader=" "
if (has("termguicolors"))
    set termguicolors
endif
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
Plug 'norcalli/nvim-colorizer.lua'
call plug#end()
" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

" Moving between tabs"

nnoremap J gT
nnoremap K gt

" Moving between splits"

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>
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

