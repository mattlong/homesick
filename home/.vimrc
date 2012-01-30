:nmap ; :
:set rnu " Show relative line numbers

"" command-t
let mapleader = ','
let g:CommandTMaxFiles=20000
let g:CommandTMaxHeight = 15
set wildignore+=*.o,*.obj,.git,*.pyc

set nocompatible
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
set hidden                      " allow unsaved files to be put in background
filetype plugin indent on       " load file type plugins + indentation

set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]    "status line format
set laststatus=2                " always show status line (1 - default, 0 - never)

"" Whitespace
"set nowrap                      " don't wrap lines
set tabstop=4 shiftwidth=4      " a tab is two spaces
set expandtab                   " use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" Colorscheme
"if &term =~ "xterm-color"
set t_Co=256
colorscheme xoria256
"endif
