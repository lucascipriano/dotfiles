call plug#begin()
" --------------- Files ----------------
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'scrooloose/nerdtree'
" --------------------------------------

"----------------Dev-------------------

  Plug 'neoclide/coc.nvim', { 'branch': 'master' }
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  
  Plug 'MaxMEllon/vim-jsx-pretty'
  Plug 'mattn/emmet-vim'

  Plug 'ap/vim-css-color'
" --------------------------------------
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" ---------------Frufru------------------
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ryanoasis/vim-devicons'
  Plug 'dikiaap/minimalist'
  Plug 'jiangmiao/auto-pairs'
  Plug 'sheerun/vim-polyglot'

" --------------------------------------
call plug#end()

let g:coc_global_extensions = ['coc-prettier', 'coc-tsserver', 'coc-eslint', 'coc-eslint', 'coc-rust-analyzer', 'coc-css', 'coc-scssmodules' ]
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')


let mapleader="\<space>"
colorscheme minimalist
set t_Co=256
set background=dark



"-------------- Keybinds ----------------
nnoremap <leader>ff :Telescope find_files<esc>
nnoremap <leader>fg :Telescope live_grep<esc>
nnoremap <leader>e :NERDTreeToggle<esc>

nnoremap <F12> :PlugInstall <CR>
nnoremap <F2> :Prettier <CR>

noremap <Leader>t :vsplit term://zsh<CR>


nnoremap <C-t> :tabnew <bar> :NERDTree<CR>
noremap <leader>q :tabclose<CR>

noremap <Tab> :tabnext<CR>
noremap <S-Tab> :tabprevious<CR>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <silent> K :call CocAction('doHover')<CR>

" --------------------------------------
" ---- Prettier

let g:prettier#autoformat_require_pragma = 0
let g:prettier#quickfix_enabled = 0

autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html PrettierAsync
syntax on
set hidden
set expandtab
set shiftwidth=2
set number
set relativenumber
set termguicolors
set cursorline
set mouse=a
set encoding=UTF-8
set splitbelow  
set splitright  
set clipboard+=unnamedplus
set autoindent


