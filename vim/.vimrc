if &compatible
  set nocompatible
endif

call plug#begin('~/.vim/plugged')

Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim', {'do': 'make'}

if v:version > 730
  Plug 'Valloric/YouCompleteMe', {'do': './install.py --all'}
endif

Plug 'tpope/vim-fugitive'
Plug 'Lokaltog/vim-easymotion'
Plug 'scrooloose/syntastic'
Plug 'bling/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'mattn/emmet-vim'
Plug 'maksimr/vim-jsbeautify'
Plug 'tomtom/tcomment_vim'
Plug 'wellle/targets.vim'
Plug 'michaeljsmith/vim-indent-object'

" Filetypes and syntax goes here
Plug 'wting/rust.vim'
Plug 'cespare/vim-toml'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'kchmck/vim-coffee-script'
Plug 'tikhomirov/vim-glsl'
Plug 'wlangstroth/vim-racket'
Plug 'dart-lang/dart-vim-plugin'

" Colorschemes
Plug 'flazz/vim-colorschemes'

call plug#end()

filetype plugin indent on
syntax on

set t_Co=256
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

let g:airline_powerline_fonts = 1
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2

set encoding=utf-8
set laststatus=2

set number
set relativenumber

set hidden
set nowrap
set autoindent
set copyindent

set shiftround
set showmatch
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set visualbell
set noerrorbells

set nobackup
set noswapfile

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set spell spelllang=en_us
set mouse=a

nnoremap ; :
let mapleader=","
set backspace=2

set noshowmode

" Unite.vim configurations

" Ctrlp configurations
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['.ctrlp', 'PKGBUILD', '.git/', '.bzr/', 'Cargo.toml']
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']

nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction

"Some hotkeys
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

map <C-up> <C-w><up>
map <C-down> <C-w><down>
map <C-left> <C-w><left>
map <C-right> <C-w><right>

autocmd Filetype gitcommit setlocal spell textwidth=72

autocmd FileType javascript noremap <buffer> <c-f> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

autocmd FileType python set tabstop=4
autocmd FileType python set shiftwidth=4

autocmd FileType html,xml set listchars-=tab:>.

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<cr>
nnoremap <F5> :YcmForceCompileAndDiagnostics<cr>

let g:ycm_confirm_extra_conf = 0
let g:syntastic_always_populate_loc_list = 1
let g:ycm_collect_identifiers_from_tags_files = 1
set tags+=./.tags

set pastetoggle=<F2>

command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
command Wq :execute ':silent w !sudo tee % > /dev/null' | :quit!
