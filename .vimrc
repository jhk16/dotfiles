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
"set expandtab		" tabs are spaces
set autoindent
set cindent
set smartindent
set smarttab
set shiftwidth=8
set ru

" UI Config
set number			" show line numbers
set showcmd 		" show command in bottom bar
" set mouse=a

" Set cursorline
set wildmenu		" visual autocomplete for command menu
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
" $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
"
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'nanotech/jellybeans.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'junegunn/fzf'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'ronakg/quickr-cscope.vim'
Plugin 'majutsushi/tagbar'

call vundle#end()            " required

filetype plugin indent on    " required

colorschem elflord

" Over 80line
autocmd BufWinEnter * match Error /\%>80v.\+\|\s\+$\|^\s*\n\+\%$/
set textwidth=80
set colorcolumn=81

set visualbell
set t_vb=
