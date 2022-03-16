call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Tema
Plug 'dikiaap/minimalist'
"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'vue', 'html'] }

Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-json', 'coc-eslint', 'coc-tslint', 'coc-css', 'coc-emmet', 'coc-tsserver', 'coc-rome', 'coc-prettier', 'coc-go']
"rust 
" https://github.com/fannheyward/coc-rust-analyzer
" CocCommand rust-analyzer.toggleInlayHints

Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'cohama/lexima.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"DEV JS
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

"CSS
Plug 'ap/vim-css-color'
Plug 'cakebaker/scss-syntax.vim'

call plug#end()


map <F2> :NERDTreeToggle <CR>
map <F12> :PlugInstall <CR>
map <F3> :Prettier <CR>
colorscheme minimalist
set t_Co=256
set background=dark
syntax on
set hidden

set number
set relativenumber
set termguicolors
set cursorline
set mouse=a


" Exibir uma coluna para marcar 80 espaços
set colorcolumn=120

set inccommand=split
set clipboard=unnamed
"let g:python3_host_prog='/usr/bin/python3'
set expandtab
set shiftwidth=2

let mapleader="\<space>"
"space + p Prettier
nnoremap  <leader>p<esc>
let g:prettier#quickfix_enabled = 0
command! -nargs=0 Prettier :CocCommand prettier.formatFile

nnoremap <leader>; A;<esc>
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>
nnoremap <c-[> :+tabnext<cr>
nnoremap <c-]> :-tabnext<cr>
let g:UltiSnipsEditSplit="vertical"


