set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'

" write
Plugin 'junegunn/goyo.vim'

" color scheme
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-scripts/peaksea'
Plugin 'tomasr/molokai'

" code mode
Plugin 'pangloss/vim-javascript'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'skammer/vim-css-color'  " css mode


call vundle#end()            " required

filetype plugin indent on    " required

set encoding=utf-8
" set number
syntax enable

" 256 support
if ! has("gui_running")
  set t_Co=256
endif

set background=dark
colorscheme peaksea


" convent tab to space
set tabstop=2
set shiftwidth=2
set expandtab

" map
let mapleader=","
map <leader>nt :NERDTreeToggle<cr>
map <leader>z :Goyo<cr>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

" command W w !sudo tee % > /dev/null

" iab
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>

" filetypes
autocmd Filetype python setlocal ts=4 sw=4
autocmd Filetype html setlocal ts=2 sw=2
autocmd Filetype scss setlocal ts=2 sw=2
autocmd Filetype css setlocal ts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sw=2
autocmd BufRead,BufNewFile *.wxss set filetype=css " Wechat
autocmd BufRead,BufNewFile *.wxml set filetype=xml " Wechat
autocmd BufRead,BufNewFile *.wxml let b:syntastic_skip_checks=1 " Skip Error
