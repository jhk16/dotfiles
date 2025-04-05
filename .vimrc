syntax on

" Open previous
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

" Spaces & Tabs
set tabstop=8		" number of visual spaces per TAB
set softtabstop=8	" number of spaces in tab when editing
" set expandtab		" tabs are spaces
set autoindent
set cindent
set smartindent
set smarttab
set shiftwidth=8
set ru

" UI Config
set number		" show line numbers
set showcmd 		" show command in bottom bar
"set mouse=a

" Set cursorline
set cursorline

set wildmenu		" visual autocomplete for command menu
"set wildmode:list:longest
set lazyredraw		" redraw only when we need to
set showmatch		" highlight matching [{()}]
set display+=lastline

" Searching
set incsearch       " search as charaters are enterd
set hlsearch        " highlight matches

" Folding
set foldenable      " enable folding
set foldlevelstart=10 " open most folds by default
set foldnestmax=10  " 10 nested fold max

set nocompatible              " be iMproved, required
" filetype off                  " required

" Set hangul
set encoding=utf-8
set fileencodings=utf-8,cp949

" ctags setting
set tag=./tags;/ " easy-tag

" Tagbar setting
nmap <F8> :TagbarToggle<CR>

" clone Vundle source
"$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
"
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'godlygeek/tabular'
Plugin 'junegunn/fzf'
Plugin 'xolox/vim-misc'
Plugin 'ronakg/quickr-cscope.vim'
Plugin 'majutsushi/tagbar'
Plugin 'rhysd/vim-grammarous'
Plugin 'scrooloose/nerdcommenter'
Plugin 'sainnhe/gruvbox-material'

call vundle#end()            " required

filetype plugin indent on    " required

"" Set colors
" colorschem elflord
" colorschem desert
" colorschem PaperColor

" Important!!
if (has("termguicolors"))
  set termguicolors
endif

" For dark version.
set background=dark

" For light version.
" set background=light

" Set contrast.
" This configuration option should be placed before `colorscheme gruvbox-material`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_foreground = 'original'

let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_disable_terminal_colors = 1

" For better performance
let g:gruvbox_material_better_performance = 1

let g:airline_theme = 'gruvbox_material'

colorscheme gruvbox-material

" Over 80line
" autocmd BufWinEnter * match Error /\%>80v.\+\|\s\+$\|^\s*\n\+\%$/
" set textwidth=80
set colorcolumn=81

set visualbell
set t_vb=

" autocmd BufNewFile readme.md 0r ~/skeletons/readme.md
autocmd BufNewFile *.sh 0r ~/.skeletons/bash.sh
autocmd BufNewFile *.c 0r ~/.skeletons/c.c
autocmd BufNewFile *.md 0r ~/.skeletons/readme.md
autocmd BufNewFile *.py 0r ~/.skeletons/python.py

"" NERDcommenter settings
let mapleader = ","

filetype plugin on

"" TLDR: "CTRL-K" will comment your line
" Create default mappings
let g:NERDCreateDefaultMappings = 0

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 0

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '//' } }
let g:NERDCustomDelimiters = { 'python': { 'left': '#' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 0

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

map <c-k> <plug>NERDCommenterToggle
