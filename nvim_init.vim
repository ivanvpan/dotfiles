syntax on
set sw=2
set expandtab
set autoindent
set smarttab
set noshowmode
set number
set mouse=a

let mapleader=","
map <leader>w :write <Enter>
map <leader>q :quit <Enter>
map <leader>n :NERDTreeToggle <Enter>
map <leader>c :copen <Enter>
map <leader>l :lclose <Enter>
map <leader>g :!git
noremap <leader>h :set hlsearch! hlsearch?<CR>

map <leader>f :GFile <Enter>

set guioptions-=L
set guioptions-=m
set guioptions-=T
set guioptions-=r

" plugin config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:neomake_javascript_enabled_makers = ['eslint']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ["eslint"]
let g:syntastic_loc_list_height = 5

let g:jsx_ext_required = 1
"let g:SuperTabDefaultCompletionType = "context"


"Remove whitespace
autocmd BufWritePre * :%s/\s\+$//e

"Run Neomake on save
autocmd! BufWritePost * Neomake

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'nathanaelkane/vim-indent-guides'
"Plug 'scrooloose/syntastic'
Plug 'neomake/neomake'
Plug 'ervandew/supertab'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'digitaltoad/vim-pug'
Plug 'airblade/vim-gitgutter'
Plug 'leafgarland/typescript-vim'

call plug#end()

au BufRead,BufNewFile *.json set filetype=json
au BufRead,BufNewFile *.es6 set filetype=javascript
au BufRead,BufNewFile .eslint set filetype=json

autocmd FileType go setlocal ts=4 sw=4 noet
autocmd FileType python setlocal ts=4 sw=4 et
autocmd FileType html setlocal ts=2 sw=2 et
autocmd FileType xml setlocal ts=2 sw=2 et
autocmd FileType htmldjango setlocal ts=2 sw=2 et
autocmd FileType stylus setlocal ts=4 sw=4 noet
autocmd FileType javascript setlocal ts=2 sw=2 et
autocmd FileType json setlocal ts=2 sw=2 et
autocmd FileType coffee setlocal ts=2 sw=2 et
autocmd FileType less setlocal ts=2 sw=2 et
autocmd FileType pug setlocal ts=2 sw=2 et
autocmd FileType handlebars.html setlocal ts=2 sw=2 et

colorscheme jellybeans
