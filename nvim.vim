set guifont=Source\ Code\ Pro\ 15
set number
set incsearch
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set confirm
set tabstop=2
set shiftwidth=2
set noswapfile
set nobackup
set backupcopy=yes
set showcmd
set showmode
set wildmenu
set wildmode=list:longest,full
set title
set expandtab
set list

set t_vb=
set cursorline
set colorcolumn=80
set showtabline=2
set wildignore+=*vendor/*,*tests/_log/*,*node_modules/*,*.zip,*out/*
set rtp+=~/.vim/bundle/Vundle.vim
set mouse=a
set mousemodel=popup

call plug#begin('~/.local/share/nvim/plugged')
Plug 'gmarik/Vundle.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'carlitux/deoplete-ternjs'
Plug 'editorconfig/editorconfig-vim'
Plug 'wakatime/vim-wakatime'
Plug 'rking/ag.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'chriskempson/base16-vim'
Plug 'mattn/emmet-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'FelikZ/ctrlp-py-matcher'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'bling/vim-airline'
Plug 'Lokaltog/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'neomake/neomake'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plug 'fatih/vim-go'
Plug 'gonzaloserrano/vim-markdown-todo'
Plug 'scrooloose/nerdcommenter'
Plug 'wlangstroth/vim-racket'
Plug 'powerman/vim-plugin-autosess'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-obsession'
" Plug 'steelsojka/deoplete-flow'
" Plug 'flowtype/vim-flow'
Plug 'mxw/vim-jsx'
Plug 'Valloric/MatchTagAlways'
Plug 'leafgarland/typescript-vim'
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-classpath'
Plug 'snoe/clj-refactor.nvim'
Plug 'bhurlow/vim-parinfer'
Plug 'neovim/node-host', { 'do': 'npm install -g neovim' }
call plug#end()

" Neomake config
let g:neomake_javascript_enabled_makers = ['standard']
let g:neomake_open_list = 2
autocmd! BufWritePost * Neomake

filetype plugin indent on

" NERDTree config
nmap <silent> <C-D> :NERDTreeToggle<CR>
nmap <C-W> :NERDTreeToggle<CR>
nmap <C-d> :NERDTreeFind<CR>
let NERDTreeShowBookmarks=1

" cpo = run `(reset)` in clj repl

" Natural pane movement
nmap <c-k> :wincmd k<CR>
nmap <c-j> :wincmd j<CR>
nmap <c-h> :wincmd h<CR>
nmap <c-l> :wincmd l<CR>

" Firefox like tab-switching
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i

"  " Rebind vim-easymotion to space
map <SPACE> <Plug>(easymotion-s2)

" Fix copy paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

" Emmet configuration
let g:user_emmet_leader_key='<C-E>'
let g:user_emmet_mode='a'

" Airline configuration
set laststatus=2

" YCM configuration
let g:ycm_path_to_python_interpreter='/usr/local/bin/python3'

" Forced tab/spaces
autocmd FileType md set shiftwidth=4|set expandtab
autocmd FileType make setlocal noexpandtab
autocmd FileType js set shiftwidth=2|set expandtab
autocmd FileType javascript set shiftwidth=2|set expandtab

" Proper yaml formatting
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab

" Use deoplete.
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '1'

set spelllang=en_us

" Save, always
command WQ wq
command Wq wq
command W w
command Q q

let g:go_fmt_command = "goimports"

let g:NERDDefaultAlign = 'left'
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

" vim-jsx not requiring .jsx extension
let g:jsx_ext_required = 0

" Let terraform format on save
let g:terraform_fmt_on_save = 1

" let g:neomake_javascript_enabled_makers = ['flow', 'standard']
" let g:neomake_jsx_enabled_makers = ['flow', 'standard']
let g:neomake_javascript_enabled_makers = ['flow']
let g:neomake_jsx_enabled_makers = ['flow']

