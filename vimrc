" ~/.vimrc

" Load pathogen (plugins will load from ~/.vim/bundle/
execute pathogen#infect()

" plugins
" nerdcommenter https://github.com/scrooloose/nerdcommenter.git
" nerdTree https://github.com/scrooloose/nerdtree.git
" lightline https://github.com/itchyny/lightline.vim.git
" vim-fugitve https://github.com/tpope/vim-fugitive.git
" auto-pairs https://github.com/jiangmiao/auto-pairs.git

" Load NERDTree on open
autocmd vimenter * NERDTree .
autocmd VimEnter * wincmd p

" Ignore useless files
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp', '\.py']

" Close NERDTree if it is the last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Don't user NERDTree as a project drawer
let NERDTreeHijackNetrw=1

" Jump to file in NerdTree using leader+j
nmap <leader>j :NERDTreeFind<CR>

" Open NERDTree in current dir
set autochdir
let NERDTreeChDirMode=2
nnoremap <leader>n :NERDTree .<CR>

" Show hidden files in NERDTree
let NERDTreeShowHidden=1

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
