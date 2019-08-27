"" This is Jonathan Tamsut's .vimrc file
set shell=bash 
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

" Make cursor switch style based on insert/normal mode
let &t_SI="\e[5 q"
let &t_EI="\e[1 q"

" Arrow keys are unacceptable 
map <Left> :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up> :echo "no!"<cr>
map <Down> :echo "no!"<cr>

" Wrap on 80 characters in Markdown
set textwidth=120

" Nerdtree settings 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeNodeDelimiter = "\u00a0"
let g:NERDTreeWinSize=40
let NERDTreeShowHidden=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" No swp files 
set noswapfile

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>
