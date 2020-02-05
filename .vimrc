"Set color range
set t_Co=256
set encoding=utf8

" BEGIN Vundle
set nocompatible
filetype off

" Add vundle to runtime path and start it
set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()

" Let vundle manage itself
Plugin 'vundlevim/vundle.vim'

" My plugins
Plugin 'ryanoasis/vim-devicons'         " Filetype icons for CTRL-P and NERDTree
Plugin 'scrooloose/syntastic'           " Syntax highlighting
Plugin 'scrooloose/nerdtree'            " File tree
Plugin 'scrooloose/nerdcommenter'       " Comment toggle 
Plugin 'tpope/vim-surround'             " Motions for changing surrounding quotes
Plugin 'tpope/vim-fugitive'             " Git integration commands
Plugin 'jiangmiao/auto-pairs'           " Automatically add endquotes
Plugin 'HTML-AutoCloseTag'              " Automatically close HTML tags
Plugin 'TaskList.vim'                   " List TODOs in code
Plugin 'ctrlpvim/ctrlp.vim'             " Fuzzy file search
Plugin 'vim-airline/vim-airline'        " Vim statusbar powerlineification
Plugin 'vim-airline/vim-airline-themes' " Themes for fancy status bar
Plugin 'airblade/vim-gitgutter'         " Line-by-line git changes in left gutter
Plugin 'mhinz/vim-signify'              " Line-by-line changes for other VCS
Plugin 'dhruvasagar/vim-table-mode'     " Pretty markdown tables
Plugin 'easymotion/vim-easymotion'      " Quick visual jumps to different parts of the document
Plugin 'vim-scripts/ZoomWin'            " Support for restoring windows after doing a CTRL-Wo
Plugin 'SidOfc/mkdx'                    " Advanced markdown actions
Plugin 'chr4/nginx.vim'                 " Nginx configuration file highlighting

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
let g:webdevicons_enable_airline_statusline = 1
set laststatus=2

"Tasklist.vim options
let g:tlTokenList = ['TODO', 'FIX', 'NOTE']
let g:tlWindowPosition = 1

"Gitgutter/signify options
let g:signify_vcs_list = ['hg']
set updatetime=250

"NERDTree options
let g:NERDTreeNodeDelimiter = "\u00a0"

"Table mode settings
let g:table_mode_corner="|"

"Make search smart-case-sensitive
set ignorecase
set smartcase

"Enable syntax
syn on
