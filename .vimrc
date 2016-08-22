" BEGIN Vundle
set nocompatible
filetype off

" Add vundle to runtime path and start it
set rtp+=~/.vim/bundle/vundle.vim
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

let g:syntastic_java_javac_config_file_enabled = 1

let g:tlTokenList=['TODO', 'FIX', 'NOTE']
let g:tlWindowPosition=1
