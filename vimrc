" Pathogen Settings
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on

" General
color molokai 
let g:molokai_original = 1
set nocompatible		" get rid of Vi compatibility mode.
set hidden
set guioptions=aAce
set gfn=Meslo\ LG\ M\ Regular\ for\ Powerline:h12
set t_Co=256
set number

" Indentation
set autoindent            " auto-indent
set tabstop=4             " tab spacing
set softtabstop=4         " unify
set shiftwidth=4          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
set smarttab              " use tabs at the start of a line, spaces elsewhere

" Invisibles
set listchars=tab:▸\ ,eol:¬

" Powerline Settings
source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2
let g:Powerline_symbols = 'fancy'
set guifont=Meslo\ LG\ M\ Regular\ for\ Powerline:h12

" NERDTree
autocmd vimenter * NERDTree
