"Set color range
set t_Co=256
set encoding=utf8

" BEGIN Vundle
set nocompatible
filetype off

" Add vundle to runtime path and start it
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let vundle manage itself
Plugin 'vundlevim/vundle.vim'

" My plugins
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'jiangmiao/auto-pairs'
Plugin 'HTML-AutoCloseTag'
Plugin 'TaskList.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-signify'
Plugin 'ryanoasis/vim-devicons'

" End vundle config
call vundle#end()
filetype plugin indent on

" Personal settings
filetype indent on " Set automatic indentation on 
set sw=4 ts=4 " Shrink tab length 

" Map ctrl-<direction> to switch buffers in that direction
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

" Make vim read .asm files as the .nasm filetype
autocmd BufRead,BufNewFile *.asm set filetype=nasm 

"Syntastic options
let g:syntastic_java_javac_config_file_enabled = 1

"Airline options
let g:airline_powerline_fonts = 1
set laststatus=2

"Tasklist.vim options
let g:tlTokenList = ['TODO', 'FIX', 'NOTE']
let g:tlWindowPosition = 1

"Gitgutter/signify options
let g:signify_vcs_list = ['hg']
set updatetime=250

"Make search smart-case-sensitive
set ignorecase
set smartcase

