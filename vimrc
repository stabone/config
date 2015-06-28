
call plug#begin('~/.vim/plugged')

  " Make sure you use single quotes
  Plug 'junegunn/vim-easy-align'
  Plug 'tpope/vim-fugitive'
  Plug 'scrooloose/nerdtree'
  Plug 'jistr/vim-nerdtree-tabs'
  Plug 'majutsushi/tagbar'
  Plug 'elixir-lang/vim-elixir'
  Plug 'Shougo/neocomplete.vim'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'kien/ctrlp.vim'
  Plug 'kien/rainbow_parentheses.vim'
  Plug 'octol/vim-cpp-enhanced-highlight'
  Plug 'morhetz/gruvbox'
  Plug 'pangloss/vim-javascript'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-fugitive'
  Plug 'bling/vim-airline'
  Plug 'vim-ruby/vim-ruby'

call plug#end()


"" General
set nocompatible    " No need for vi compatibility
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
set showbreak=~~    " Wrap-broken line prefix
set smartcase       " Enable smart-case search
set smartindent     " Enable smart-indent
set smarttab        " Enable smart-tabs
set shiftwidth=2    " Number of auto-indent spaces
set softtabstop=2   " Number of spaces per Tab
set tabstop=2
set textwidth=100   " Line wrap (number of cols)
set visualbell      " Use visual bell (no beeping)
set mouse=a

""# Advanced
set ruler                       " Show row and column ruler information
set undolevels=1000             " Number of undo levels
set backspace=indent,eol,start  " Backspace behaviour
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc     " MacOSX/Linux

" shows status line in all windows
set laststatus=2


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
set t_Co=256
" color mango
"" colorscheme solarized
colorscheme gruvbox


" pressing < or > will let you indent/unident selected lines
vnoremap < <gv
vnoremap > >gv


"" GIT gutter options
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '*'


"" smarter tab line
let g:airline#extensions#tabline#enabled = 1


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

"" Enhanced Highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1


let g:neocomplete#enable_at_startup = 1


"" RAINBOW parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


"" vim-javascript
let g:javascript_conceal_function   = 'ƒ'
let g:javascript_conceal_null       = 'ø'
let g:javascript_conceal_this       = '@'
let g:javascript_conceal_return     = '⇚'
let g:javascript_conceal_undefined  = '¿'
let g:javascript_conceal_NaN        = 'ℕ'
let g:javascript_conceal_prototype  = '¶'
let g:javascript_conceal_static     = '•'
let g:javascript_conceal_super      = 'Ω'


let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

" My key maps
let mapleader=","

au FocusLost * :set number " absolut line numbering if Vim loses focus
au FocusGained * :set relativenumber "

autocmd InsertEnter * :set number " ablsolute numbering only for INSERT mode
autocmd InsertLeave * :set relativenumber " relative numbers for another modes


