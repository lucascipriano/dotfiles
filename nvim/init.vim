call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf'
Plug 'scrooloose/nerdtree'
Plug 'shougo/neocomplete.vim'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'

" use Choco to install tabnine :)

call plug#end()

colorscheme onedark
let g:airline_solarized_bg='dark'
syntax enable
set number
set background=dark
set mouse=a
map <F2> :NERDTreeToggle <CR>
map <F12> :PlugInstall <CR>
map <F3> gg=G <CR>
nnoremap <C-s> :w! <CR>
nnoremap <C-q> :q! <CR>
let g:tablineclosebutton=1
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:coc_disable_startup_warning = 1

set autoindent

set tabstop=2
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2 
