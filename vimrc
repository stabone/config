
call plug#begin('~/.vim/plugged')

 " Make sure you use single quotes
  Plug 'junegunn/seoul256.vim'
  Plug 'junegunn/vim-easy-align'
  Plug 'tpope/vim-fugitive'
  Plug 'scrooloose/nerdtree'
  Plug 'majutsushi/tagbar'
  Plug 'elixir-lang/vim-elixir'
  "" compilation required
  Plug 'Valloric/YouCompleteMe'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'kien/ctrlp.vim'
  "" Plug 'kien/rainbow_parentheses.vim'
  Plug 'junegunn/rainbow_parentheses.vim'
  "" Plug 'octol/vim-cpp-enhanced-highlight'
  Plug 'altercation/vim-colors-solarized'
  Plug 'morhetz/gruvbox'
  Plug 'pangloss/vim-javascript'
  Plug 'goatslacker/mango.vim'
  Plug 'vim-ruby/vim-ruby'
  Plug 'tpope/vim-rails'
  Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

call plug#end()

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


""" GIT gutter plugin
"" https://github.com/airblade/vim-gitgutter
let g:gitgutter_max_signs = 500  " default value

let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
" let g:gitgutter_highlight_lines = 1

" Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59


" "" General
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
 set shiftwidth=2    " Number of auto-indent spaces
 set showbreak=~~    " Wrap-broken line prefix
 set smartcase       " Enable smart-case search
 set smartindent     " Enable smart-indent
 set smarttab        " Enable smart-tabs
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

syntax enable
" set background=dark
set t_Co=256
colo seoul256
"" color wombat256mod
"" colorscheme solarized
"" colorscheme gruvbox


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


"" RAINBOW parentheses
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces

"" RainbowParentheses
let g:rainbow#max_level=16
let g:rainbow#pairs=[['(', ')'], ['[', ']'], ['{', '}']]


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


autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>
