if (has("win32") || has("win64") || has("win32unix"))
    let g:isWin = 1
else
    let g:isWin = 0 
endif

colorscheme solarized
set nocompatible
set shortmess=atI
set go=
set vb t_vb=
set nu
set autoindent
set smartindent
set shiftwidth=4
set expandtab
set smarttab
set backspace=indent,eol,start
set ruler
set cursorline
set cursorcolumn
set laststatus=2
set scrolloff=6
let g:solarized_termcolors=256
set t_Co=256
set background=dark
set guifont=Monaco:h16

set showmatch
set incsearch
set nohlsearch

set nolinebreak
set textwidth=0
set wrap
set nolist

sy on
filetype on
filetype plugin indent on
filetype plugin on
filetype indent on
autocmd FileType python setlocal et sta sw=4 sts=4

set completeopt=menu,preview,longest
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
let g:acp_behaviorKeywordLength = 2
let g:acp_behaviorFileLength = 2
let g:acp_behaviorPythonOmniLength = 2


inoremap [ []<esc>i
inoremap ( ()<esc>i
inoremap { {}<esc>i
inoremap ' ''<esc>i
inoremap " ""<esc>i
inoremap , , 

nmap <space> :
nmap <C-h> <C-w>h<C-w>_
nmap <C-j> <C-w>j<C-w>_
nmap <C-k> <C-w>k<C-w>_
nmap <C-l> <C-w>l<C-w>_

nnoremap j gj
nnoremap k gk

if (g:isWin)
    map <F6> <esc>:w<CR>:!python %<CR>
    map <C-e> <esc>:NERDTree<CR>
    map <C-CR> <esc>$a<CR>
    imap <C-CR> <esc>$a<CR>
else
    map <D-e> <esc>:NERDTree<CR>
    map <D-CR> <esc>$a<CR>
    imap <D-CR> <esc>$a<CR>
    autocmd FileType python nmap <D-r> <esc>:w<CR>:!python %<CR>
    autocmd FileType c nmap <D-r> <esc>:w<CR>:!gcc % -o %:r && ./%:r<CR>
    autocmd FileType cpp nmap <D-r> <esc>:w<CR>:!g++ % -o %:r && ./%:r<CR>
    autocmd FileType python map <D-S-CR> <esc>$a:<CR>
    autocmd FileType python imap <D-S-CR> <esc>$a:<CR>
    autocmd FileType c map <D-S-CR> <esc>$a;<CR>
    autocmd FileType c imap <D-S-CR> <esc>$a;<CR>
    autocmd FileType cpp map <D-S-CR> <esc>$a;<CR>
    autocmd FileType cpp imap <D-S-CR> <esc>$a;<CR>
endif

if (g:isWin)
    let &termencoding=&encoding
    set fileencodings=utf8,cp936,ucs-bom,latin1
else
    set encoding=utf8
    set fileencodings=utf8,gb2312,gb18030,ucs-bom,latin1
endif

if (g:isWin)
    source $VIM\vimfiles\after\plugin\snipMate.vim
endif
