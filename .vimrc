set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'scrooloose/nerdtree'
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


call vundle#end()            " required

filetype plugin indent on    " required

set encoding=utf-8
set number
syntax enable

set background=dark
colorscheme solarized
