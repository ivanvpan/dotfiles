syntax on
set sw=4
set expandtab
set autoindent
set smarttab
set noshowmode
set number

let mapleader=","
map <leader>w :write <Enter>
map <leader>q :quit <Enter>
map <leader>n :NERDTreeToggle <Enter>
map <leader>c :copen <Enter>
map <leader>l :lclose <Enter>
noremap <leader>h :set hlsearch! hlsearch?<CR>

set guioptions-=L
set guioptions-=m
set guioptions-=T
set guioptions-=r

" plugin config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ["eslint"]

let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ctrlp_cmd = 'CtrlPMRUFiles'
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_custom_ignore = {
\   'dir': '(bower_components|node_modules)',
\ }
let g:jsx_ext_required = 0


"Remove whitespace
autocmd BufWritePre * :%s/\s\+$//e

"NeoBundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=/home/ivp/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/ivp/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
"NeoBundle 'Shougo/neosnippet.vim'
"NeoBundle 'Shougo/neosnippet-snippets'
"NeoBundle 'tpope/vim-fugitive'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'wavded/vim-stylus'
NeoBundle 'nono/vim-handlebars'
NeoBundle 'bling/vim-airline'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'marijnh/tern_for_vim'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'chase/vim-ansible-yaml'
NeoBundle 'fatih/vim-go'
NeoBundle 'wting/rust.vim'
NeoBundle 'leafgarland/typescript-vim'

" You can specify revision/branch/tag.
"NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

au BufRead,BufNewFile *.json set filetype=json

autocmd FileType go setlocal ts=4 sw=4 noet
autocmd FileType python setlocal ts=4 sw=4 et
autocmd FileType html setlocal ts=2 sw=2 et
autocmd FileType xml setlocal ts=2 sw=2 et
autocmd FileType htmldjango setlocal ts=2 sw=2 et
autocmd FileType stylus setlocal ts=4 sw=4 noet
autocmd FileType javascript.jsx setlocal ts=4 sw=4 noet
autocmd FileType handlebars.html setlocal ts=2 sw=2 et


colorscheme jellybeans

