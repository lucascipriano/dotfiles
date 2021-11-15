call plug#begin()

"Tema
Plug 'dikiaap/minimalist'
"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
"https://github.com/neoclide/coc.nvim
"Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-json', 'coc-eslint', 'coc-tslint', 'coc-css', 'coc-emmet', 'coc-tsserver', 'coc-rome', 'coc-prettier', 'coc-rls', 'coc-rust-analyzer']
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
"Instalacao do deoplete
"if has('nvim')
"  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
"  Plug 'Shougo/deoplete.nvim'
"  Plug 'roxma/nvim-yarp'
"  Plug 'roxma/vim-hug-neovim-rpc'
"endif
"let g:deoplete#enable_at_startup = 1
"Fim da instalacao do deoplete
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

set mouse=a

set inccommand=split
set clipboard=unnamed
"let g:python3_host_prog='/usr/bin/python3'
set expandtab
set shiftwidth=2

let mapleader="\<space>"
"space + p Prettier
nnoremap  <leader>p<esc>
let g:prettier#quickfix_enabled = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html PrettierAsync

nnoremap <leader>; A;<esc>
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>
nnoremap <c-[> :+tabnext<cr>
nnoremap <c-]> :-tabnext<cr>
let g:UltiSnipsEditSplit="vertical"
