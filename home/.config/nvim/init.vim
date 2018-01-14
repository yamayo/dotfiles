syntax on

set encoding=utf-8

set list
set number
set wrap
set textwidth=0
set colorcolumn=80
set ruler
set cursorline
set laststatus=2
set scrolloff=5
set showmatch

set expandtab
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=0

set ignorecase
set smartcase
set incsearch
set hlsearch

set hidden
set switchbuf=useopen
set noswapfile
set nowritebackup
set nobackup

set mouse=a

set pastetoggle=<F5>

set backspace=indent,eol,start
set listchars=tab:>\ ,trail:-,extends:»,precedes:«,nbsp:%,eol:↲
set matchpairs& matchpairs+=<:>
set clipboard+=unnamed " ,autoselect


nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
vnoremap v $h
nnoremap <CR> o<Esc>
nnoremap <silent> <Esc><Esc> :nohlsearch<CR>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>


let mapleader = "\<Space>"

nnoremap <leader>w :<C-u>w!<CR>
nnoremap <leader>q :<C-u>q!<CR>
nnoremap <leader>qa :<C-u>qall!<CR>
nnoremap <leader>x :<C-u>x!<CR>
nnoremap <leader>r :<C-u>e!<CR>
nnoremap <leader>ev :<C-u>edit $MYVIMRC<CR>
nnoremap <leader>sv :<C-u>source $MYVIMRC<CR>


autocmd BufWritePre * :%s/\s\+$//e
autocmd InsertLeave * set nopaste


function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=underline ctermfg=DarkMagenta gui=underline guifg=DarkMagenta
endfunction

if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    autocmd ColorScheme       * call ZenkakuSpace()
    autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
  augroup END
  call ZenkakuSpace()
endif


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/yamayo/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/yamayo/.cache/dein')
  call dein#begin('/Users/yamayo/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/yamayo/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/deoplete-go')
  call dein#add('fishbullet/deoplete-ruby')
  call dein#add('scrooloose/nerdtree')
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-endwise')
  call dein#add('tpope/vim-rails')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('easymotion/vim-easymotion')
  call dein#add('fatih/vim-go')
  call dein#add('mileszs/ack.vim')
  call dein#add('junegunn/vim-easy-align')
  call dein#add('cohama/lexima.vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" unite
let g:unite_enable_start_insert = 1
let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1

autocmd FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
autocmd FileType unite inoremap <silent> <buffer> <ESC><ESC>


" deoplete
let g:deoplete#enable_at_startup = 1


" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 0
let g:airline_theme = 'solarized'
let g:airline_solarized_bg = 'dark'


" Solarized
set background=dark
colorscheme solarized


" NERD Tree
let NERDTreeShowHidden=1
map <F2> :NERDTreeToggle<CR>

let file_name = expand("%")
if has('vim_starting') &&  file_name == ""
  autocmd VimEnter * NERDTree ./
endif


" The Silver Searcher
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif


" EasyMotion
let g:EasyMotion_do_mapping = 0
nmap f <plug>(easymotion-overwin-f2)
let g:EasyMotion_smartcase = 1


" vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
