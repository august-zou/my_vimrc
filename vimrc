"pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

set nocompatible

"设置行号
set nu
"设置Tab
set ts=2
set softtabstop=2

set ruler
set noswapfile
set nobackup
set autoindent

"nerdtree
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>

"imap esc
imap jj <esc>
"imap C-w
imap hh <C-w>

"ctags
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>  

