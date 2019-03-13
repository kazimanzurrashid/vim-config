set nocompatible

call plug#begin('~/.vim/plugged')
  Plug 'dracula/vim'
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/gem-ctags'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-cucumber'
  Plug 'tpope/vim-haml'
  Plug 'tpope/vim-markdown'
  Plug 'vim-scripts/taglist.vim'
  Plug 'juvenn/mustache.vim'
  Plug 'kchmck/vim-coffee-script'
  Plug 'derekwyatt/vim-scala'
  Plug 'vim-ruby/vim-ruby'
  Plug 'Lokaltog/vim-easymotion'
  Plug 'wavded/vim-stylus'
  Plug 'groenewege/vim-less'
  Plug 'ervandew/supertab'
  Plug 'digitaltoad/vim-jade'
  Plug 'digitaltoad/vim-pug'
  Plug 'slim-template/vim-slim'
  Plug 'elixir-lang/vim-elixir'
  Plug 'mattn/emmet-vim'
  Plug 'nono/vim-handlebars'
  Plug 'pangloss/vim-javascript'
  Plug 'mattn/emmet-vim'
  Plug 'othree/html5.vim'
  Plug 'othree/yajs.vim'
  Plug 'othree/es.next.syntax.vim'
  Plug 'leafgarland/typescript-vim'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'kien/ctrlp.vim'
  Plug 'fatih/vim-go'
  Plug 'mxw/vim-jsx'
  Plug 'moll/vim-node'
  Plug 'ekalinin/dockerfile.vim'
  Plug 'burnettk/vim-angular'
  Plug 'chrisbra/csv.vim'
  Plug 'wting/rust.vim'
  Plug 'cespare/vim-toml'
  Plug 'cespare/vim-toml'
  Plug 'evanmiller/nginx-vim-syntax'
  Plug 'stephpy/vim-yaml'
  Plug 'oranget/vim-csharp'
  Plug 'rhysd/vim-crystal'
  Plug 'uarun/vim-protobuf'
  Plug 'bling/vim-airline'
  Plug 'airblade/vim-gitgutter'
call plug#end()

let &t_Co=256

scriptencoding utf-8
syntax enable

set autoindent
set autoread
set backspace=indent,eol,start
set expandtab
set foldenable
set hidden
set history=1024
set incsearch
set ignorecase 
" Copy text to use outside
if has('mouse')
  set mouse=a
endif
set listchars=tab:▸\ ,eol:¬
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
set winwidth=79

colorscheme Dracula
if has('gui_running')
  set cursorline
endif

set cmdheight=2
set number
set numberwidth=5
set ruler
set showcmd
set showmatch
set switchbuf=useopen
set nolist
set title
set wildmenu
set wildmode=longest,list
set wildignore+=.git,.jhw-cache,tmp/*

filetype plugin indent on

if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

if has('gui_running')
  set columns=120
  set guioptions-=T
  set guioptions-=L
  set guioptions-=r
  set lines=40
  if has('gui_macvim')
    set guifont=Monaco:h16
    set transparency=5
  elseif has('win64') || has('win32')
    set guifont=Consolas:h10
  endif
endif

set cpoptions+=$
let mapleader=','

" Ignore arrow keys
map <Left>  :echo 'arrow keys are not allowed, you dum!'<cr>
map <Right> :echo 'arrow keys are not allowed, you stupid!'<cr>
map <Up>    :echo 'arrow keys are not allowed, you moron!'<cr>
map <Down>  :echo 'arrow keys are not allowed, you retarted!'<cr>

" Clear search buffer when enter is pressed
:nnoremap <CR> :nohlsearch<cr>

if has('autocmd')
  " Apply the setting immediately 
  autocmd BufWritePost .vimrc source $MYVIMRC
endif

let Tlist_Ctags_Cmd='/usr/local/bin/ctags'

let NERDTreeShowHidden=1
nmap <Leader>nt :NERDTreeToggle
