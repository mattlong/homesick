"" General
set nocompatible                " break vi compatibility
syntax enable                   " enable syntax highlighting
set encoding=utf-8              " use unicode
set showcmd                     " display incomplete commands
set hidden                      " allow unsaved files to be put in background
filetype plugin indent on       " load file type plugins + indentation
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]    "status line format
set laststatus=2                " show status line (0 - never, 1 - default, 2 - always)
set rnu                         " Show relative line numbers
set cursorline                  " highlight current line
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256                " number of colors to use
    colorscheme xoria256        " which colorscheme to use
endif


"" Key Mappings
nmap ; :    " incase you miss that shift key
"nmap j gj  " handle line wraps more sanely
"nmap k gk  " handle line wraps more sanely


"" Pathogen
call pathogen#infect()


"" CtrlP
let mapleader = ','
let g:ctrlp_map = '<leader>t'
let g:ctrlp_working_path_mode = 0
set wildignore+=*/tmp/*,*.so,*.swp,*.o,*.obj,.git,*.pyc


"" Whitespace
set tabstop=4 shiftwidth=4      " a tab is four spaces
set expandtab                   " use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode


"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter


"" Plugin Fixes
let g:omni_sql_no_default_maps = 1 " disable SQL syntax keyboard shortcuts
