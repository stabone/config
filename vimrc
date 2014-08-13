


"""""""""""""""""""""""""""""""""""""""""""
" Files, backup and undo
""""""""""""""""""""""""""""""""""""""""""

"" My vim configuration
set number
set mouse=a

"" tab configuration
set shiftwidth=4
set tabstop=4
set expandtab " spaces instead of tabs

set ai " Auto indent
set si " Smart indent
set wrap " wrap lines


"""""""""""""""""""""""""""""""""""""""""""
" Files, backup and undo
""""""""""""""""""""""""""""""""""""""""""

set nobackup
set nowb
set noswapfile


""""""""""""""""""""""""""""""""""""""""""
" VIM user interface
""""""""""""""""""""""""""""""""""""""""""

" Turn on the wild menu
set wildmenu

" Ignore comiled files
set wildignore=*.o,*.so,*~,*.pyc

" Show cursor position all the time
set ruler


"______________________________________
" Options for search

" Ignore case when searching
set ignorecase

" Smart case
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros
set lazyredraw

" Show matching brackets when text indicator is over brackets
set showmatch



""" Powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup


""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlignting
syntax enable

set encoding=utf8

execute pathogen#infect()
syntax on
filetype plugin indent on

set laststatus=2
set noshowmode

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/


"" SOME EYE CANDY
"   https://github.com/vim-scripts/colorschemer
set t_Co=256
color wombat256mod
" https://github.com/morhetz/gruvbox
" colorscheme gruvbox


""" GIT gutter plugin
"" https://github.com/airblade/vim-gitgutter
"" treshold for diff
let g:gitgutter_max_signs = 500  " default value

let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
let g:gitgutter_highlight_lines = 1


