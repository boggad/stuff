set tabstop=4
set shiftwidth=4
set smarttab
set ai
set showmatch
set ignorecase
set number
set encoding=utf-8
set backspace=indent,eol,start
set ttyfast
set cursorline
set showcmd
set smartcase
set incsearch
set gdefault
set wrap
" set timeoutlen=250

map <F2> :mksession! ~/vim_session <cr>
map <F3> :source ~/vim_session <cr>
map <C-n> :NERDTreeToggle<CR>

let mapleader = ","
inoremap jj <Esc>
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <leader>ev <C-w><C-v><C-l>:e ~/.vimrc<cr>
nnoremap <leader><space> :noh<cr>
nnoremap ; :
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

colorscheme CandyPaper

autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'guns/vim-clojure-static'
Plugin 'luochen1990/rainbow'
let g:rainbow_active = 1
Plugin 'othree/eregex.vim'

let g:user_emmet_leader_key="<C-n>"
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<C-Space>"
let g:UltiSnipsJumpBackwardTrigger="<C-b>"


call vundle#end()
filetype plugin indent on
syntax on