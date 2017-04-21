" Load plugins with pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" custom config options
set t_Co=256 				  " Set 256 color support
set t_ut=
set ruler                     " show the line number on the bar
set laststatus=2
set cmdheight=2               " command line two lines high
set scrolloff=5               " keep at least 5 lines above/below
set sidescrolloff=5           " keep at least 5 lines left/right
set more                      " use more prompt
set autoread                  " watch for file changes
set number                    " line numbers
set hidden 					  " enable hidden buffers
set noautowrite               " don't automagically write on :next
set showmode
set showcmd
set nocompatible              " vim, not vi
" identation options
set shell=bash
set fileformats=unix
set ff=unix
syntax on
filetype on                   " Enable filetype detection
filetype indent on            " Enable filetype-specific indenting
filetype plugin on            " Enable filetype-specific plugins
set backspace=indent,eol,start
set autoindent smartindent    " auto/smart indent
set smarttab                  " tab and backspace are smart
set tabstop=4                 " 4 spaces
set shiftwidth=4
set list
set listchars=tab:\|\ 
" history
set history=200
set undolevels=1000           " 1000 undos
set updatecount=100           " switch every 100 chars
set complete=.,w,b,u,U,t,i,d  " do lots of scanning on tab completion
set ttyfast                   " we have a fast terminal
set noerrorbells              " No error bells please
" custom wildmenu
set wildmenu                  " menu has tab completion
set wildmode=longest:full
"  searching options
set incsearch                 " incremental search
set ignorecase                " search ignoring case
set hlsearch                  " highlight the search
set showmatch                 " show matching bracket
set diffopt=filler,iwhite     " ignore all whitespace and sync
"  backup
set backup
set backupdir=~/.vim_backup
set viminfo=%100,'100,/100,h,\"500,:100,n~/.viminfo
" spelling
if v:version >= 700
  " Enable spell check for text files
  autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en
endif
" color scheme options
"set background=dark
"let g:solarized_termtrans=1
"let g:solarized_termcolors=256
"let g:solarized_contrast="high"
"let g:solarized_visibility="high"
let g:airline_theme='myterm'
colorscheme dzo

" Custom mappings
let maplocalleader=','        " all my macros start with ,

" taglist and ctags options
let TList_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 40
map <LocalLeader>tl :Tlist<cr>
map <LocalLeader>tt :TlistToggle<cr>
map <LocalLeader>ct :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<cr>
" tagbar options
let g:tagbar_usearrows = 1
map <LocalLeader>tb :TagbarToggle<cr>
