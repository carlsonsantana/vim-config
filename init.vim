set nocompatible

source ~/.vim/plugins.vim

scriptencoding utf-8

" Enable sintax highlight
filetype plugin on
syntax on

" Keyboard speed
nnoremap ; :

" Theme
colorscheme dracula
set termguicolors

set encoding=utf-8

" Always shows the vim mode
source ~/.vim/statusline.vim

" Line options
set number
set cursorline

" Support mouse
set mouse=a

" Allow delete all with backspace
set backspace=indent,eol,start

" Show tabs and spaces
set listchars=tab:>-
set list

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Indent
set autoindent
set copyindent

set showbreak=···\ 

" Avoid write backup and swap files on working directory
let current_directory = getcwd()
let swap_directory = "~/.vim/swap" . current_directory
let backup_directory = "~/.vim/backup" . current_directory
silent exec "! mkdir -p " . swap_directory
silent exec "! mkdir -p " . backup_directory
exec "set directory=" . swap_directory
exec "set backupdir=" . backup_directory

" Explorer
let loaded_netrwPlugin = 1
""let g:loaded_netrwPlugin = 1

augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :source ~/.vim/project-explore.vim
augroup END

source ~/.vim/languages.vim
source ~/.vim/autocomplete.vim
source ~/.vim/templates.vim
