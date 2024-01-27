" Use Vim-Plug to manage plugins
set nocompatible              " Be iMproved, required
filetype off                  " Required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugins
Plugin 'VundleVim/Vundle.vim'  " Vundle itself
Plugin 'prettier/vim-prettier'  " Add vim-prettier
" Plugin 'mattn/emmet-vim'   Emmet-vim
" Plugin 'airblade/vim-gitgutter'   vim-gitgutter
" Plugin 'tpope/vim-commentary'   commentary.vim
" Plugin 'tpope/vim-fugitive'   vim-fugitive
" Plugin 'neoclide/coc.nvim'   coc.nvim
" Plugin 'dense-analysis/ale'   ale
" Plugin 'epilande/vim-react-snippets'   vim-react-snippets
" Plugin 'vim-syntastic/syntastic'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Your existing .vimrc content below

" Enable syntax highlighting
syntax on

" Enable line numbers
set number

" Enable automatic indentation
set autoindent

" Set the tab width to 4 spaces and use spaces instead of tabs for indentation
set tabstop=4
set shiftwidth=4
set expandtab

" Highlight search results
set hlsearch

" Enable incremental search
set incsearch

" Show matching parentheses
set showmatch

" Enable mouse support
set mouse=a

" Set a color scheme (choose your preferred color scheme)
" colorscheme desert
set t_Co=256
set term=xterm-256color


" Enable file type detection
filetype on

" Enable syntax highlighting for specific file types
filetype plugin indent on

" This setting allows you to move the cursor one character beyond the end of the line while in insert or command-line mode.
set virtualedit+=onemore

autocmd BufWritePre *.js,*.jsx,*.json,*.css,*.ejs,*.scss,*.html,*.vue,*.yaml,*.md,*.markdown PrettierAsync
" Set the title of the terminal to the current file name
autocmd BufEnter * let &titlestring = expand("%:t")
" Specify ESLint as the checker for JavaScript files

" Use the global ESLint installation
vnoremap <C-S-C> "+y

" Set the terminal title to the name of the current file
if &term =~ '^xterm\|screen\|tmux'
    set title
    augroup Title
        autocmd!
        autocmd BufEnter * let &titlestring = expand("%:t")
    augroup END
endif

