set ts=4
set sw=4
set expandtab
set smarttab

let mapleader=","
map <leader>w :write <Enter>
map <leader>q :quit <Enter>
map <leader>n :NERDTreeToggle <Enter>

set guioptions-=L
set guioptions-=m
set guioptions-=T
set guioptions-=r

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
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'wavded/vim-stylus'

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


autocmd FileType python setlocal ts=4 sw=4 et
autocmd FileType html setlocal ts=2 sw=2 et
