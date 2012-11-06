"golang support
set rtp+=$GOROOT/misc/vim

filetype plugin on
filetype indent on

" colorscheme google

syntax on

set nu
set nocompatible
set encoding=utf-8
set autoindent
set autoread
set autowrite
set backspace=indent,eol,start
set nobackup
set browsedir=current
set complete+=k
set history=50
set hlsearch
set incsearch
set listchars=tab:>.,eol:\$
set nowrap
set popt=left:8pc,right:3pc
set ruler
set shiftwidth=4
set showcmd
set smartindent
set tabstop=4
set expandtab
%retab
set visualbell
set wildignore=*.bak,*.o,*.e,*~

highlight MatchParen ctermbg=blue guibg=lightyellow

let g:netrw_liststyle = 3

"tab opt 
map <S-h> :tabp<CR>
map <S-l> :tabn<CR>

map <C-b>n :bn<CR>
map <C-b>p :bp<CR>

