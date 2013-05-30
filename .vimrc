execute pathogen#infect()

filetype plugin indent on
syntax on

" Set syntax highlighting
syntax enable

set nocompatible    " use vim defaults
set number          " show line numbers
set numberwidth=4   " line numbering takes up to 4 spaces
set ruler           " show the cursor position all the time

" Set encoding
set encoding=utf-8

" Whitespace stuff
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
"set list            " show list chars

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Completion
set wildmenu
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*,*.bak,*.exe,*.pyc,*.DS_Store,*.db

autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
