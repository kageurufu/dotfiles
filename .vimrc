set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'Lokaltog/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'flazz/vim-colorschemes'
Plugin 'mattn/emmet-vim'
Plugin 'fatih/vim-go'
Plugin 'majutsushi/tagbar'

call vundle#end()

filetype plugin indent on

set encoding=utf-8
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
syntax on

set encoding=utf-8
set laststatus=2

nnoremap ; :

let mapleader=","
set backspace=2

nmap <F8> :TagbarToggle<CR>

colorscheme molokai
set noshowmode

" Ctrlp configurations
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['.ctrlp', 'PKGBUILD', '.git/', '.bzr/']

"Automatically reload .vimrc when saving
autocmd! BufWritePost vimrc nested :source ~/.vimrc
