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

Plug '/junegunn/fzf.vim' " Fuzzy finder
Plug 'vim-airline/vim-airline' " https://github.com/vim-airline/vim-airline
Plug 'ryanoasis/vim-devicons'  " https://github.com/ryanoasis/vim-devicons + https://github.com/ryanoasis/nerd-fonts/
Plug 'https://github.com/tc50cal/vim-terminal' " Quick Terminal
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-commentary'    " https://github.com/tpope/vim-commentary
Plug 'mkitt/tabline.vim'       " https://github.com/mkitt/tabline.vim
Plug 'https://github.com/preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'glepnir/dashboard-nvim' " Dashboard
" vim-plug
Plug 'lervag/vimtex'
" Markdown preview plugin
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'NLKNguyen/papercolor-theme'
Plug 'https://github.com/ellisonleao/gruvbox.nvim'
call plug#end()

let g:vimtex_view_method = 'zathura'
filetype plugin indent on
syntax enable

let g:NERDTreeDirArrowExpandable = '?'
let g:NERDTreeDirArrowCollapsible = '?'
let g:NERDTreeWinSize=60

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

nnoremap <F5> <ESC>:w<CR>:!pdflatex main.tex<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

" autocmd VimEnter * NERDTree | wincmd p

set background=dark
" colorscheme PaperColor
colorscheme gruvbox
