set nocompatible              " Be iMproved, required
filetype off                  " Required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugins
Plugin 'VundleVim/Vundle.vim'  " Vundle itself
Plugin 'prettier/vim-prettier' 
Plugin 'dense-analysis/ale'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set number

set autoindent

set tabstop=4
set shiftwidth=4
set expandtab

set hlsearch

set incsearch

autocmd BufWritePost * :silent! BufEnter <buffer> | :ALEDiagnostic | BufLeave <buffer>
set showmatch

set mouse=a

set t_Co=256
set term=xterm-256color


filetype on

filetype plugin indent on

set virtualedit+=onemore

vnoremap <C-S-C> "+y

if &term =~ '^xterm\|screen\|tmux'
    set title
    augroup Title
        autocmd!
        autocmd BufEnter * let &titlestring = expand("%:t")
    augroup END
endif

" Remaping contro shift c to copy to clipboard
nnoremap <C-S-x> "+y
vnoremap <C-S-x> "+y
inoremap <C-S-x> <C-O> "+y



