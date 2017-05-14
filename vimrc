" Vim rc
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'

" Colorschemes
Plug 'tomasiser/vim-code-dark'
Plug 'nightsense/vim-crunchbang'
Plug 'lu-ren/SerialExperimentsLain'
call plug#end()

set t_Co=256
set t_ut=
syntax on
set number 
set nowrap
set encoding=utf-8
set background=dark
colorscheme SerialExperimentsLain 
let g:airline_theme = 'codedark'

let python_highlight_all=1

" Nerd Tree Shortcuts
let mapleader = ","
nmap <leader>ne :NERDTree<cr>
nmap <leader>nc :NERDTreeClose<cr>
nmap <leader>nt :NERDTreeToggle<cr>

" Hide .pyc files in Nerd Tree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


" TODO For some reason this is not working correctly!!
"PEP 8 indentation
autocmd BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" Web design indentation
autocmd BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" Mark extra whitespace as bad
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF
