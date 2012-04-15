set nocompatible

let &t_Co=256

call pathogen#infect()
call pathogen#helptags()

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

if has('gui_running')
  set cursorline
  set background=dark
  colorscheme solarized
  let g:solarized_termtrans=1
  let g:solarized_termcolors=256
  let g:solarized_contrast='high'
  let g:solarized_visibility='high'
else
  colorscheme Mustang
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
  set columns=120
  set guioptions-=T
  set guioptions-=L
  set guioptions-=r
  set lines=40
  if has('gui_macvim')
    set guifont=Monaco:h15
    set transparency=5
  elseif has('win64') || has('win32')
    set guifont=Consolas:h10
  endif
endif

let mapleader=','

" Ignore arrow keys
map <Left>  :echo 'arrow keys are not allowed, you dum!'<cr>
map <Right> :echo 'arrow keys are not allowed, you stupid!'<cr>
map <Up>    :echo 'arrow keys are not allowed, you moron!'<cr>
map <Down>  :echo 'arrow keys are not allowed, you retarted!'<cr>

" Clear search buffer when enter is pressed
:nnoremap <CR> :nohlsearch<cr>

if has('autocmd')
  " Apply the setting changes immediately 
  autocmd BufWritePost .vimrc source $MYVIMRC
endif

let NERDTreeShowHidden=1
nmap <Leader>nt :NERDTreeToggle

if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif

let g:user_zen_settings = {
\  'indentation' : '  ',
\}

let g:use_zen_complete_tag = 1
