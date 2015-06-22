source $VIMRUNTIME/mswin.vim
set backspace=indent,eol,start


"highlights the currentline
set cursorline
"highlights searchResuslts
set hlsearch

set pastetoggle=<F10>
"inoremap <C-v> <F10><C-r>+<F10>

imap jj <Esc>
imap JJ <Esc>

set guifont=Source_Code_Pro:h10:cDEFAULT

"run python or haskell programs
autocmd FileType python nnoremap <F9> :!start python<ENTER>
autocmd FileType haskell nnoremap <F9> :!start ghci %<ENTER>

"easy-align-stuff
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

"gui options
set go=egmrL

set autoindent

"soft tabs
autocmd FileType haskell set expandtab
autocmd FileType python set expandtab
set tabstop=4


"Space to toggle folds
nnoremap <Space> za
vnoremap <Space> za

"disbles noise etc
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

execute pathogen#infect()

" airline stuff
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

"disable arrows
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

"makes ; open task bar
nnoremap ; :
nnoremap : ;

"swaps open buffer
nnoremap <leader> bq : bd <ENTER>
nnoremap T :enew <ENTER>
nnoremap <Tab> :bnext! <ENTER>


syntax on

"syntastic stuff

let g:syntastic_java_javac_classpath = ('c:\Users\Drew\Documents\java\ecs100.jar')

filetype plugin on

let g:haddock_browser="/usr/bin/firefox"

"vim2hs
let g:haskell_conceal = 0 "disables ligatures

set nu

set noswapfile

set ruler

syntax enable

colorscheme lyah

"sets airplane to constanly on
set laststatus=2

nnoremap <silent> <Up> :wincmd k<CR>
nnoremap <silent> <Down> :wincmd j<CR>
nnoremap <silent> <Left> :wincmd h<CR>
nnoremap <silent> <Right> :wincmd l<CR>
