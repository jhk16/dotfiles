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

" tags를 비동기로 불러와준다. (필수) tag사이즈가 커지게 되면 vim이 블록되는 
" 시간이 길어져서 답답하다
let g:easytags_async=1

" highlight를 켜면 좋지만 이것도 속도가 느려진다.
let g:easytags_auto_highlight = 0

" struct의 멤버변수들도 추적이 된다.
let g:easytags_include_members = 1

" 현재 프로젝트에서 쓰는 tags파일을 우선 로드하고 없을 경우 global tags를
" 로드한다.
let g:easytags_dynamic_files = 1

" linuxsty config
" let g:linuxsty_patterns = [ "/home/kjh/git/kernel/*" ]

" cscope setting
" function! LoadCscope()
"     let db = findfile("cscope.out", ".;")
"     if (!empty(db))
"         let path = strpart(db, 0, match(db, "/cscope.out$"))
"         set nocscopeverbose " suppress 'duplicate connection' error
"         exe "cs add " . db . " " . path
"         set cscopeverbose
"         " else add the database pointed to by
"         " environment variable
"         "   elseif $CSCOPE_DB != ""
"         cs add $CSCOPE_DB
"     endif
" endfunction
" au BufEnter /* call LoadCscope()


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
autocmd BufWinEnter * match Error /\%>80v.\+\|\s\+$\|^\s*\n\+\%$/
