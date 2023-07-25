" .--.--.|__|.--------.----.----.
" |  |  ||  ||        |   _|  __|
"  \___/ |__||__|__|__|__| |____|
" BASIC CONFIGURATION {{{
set smarttab                                     " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                                    " Converts tabs to spaces
set smartindent                                  " Makes indenting smart
set autoindent expandtab tabstop=4 shiftwidth=4  " Good auto indent
set number                                       " Line numbers
set foldenable
set foldmethod=marker
set foldmarker={{{,}}}
set showtabline=4                                " Always show tabs
set nobackup                                     " This is recommended by coc
set nowritebackup                                " This is recommended by coc
set updatetime=300                               " Faster completion
set timeoutlen=500                               " By default timeoutlen is 1000 ms
set formatoptions-=cro                           " Stop newline continution of comments
set clipboard=unnamedplus                        " Copy paste between vim and everything else
set cursorline
set title
set mouse=a
set encoding=utf-8
hi Normal ctermbg=NONE

" Highlight Whitespaces
highlight Whitespace ctermfg=Grey

" Makes comments italic
highlight Comment cterm=italic

" Customize spell check highlighting
highlight SpellBad ctermbg=Red ctermfg=White
highlight SpellCap cterm=NONE ctermbg=NONE
highlight SpellRare cterm=NONE ctermbg=NONE
highlight SpellLocal cterm=undercurl ctermbg=NONE

" Customize cursor line
highlight CursorLine cterm=NONE ctermbg=Black 
" highlight CursorLineNr cterm=Bold ctermbg=Black ctermfg=White

" highlight LineNr ctermbg=NONE ctermfg=White
highlight VertSplit ctermbg=NONE ctermfg=White

" Customize folds
highlight Folded ctermfg=White ctermbg=NONE cterm=bold

" Vertically center documents when in insert mode
" autocmd InsertEnter * norm zz

" Highlight Whitespaces
highlight Whitespace ctermfg=Grey

" Makes comments italic
highlight Comment cterm=italic

" Customize spell check highlighting
highlight SpellBad ctermbg=Red ctermfg=White
highlight SpellCap cterm=NONE ctermbg=NONE
highlight SpellRare cterm=NONE ctermbg=NONE
highlight SpellLocal cterm=undercurl ctermbg=NONE

" Customize cursor line
highlight CursorLine cterm=NONE ctermbg=Black 
" highlight CursorLineNr cterm=Bold ctermbg=Black ctermfg=White

" highlight LineNr ctermbg=NONE ctermfg=White
highlight VertSplit ctermbg=NONE ctermfg=White

" Customize folds
highlight Folded ctermfg=White ctermbg=NONE cterm=bold

" Vertically center documents when in insert mode
" autocmd InsertEnter * norm zz
""""""
syntax enable
filetype plugin indent on

" }}}

" PLUGINS {{{
call plug#begin()

" File and folder management
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Customization
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/preservim/tagbar'
Plug 'voldikss/vim-floaterm'


" Dart
Plug 'dart-lang/dart-vim-plugin'

" Git
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'

" Must have
Plug 'terryma/vim-multiple-cursors' "Ctrl + n for multiple cursors
Plug 'tpope/vim-commentary' "gcc coment 
" Language Support
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-projectionist'

" Web Development
Plug 'ap/vim-css-color'
Plug 'mattn/emmet-vim'

" Python Development
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

" Syntax highlighting
Plug 'vim-python/python-syntax'
Plug 'plasticboy/vim-markdown'

"Rust
Plug 'rust-lang/rust.vim'

call plug#end()
" }}}

"PLUGINS CONFIGURATION {{{

colorscheme catppuccin

"nerdtree
let g:NERDTreeDirArrowExpandable="→"
let g:NERDTreeDirArrowCollapsible="←"

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-y> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

"Tagbar
nmap <F8> :TagbarOpen f<CR>
 
"autocomplete

inoremap <expr> <C-z> pumvisible() ? coc#_select_confirm() : "<C-y>"

"airline"
let g:molokai_original = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 1
"IndentGuides"
let g:indentguides_spacechar = '▏'
let g:indentguides_tabchar = '▏'

" show the '~' characters after the end of buffers
let g:dracula_show_end_of_buffer = 1
" use transparent background
let g:dracula_transparent_bg = 10
" set custom lualine background color
let g:dracula_lualine_bg_color = "#44475a"

"}}}

