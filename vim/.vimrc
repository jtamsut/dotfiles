"" This is Jonathan Tamsut's .vimrc file
set shell=zsh
syntax enable

" General 
set backspace=2
set clipboard=unnamed

" Tab indenting
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set ai " Autoindent
set si "Smart indent

" Appearance
set showtabline=2
set laststatus=2
set number 
set title 
set cursorline
set laststatus=2

" Will make new window in horizontal split appear below by default
set splitbelow

" Searching
set hlsearch
set ignorecase 
set smartcase 
set incsearch

" Misc
set nobackup
set spelllang=en_us
set nowrap
set ttyfast
set autoread
set diffopt+=vertical
set mouse=a

" Make cursor switch style based on insert/normal mode
let &t_SI="\e[5 q"
let &t_EI="\e[1 q"

" Arrow keys are unacceptable 
map <Left> :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up> :echo "no!"<cr>
map <Down> :echo "no!"<cr>

" No swp files 
set noswapfile
