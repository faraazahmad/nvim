set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting

call plug#begin(stdpath('data') . '/plugged')

" Basic functionality
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'vim-syntastic/syntastic'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Themes
Plug 'ajmwagar/vim-deus'
Plug 'lifepillar/vim-wwdc16-theme'
Plug 'glepnir/oceanic-material'
Plug 'fneu/breezy'
Plug 'joshdick/onedark.vim'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'whatyouhide/vim-gotham'
Plug 'sainnhe/sonokai'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'lifepillar/vim-solarized8'

" Languages
Plug 'rust-lang/rust.vim'

call plug#end()

let g:airline#extensions#tabline#enabled = 1        " enable tab-line
let g:airline_powerline_fonts = 1                   " enable powerline fonts
let g:airline#extensions#branch#enabled = 1         " show git branch

let g:fzf_preview_window = 'right:50%'
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6  }  }

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set background=dark
set termguicolors
colorscheme solarized8
let g:airline_theme='gotham'                       " set airline theme

" -- Config for sonokai theme --
" let g:sonokai_style = 'atlantis'
" let g:sonokai_enable_italic = 1

" -- Config for Gruvbox theme --
" let g:gruvbox_italic=1

let g:rustfmt_autosave = 1

