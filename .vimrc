" Syntax
if has("syntax")
    syntax on
endif

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
set cursorline

" Set cursorline
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
filetype off                  " required

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
" Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
" Plugin 'nanotech/jellybeans.vim'
Plugin 'godlygeek/tabular'
" Plugin 'plasticboy/vim-markdown'
Plugin 'junegunn/fzf'
" Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'ronakg/quickr-cscope.vim'
Plugin 'majutsushi/tagbar'
Plugin 'rhysd/vim-grammarous'
"Plugin 'dense-analysis/ale'
"Plugin 'fatih/vim-go'
"Plugin 'wakatime/vim-wakatime'

call vundle#end()            " required

filetype plugin indent on    " required

set background=dark
colorscheme PaperColor
" colorschem elflord

" Over 80line
" autocmd BufWinEnter * match Error /\%>80v.\+\|\s\+$\|^\s*\n\+\%$/
set textwidth=80
set colorcolumn=81

set visualbell
set t_vb=

" autocmd BufNewFile readme.md 0r ~/skeletons/readme.md
autocmd BufNewFile *.sh 0r ~/.skeletons/bash.sh

"Comment on/off
func! CmtOn_c()
	exe "'<,'>norm i//"
endfunc
func! CmtOn_sh()
	exe "'<,'>norm i#"
endfunc
func! CmtOff_c()
	exe "'<,'>norm 2x"
endfunc
func! CmtOff_sh()
	exe "'<,'>norm 1x"
endfunc

autocmd filetype c,cpp vmap <c-k> <esc>:call  CmtOn_c() <cr>
autocmd filetype c,cpp vmap <c-l> <esc>:call  CmtOff_c() <cr>
autocmd filetype c,cpp nmap <c-k> <esc>v:call CmtOn_c() <cr>
autocmd filetype c,cpp nmap <c-l> <esc>v:call CmtOff_c() <cr>

autocmd filetype python,sh vmap <c-k> <esc>:call CmtOn_sh() <cr>
autocmd filetype python,sh vmap <c-l> <esc>:call CmtOff_sh() <cr>
autocmd filetype python,sh nmap <c-k> <esc>v:call CmtOn_sh() <cr>
autocmd filetype python,sh nmap <c-l> <esc>v:call CmtOff_sh() <cr>
