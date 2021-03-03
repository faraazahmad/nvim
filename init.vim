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
set cc=120                  " set an 80 column border for good coding style
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting

packadd minpac
call minpac#init()
" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})

" ------------------------------------------------ Plugins --------------------------------------------------
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('tpope/vim-fugitive')
" -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  - Themes -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  
call minpac#add('morhetz/gruvbox')
" -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  Languages -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  
call minpac#add('rust-lang/rust.vim')
" -----------------------------------------------------------------------------------------------------------

" ------------------------------------------ Theme related settings -----------------------------------------
set background=dark
set termguicolors
colorscheme gruvbox
let g:airline_theme='gruvbox'
" -----------------------------------------------------------------------------------------------------------

let g:airline#extensions#tabline#enabled = 1        " enable tab-line
let g:airline_powerline_fonts = 1                   " enable powerline fonts
let g:airline#extensions#branch#enabled = 1         " show git branch

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0



" -- Config for Gruvbox theme --
let g:gruvbox_italic=1

let g:rustfmt_autosave = 1

