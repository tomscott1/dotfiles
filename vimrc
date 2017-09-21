" ~/.vimrc

filetype on
syntax on
colorscheme Tomorrow-Night

" Add a line width marker
set colorcolumn=90

" Include line numbering
set number

" Set leader key
let mapleader=" "

" Reload vim config without having to restart Editor
map <leader>s :source ~/.vimrc<CR>

" Keep more info in memory
set hidden
" set history=100

" Indenting logic
filetype indent on
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent

" Remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Highlight search words
" set hlsearch

" Cancel search with Escape
" nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

" Re-open previously opened file (ctrl + ^)
" nnoremap <Leader><Leader> :e#<CR>

" Show matching parenthesis
set showmatch
