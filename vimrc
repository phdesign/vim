" Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on   " filetype detection[ON] plugin[ON] indent[ON]

" General
color Tomorrow-Night
set nocompatible            " get rid of Vi compatibility mode.
set guioptions=maAc
set t_Co=256                " enable 256-color mode.
set number                  " show line numbers
"set nohlsearch              " don't continue to highlight searched phrases.
set incsearch               " but do highlight as you type your search.
set ignorecase              " make searches case-insensitive.
set ruler                   " always show info along bottom.
set encoding=utf-8
if has('win32')
    au GUIEnter * simalt ~x
    set gfn=Powerline\ Consolas:h9
    set guifont=Powerline\ Consolas:h9
    source $VIMRUNTIME/mswin.vim
    behave mswin
else
    set fullscreen          " start in fullscreen mode
    set gfn=Meslo\ LG\ M\ for\ Powerline:h12
    set guifont=Meslo\ LG\ M\ for\ Powerline:h12
endif

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

" Airline
set laststatus=2            " show status bar even with no split
let g:airline_powerline_fonts=1                 " use powerline fonts
let g:airline#extensions#tabline#enabled=1      " enable the list of buffers
let g:airline#extensions#tabline#fnamemod=':t'  " just show the filename

function! AirlineInit()
  let g:airline_section_y=airline#section#create(['ffenc', ' ', '%{strftime("%I:%M%p")}'])
endfunction
autocmd VimEnter * call AirlineInit()

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

" Airline Tomato (Pomodoro)
let g:tomato#show_clock=1
let g:tomato#show_count_down=1

" Ctrl-P
let g:ctrlp_working_path_mode='ra'           " use the nearest .git directory as the cwd
let g:ctrlp_cmd='CtrlPMixed'                 " start ctrl-p in mixed mode 
