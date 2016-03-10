" Init

" Setup pathogen
execute pathogen#infect()

set nocompatible
let mapleader=","

nmap <leader>8 :call Flake8()<CR>

" Changing Window Splits
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

imap <C-W> <C-O><C-W>

map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" Settings
syntax on
filetype on
filetype plugin indent on
set number
set numberwidth=1
set background=dark
set title
set wildmenu
set wildmode=full

set noerrorbells
set vb t_vb=

set wildignore+=*.o,*.obj,.git,*.pyc
set wildignore+=eggs/**
set wildignore+=*.egg-info/**

nnoremap <leader>. :lcd %:p:h<CR>

set completeopt=menuone,longest,preview
set pumheight=6

set cursorline
set ruler
set nostartofline
set virtualedit=block
set scrolloff=3
set backspace=2
set showmatch
set nowrap
set linebreak
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftround
set matchpairs+=<:>
set foldmethod=indent
set foldlevel=99

set noautowrite
set noautowriteall
set noautoread
set modeline
set modelines=5
set ffs=unix,dos,mac

set ls=2
set vb t_vb=
set confirm
set showcmd
set report=0
set shortmess+=a
set ruler
set laststatus=2

set listchars=tab:>-,trail:-,precedes:<,extends:>
set list

set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch

" Paste
map <leader>p "+p

" Unhighlight
nnoremap <leader><space> :nohlsearch<cr>

" Trim whitespace
nnoremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>
"
" HTML
autocmd FileType html,xhtml,xml,css setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4

" Python
"au FileType python set omnifunc=pythoncomplete#Complete
au FileType python setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
au BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\]%\\@=%m

" Trim whitespace on save
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
