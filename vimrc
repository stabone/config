


" http://vimawesome.com/ all nice plugins
"
"" General

"set showmatch   " Highlight matching brace
set autoindent      " Auto-indent new lines
set cursorline      " Shows current line
set encoding=utf-8  " file encoding
set expandtab       " uses spaces instead of tabs
set hlsearch        " Highlight all search results
set ignorecase      " Always case-insensitive
set incsearch       " Searches for strings incrementally
set linebreak       " Break lines at word (requires Wrap lines)
set number          " Show line numbers
set ruler           " shows cursor line and colon
set shiftwidth=4    " Number of auto-indent spaces
set showbreak=+++   " Wrap-broken line prefix
set smartcase       " Enable smart-case search
set smartindent     " Enable smart-indent
set smarttab        " Enable smart-tabs
set softtabstop=4   " Number of spaces per Tab
set tabstop=4
set textwidth=100   " Line wrap (number of cols)
set visualbell      " Use visual bell (no beeping)

"# Advanced
set ruler                       " Show row and column ruler information
set undolevels=1000             " Number of undo levels
set backspace=indent,eol,start  " Backspace behaviour

" shows status line in all windows
set laststatus=2

"" shows spaces
set listchars=tab:»\·,trail:·,eol:¶
set list


"""""""""""""""""""""""""""
" COLOR
"""""""""""""""""""""""""""
set t_Co=256 " 256 colors
syntax enable
colorscheme molokai


" pressing < or > will let you indent/unident selected lines
vnoremap < <gv
vnoremap > >gv

""" automaticaly reload vimrc file
autocmd! BufWritePost vimrc nested :source ~/.vimrc

"" FUNCTION
function! GetFileName()
    echo @%
endfunction

function! GetFullPath()
    echo expand('%:p')
endfunction


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
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '*'


" CTRLP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc     " MacOSX/Linux

let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'some_bad_symbolic_links',
    \ }

" custom file listing command
let g:ctrlp_user_command = 'find %s -type f' " MacOSX/Linux


" VIM powerline
" don't use sudo pip install for required user
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup


"" Tagbar plugin
"nmap <F8>:TagBarToggle<CR>

"" RAINBOW parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

