
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'elixir-lang/vim-elixir'
Plug 'Valloric/YouCompleteMe'
Plug 'bronson/vim-trailing-whitespace'
Plug 'kien/ctrlp.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'bling/vim-airline'

call plug#end()


"" General
set autoindent      " Auto-indent new lines
set cursorline      " Shows current line
set encoding=utf-8  " file encoding
set expandtab       " uses spaces instead of tabs
set hlsearch        " Highlight all search results
set ignorecase      " Always case-insensitive
set incsearch       " Searches for strings incrementally
set linebreak       " Break lines at word (requires Wrap lines)
set lazyredraw      " Don't redraw while executing macros (for performance)
set number          " Show line numbers
set ruler           " shows cursor line and colon
set shiftwidth=2    " Number of auto-indent spaces
set showbreak=~~    " Wrap-broken line prefix
set smartcase       " Enable smart-case search
set smartindent     " Enable smart-indent
set smarttab        " Enable smart-tabs
set so=7            " 7 lines to the cursor
set softtabstop=2   " Number of spaces per Tab
set tabstop=2
set textwidth=100   " Line wrap (number of cols)
set visualbell      " Use visual bell (no beeping)


""# Turn off backup
set nobackup
set nowb
set noswapfile


""# Advanced
set ruler                       " Show row and column ruler information
set undolevels=1000             " Number of undo levels
set backspace=indent,eol,start  " Backspace behaviour
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc     " MacOSX/Linux

" shows status line in all windows
set laststatus=2

" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

"" show special char
set listchars=tab:»\·,trail:·,eol:¶
set list

"" if &listchars ==# 'eol:$'
""    set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
"" endif
"" if has('syntax') && !exists('g:syntax_on')
    "" syntax enable
""endif

syntax enable
set background=dark
"" colorscheme solarized
"" color seoul256
colorscheme gruvbox

" pressing < or > will let you indent/unident selected lines
vnoremap < <gv
vnoremap > >gv

if has('mouse')
  set mouse=a
end

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
let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/]\.(git|hg|svn)$',
        \ 'file': '\v\.(exe|so|dll)$',
        \ 'link': 'some_bad_symbolic_links',
    \ }

" custom file listing command
let g:ctrlp_user_command = 'find %s -type f' " MacOSX/Linux

let g:indentLine_char = '┆'


"" Enhanced Highlight
" let g:cpp_class_scope_highlight = 1
" let g:cpp_experimental_template_highlight = 1

let g:airline#extensions#tabline#enabled = 1

"" Ctrl + n toogle NERDTree
map <C-n> :NERDTreeToggle<CR>

"" RAINBOW parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


""
"" func! DeleteTrailingWS()
""   :FixWhitespace
"" endfunc
"" autocmd BufWrite *.py :call DeleteTrailingWS()

