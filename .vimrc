set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set exrc
set nowrap
set incsearch
set scrolloff=12
set signcolumn=yes
set relativenumber
set number
set updatetime=1000
set laststatus=2

call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex', { 'for': 'tex' }
Plug 'rafi/awesome-vim-colorschemes'
Plug 'preservim/nerdtree'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'itchyny/lightline.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'dense-analysis/ale'
Plug 'Chiel92/vim-autoformat'


call plug#end()

colorscheme deus
let g:deoplete#enable_at_startup = 1
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
            \ quit | endif

let g:lightline = {
    \ 'colorscheme': 'seoul256',
    \ }

let g:rainbow_active = 1
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

inoremap { {}<Esc>i
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap {<CR> {<CR>}<C-o>O
inoremap [<CR> [<CR>]<C-o>O
inoremap (<CR> (<CR>)<C-o>O
inoremap {; {<CR>};<Esc>O
inoremap [; [<CR>];<Esc>O
inoremap (; (<CR>);<Esc>O
inoremap <expr> } getline(".")[col(".")-1] == "}" ? '<Esc>la' : '}'
inoremap <expr> ) getline(".")[col(".")-1] == ")" ? '<Esc>la' : ')'
inoremap <expr> ] getline(".")[col(".")-1] == "]" ? '<Esc>la' : ']'
inoremap <expr> " getline(".")[col(".")-1] == '"' ? '<Esc>la' : '""<Esc>i'
inoremap <expr> ' getline(".")[col(".")-1] == "'" ? '<Esc>la' : "''<Esc>i"
inoremap <expr> ` getline(".")[col(".")-1] == "`" ? '<Esc>la' : '``<Esc>i'

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap * :bel term<CR>


nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

noremap <F3> :Autoformat<CR>
