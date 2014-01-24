set nocompatible
filetype on

set rtp+=~/.vim/bundle/vundle

call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'Lokaltog/vim-easymotion'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'Valloric/YouCompleteMe'
Bundle 'Lokaltog/powerline'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'flazz/vim-colorschemes'

filetype plugin indent on

set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
syntax on

set encoding=utf-8
set laststatus=2

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
let g:Powerline_symbols = 'fancy'
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
let g:Powerline_mode_V="V·LINE"
let g:Powerline_mode_cv="V·BLOCK"
let g:Powerline_mode_S="S·LINE"
let g:Powerline_mode_cs="S·BLOCK"
set noshowmode
nnoremap ; :
let mapleader= ","
colorscheme molokai
let g:ctrlp_working_path_mode = 'ra'
set backspace=2
