call plug#begin('~/.local/share/nvim/plugged')
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'zchee/deoplete-jedi'
    Plug 'cloudhead/neovim-fuzzy'
    Plug 'w0rp/ale'
    Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
    Plug 'qpkorr/vim-bufkill'
    Plug 'fatih/molokai'
call plug#end()

source ~/.paths.vim
let g:deoplete#enable_at_startup = 1

filetype plugin indent on

syntax on
syntax enable

set background=dark
colorscheme molokai

" True Color Support if it's avaiable in terminal
if has("termguicolors")
    set termguicolors
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if has("gui_running")
  set guicursor=n-v-c-sm:block,i-ci-ve:block,r-cr-o:blocks
endif

set number
set hidden
set mouse=a
set noshowmode
set noshowmatch
set nolazyredraw
set scrolloff=0
" Turn off backup
set nobackup
set noswapfile
set nowritebackup
" Search configuration
set ignorecase                    " ignore case when searching
set smartcase                     " turn on smartcase
" Tab and Indent configuration
set expandtab
set tabstop=4
set shiftwidth=4
set nowrap
set cc=79,99

nnoremap <M-p> :FuzzyOpen<CR>

nnoremap <M-s> <C-w><C-s>     " horizonal split
nnoremap <M-v> <C-w><C-v>     " vertical split
nnoremap <M-Left> <C-w><C-h>  " nav splits
nnoremap <M-Right> <C-w><C-l>
nnoremap <M-Up> <C-w><C-k>
nnoremap <M-Down> <C-w><C-j>
nnoremap <M-]> <C-w><C-w>     " cycle splits
nnoremap <M-d> :BD<CR>        " delete buffer

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
let g:deoplete#auto_complete_delay = 100
set completeopt-=preview


" ALE
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 0
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters_explicit = 1
let g:ale_linters = {'python': ['flake8']}
let g:ale_fixers = {'python': ['black']}
let g:ale_fix_on_save = 1
let g:ale_set_highlights = 0
let g:ale_lint_delay = 1000
