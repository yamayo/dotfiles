set nocompatible
syntax on               " シンタックスハイライト

set encoding=utf-8      " エンコード

" 表示
set list                " 不可視文字の可視化
set number              " 行番号の表示
set wrap                " 長いテキストの折り返し
set textwidth=0         " 自動的に改行が入るのを無効化
set colorcolumn=80      " 80文字目にラインを入れる
set ruler               " 右下に表示される行・列の番号を表示する
set cursorline          " カレント行をハイライト
set laststatus=2        " 常にステータスラインを表示
set scrolloff=5         " スクロールする時に下が見えるようにする

" タブ
set expandtab           " タブ入力を複数の空白入力に置き換える
set autoindent          " 改行時に前の行のインデントを継続する
set smartindent         " 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set ts=2 sw=2 sts=0     " 画面上でタブ文字が占める幅、自動インデントでずれる幅、連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅

" 検索
set ignorecase          " 大文字小文字を区別しない
set smartcase           " 検索文字に大文字がある場合は大文字小文字を区別
set incsearch           " インクリメンタルサーチ
set hlsearch            " 検索マッチテキストをハイライト

" ファイル制御
set hidden              " 変更中のファイルでも、保存しないで他のファイルを表示
set switchbuf=useopen   " 新しく開く代わりにすでに開いてあるバッファを開く
set noswapfile          " .swapファイルを作らない
set nowritebackup       " バックアップファイルを作らない
set nobackup            " バックアップをしない

" マウスモードを有効にする
set mouse=a

" F5でペーストモードを切り替え
set pastetoggle=<F5>

" バックスペースでなんでも消せるようにする
set backspace=indent,eol,start

" 不可視文字の変更
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲

" 対応括弧に'<'と'>'のペアを追加
set matchpairs& matchpairs+=<:>

" Copy(Cut) to clipboard
set clipboard+=unnamed ",autoselect

" vimrcを即座に編集
nnoremap <Space>.   :<C-u>edit $MYVIMRC<Enter>
" vimrcを即座にリロード
nnoremap <Space>s.  :<C-u>source $MYVIMRC<Enter>

" ノーマルモードで改行
nnoremap <CR> o<Esc>

" ESCを二回押すことでハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR>

" :helpを引きやすくする
nnoremap <C-h> :<C-u>help<Space>

" カーソルの下のキーワードを:helpで引けるようにする
nnoremap <C-h><C-h> :<C-u>help<Space><C-r><C-w><Enter>

" 論理行移動と表示行移動のキーバインディングを入れ替える
noremap j gj
noremap k gk
noremap gj j
noremap gk k

" vを二回で行末まで選択
vnoremap v $h

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/Users/yamayo/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('/Users/yamayo/.config/nvim/dein'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/neocomplete.vim')
call dein#add('scrooloose/nerdtree')
call dein#add('altercation/vim-colors-solarized')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-endwise')
call dein#add('tpope/vim-ruby')
call dein#add('tpope/vim-rails')
call dein#add('vim-airline/vim-airline')
" call dein#add('vim-airline/vim-airline-themes')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
"End dein Scripts-------------------------

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 0
" let g:airline_theme = 'solarized'
" let g:airline_solarized_bg = 'dark'

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
