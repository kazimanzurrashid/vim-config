set nocompatible
source $VIMRUNTIME/vimrc_example.vim

syntax on
colorscheme zenburn

set bsdir=buffer
set acd
set nu
set hls
set spell
set spl=en
set sps=best
set ls=2
set hid
set spr
set title
set lsp=2
set nocf
set ru
set ts=4
set sw=4
set sts=4
set noexpandtab
set sta
set ai
set si
set fen
set nobk
set noswf
set nowrap
set wim=list:longest

set showcmd
set cmdheight=2
set encoding=utf-8
call pathogen#runtime_append_all_bundles()

set go-=T
filetype plugin on
filetype indent on
autocmd BufEnter * cd %:p:h

if has("autocmd")
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
endif

nmap ,ev :tabedit $MYVIMRC<cr>
nmap ,nt :NERDTreeToggle

let NERDTreeShowHidden=1
let g:event_handler_attributes_complete=0
let g:rdfa_attributes_complete=0
