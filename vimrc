" Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
filetype off
syntax on
filetype plugin indent on   " filetype detection[ON] plugin[ON] indent[ON]

" General
color Tomorrow-Night
set nocompatible            " get rid of Vi compatibility mode.
set guioptions=aAc
set t_Co=256              " enable 256-color mode.
set number                  " show line numbers
"set hlsearch                " highlight searched phrases.
set incsearch               " highlight as you type your search.
set ignorecase              " make searches case-insensitive.
set ruler                   " always show info along bottom.
set encoding=utf-8          " needed for windows compatibility
"set spell spelllang=en_au   " enable spell check
set autochdir               " change working directory to the active file
set hidden                  " allow switching buffers without saving

if has('win32')
    au GUIEnter * simalt ~x
    set gfn=Powerline\ Consolas:h9
    set guifont=Powerline\ Consolas:h9
    source $VIMRUNTIME/mswin.vim
    "behave mswin
else
    set fullscreen          " start in fullscreen mode
    set gfn=Meslo\ LG\ M\ for\ Powerline:h12
    set guifont=Meslo\ LG\ M\ for\ Powerline:h12
endif

" Indentation
"set autoindent              " auto-indent
set tabstop=4             " tab spacing
"set softtabstop=4         " unify
set shiftwidth=4          " indent/outdent by 4 columns
"set shiftround              " always indent/outdent to the nearest tabstop
set expandtab               " use spaces instead of tabs
"set smarttab                " use tabs at the start of a line, spaces elsewhere
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
let g:html_indent_inctags="html,body,head,tbody"

" Mapping
vmap ,t :s/\%V\<\(\w\)\(\w*\)\>/\u\1\L\2/ge<bar>noh<cr>  " title case a line or selection (better)
vmap ,s :'<,'>sort u
vmap ,b :g/^\s*$/d<cr>
nmap ,d :b#<bar>bd#<bar>b<CR>

" Invisibles
set listchars=tab:▸\ ,eol:¬
set list

" Airline
set laststatus=2           " show status bar even with no split
let g:airline_powerline_fonts=1                 " use powerline fonts
let g:airline#extensions#tabline#enabled=1      " enable the list of buffers
let g:airline#extensions#tabline#fnamemod=':t'  " just show the filename
"set guioptions-=e

function! AirlineInit()
  let g:airline_section_y=airline#section#create(['ffenc', ' ', '%{strftime("%I:%M%p")}'])
endfunction
autocmd VimEnter * call AirlineInit()

" Commands
command! HexHighlight :call HexHighlight()
command DeleteBlanks :g/^\s*$/d<cr>

" VIM Session
let g:session_autoload='yes'
let g:session_autosave='yes'
let g:session_autosave_periodic=1
let g:session_autosave_silent=1

" NERDTree
"let g:nerdtree_tabs_open_on_gui_startup=0      " disable nerdtree_tabs on startup as it conflicts with vim-session
let NERDTreeShowHidden=1    " show hidden files a folders in NERDTree
"let NERDTreeShowBookmarks=1 " show bookmarks table in NERDTree
nmap <leader>ne :NERDTreeToggle<cr>
let NERDTreeIgnore=['\.swp$', '\~$']

" Ctrl-P
let g:ctrlp_working_path_mode='ra'              " use the nearest .git directory as the cwd
let g:ctrlp_cmd='CtrlPMixed'                    " start ctrl-p in mixed mode 
let g:ctrlp_show_hidden=1                       " let ctrl-p search hidden files (e.g. .gitignore)
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|bower_components\|vendor'   " 

" Vim Shell
let g:shell_fullscreen_items='mT'               " options to hide in full screen mode, m: main menu, T: toolbar, e: tab line
"autocmd VimEnter * call xolox#shell#fullscreen()
