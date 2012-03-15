set nocompatible

call pathogen#infect()
call pathogen#helptags()

scriptencoding utf-8
syntax enable

set autoindent
set autoread
set backspace=indent,eol,start
set bsdir=buffer
set expandtab
set foldenable
set hidden
set history=64
set incsearch
set ignorecase
if has('mouse')
  set mouse=a
endif
set nobackup
set noswapfile
set nowrap
set noerrorbells visualbell t_vb=
set scrolljump=5
set scrolloff=3
set shiftwidth=2
set smartcase
set smartindent
set spell
set sps=best,10
set softtabstop=2
set tabstop=2
set viewoptions=folds,options,cursor,unix,slash
set wildmenu
set wildmode=longest,list

if has("gui_running")
  set background=dark
  colorscheme solarized
  let g:solarized_termtrans=1
  let g:solarized_termcolors=256
  let g:solarized_contrast="high"
  let g:solarized_visibility="high"
else
  colorscheme zenburn
  let g:zenburn_high_Contrast=1
endif

set cmdheight=2
set cursorline
set listchars=tab:▸\ ,eol:¬
set number
set ruler
set showcmd
set showmatch
set list
set listchars=tab:,.,trail:.,extends:#,nbsp:.
set title

filetype plugin indent on

if &t_Co > 2 || has("gui_running")
  set hlsearch
endif

if has('statusline')
  set laststatus=2
  set statusline=%<%f\
  set statusline+=%w%h%m%r
  set statusline+=%{fugitive#statusline()}
  set statusline+=\ [%{&ff}/%Y]
  set statusline+=\ [%{getcwd()}]
  set statusline+=%=%-14.(%l,%c%V%)\ %p%%
endif

if has('gui_running')
  set guioptions-=T
  set guioptions-=L
  set guioptions-=r
  set columns=120
  set lines=40
  set guifont=Monaco:h15,Andale\ Mono\ Regular:h16,Menlo\ Regular:h15,Consolas\ Regular:h15,Courier\ New\ Regular:h18
  if has('gui_macvim')
    set transparency=5
  endif
else
  "set term=builtin_ansi
endif

if has("autocmd")
  autocmd BufEnter * cd %:p:h
endif

let NERDTreeShowHidden=1
let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"

nmap ,nt :NERDTreeToggle
