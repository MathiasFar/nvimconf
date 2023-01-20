syntax on
set number
set spelllang=en_us
set autoindent
set colorcolumn=80
set mouse=a
set clipboard=unnamed
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set wrap
set linebreak
call plug#begin()

Plug 'vim-airline/vim-airline' " https://github.com/vim-airline/vim-airline
Plug 'ryanoasis/vim-devicons'  " https://github.com/ryanoasis/vim-devicons + https://github.com/ryanoasis/nerd-fonts/
Plug 'tpope/vim-commentary'    " https://github.com/tpope/vim-commentary
Plug 'mkitt/tabline.vim'       " https://github.com/mkitt/tabline.vim
" Plug 'reservim/nerdtree'
Plug 'tpope/vim-surround'

" vim-plug
Plug 'lervag/vimtex'
" Markdown preview plugin
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'NLKNguyen/papercolor-theme'
call plug#end()

let g:vimtex_view_method = 'zathura'
filetype plugin indent on
syntax enable

" let g:NERDTreeDirArrowExpandable = '?'
" let g:NERDTreeDirArrowCollapsible = '?'

nnoremap <F5> <ESC>:w<CR>:!pdflatex main.tex<CR>
" nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>

" autocmd VimEnter * NERDTree | wincmd p

set background=dark
colorscheme PaperColor
