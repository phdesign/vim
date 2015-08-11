" Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on   " filetype detection[ON] plugin[ON] indent[ON]

" General
color Tomorrow-Night 
set nocompatible            " get rid of Vi compatibility mode.
set guioptions=aAce
set gfn=Meslo\ LG\ M\ for\ Powerline:h12
set guifont=Meslo\ LG\ M\ for\ Powerline:h12
set t_Co=256                " enable 256-color mode.
set number                  " show line numbers
"set nohlsearch              " don't continue to highlight searched phrases.
set incsearch               " but do highlight as you type your search.
set ignorecase              " make searches case-insensitive.
set ruler                   " always show info along bottom.
set fullscreen              " start in fullscreen mode

" Indentation
set autoindent              " auto-indent
set tabstop=4               " tab spacing
set softtabstop=4           " unify
set shiftwidth=4            " indent/outdent by 4 columns
set shiftround              " always indent/outdent to the nearest tabstop
set expandtab               " use spaces instead of tabs
set smarttab                " use tabs at the start of a line, spaces elsewhere

" Invisibles
set listchars=tab:▸\ ,eol:¬
set list

" Powerline
"source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
"set laststatus=2
"let g:Powerline_symbols='fancy'

" Airline
set laststatus=2            " show status bar even with no split
let g:airline_powerline_fonts=1 " use powerline fonts

" Commands
command! HexHighlight :call HexHighlight()

" VIM Session
let g:session_autoload='yes'
let g:session_autosave='yes'
let g:session_autosave_periodic=1
let g:session_autosave_silent=1

" NERDTree
"let g:nerdtree_tabs_open_on_gui_startup=0   " disable nerdtree_tabs on startup as it conflicts with vim-session
let NERDTreeShowHidden=1    " show hidden files a folders in NERDTree
let NERDTreeShowBookmarks=1 " show bookmarks table in NERDTree
