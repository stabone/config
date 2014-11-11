

http://vimawesome.com/

"" General
set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)

set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally

set autoindent	" Auto-indent new lines
set shiftwidth=4	" Number of auto-indent spaces
set tabstop=4
set expandtab   " uses spaces instead of tabs
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab

set encoding=utf-8

"# Advanced
set ruler	" Show row and column ruler information

set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

" shows status line in all windows
set laststatus=2

"" shows spaces
" set listchars=tab:»·,trail:·,eol:¶
set listchars=trail:·,eol:¶
set list


"""""""""""""""""""""""""""
" COLOR
"""""""""""""""""""""""""""
:set t_Co=256 " 256 colors
color wombat256mod
" :set background=dark
" :color grb256


" pressing < or > will let you indent/unident selected lines
vnoremap < <gv
vnoremap > >gv


""" automativaly reload vimrc file
autocmd! BufWritePost vimrc nested :source ~/.vimrc


"" FUNCTION
function! GetFileName()
    echo @%
endfunction

function! GetFullPath()
    echo expand('%:p')
endfunction

"" SHOWS trailing spaces
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" pathogen >> https://github.com/tpope/vim-pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on


" http://vimawesome.com/?q=autocomple
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" " Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3


"" GIT gutter options
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0


