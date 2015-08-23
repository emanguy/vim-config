" BEGIN Vundle
set nocompatible
filetype off

" Add vundle to runtime path and start it
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let vundle manage itself
Plugin 'gmarik/Vundle.vim'

" My plugins
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'jiangmiao/auto-pairs'

" End vundle config
call vundle#end()
filetype plugin indent on

" Personal settings
filetype indent on
set sw=4 ts=4
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
