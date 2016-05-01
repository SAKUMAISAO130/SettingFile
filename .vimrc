" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing





"############## 表示系 ###############
" スワップファイルは使わない(ときどき面倒な警告が出るだけで役に立ったことがない)
set noswapfile
" 検索ワードの最初の文字を入力した時点で検索を開始する
set incsearch
" 検索結果をハイライト表示する
set hlsearch
" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
" 行番号
set number
" モード表示
set showmode
" タイトル表示
set title
" ルーラー表示
set ruler
" 不可視文字を表示する
set list
" 折り返し禁止
set nowrap

"############# 開発系 ###############
" シンタックス
syntax on
" オートインデント
set smartindent
" tabの代わりに半角スペース挿入
set expandtab
" tabを半角スペース2文字分
set ts=2 sw=2 sts=0

"############ その他 ################
" エンコードをutf-8に設定
set encoding=utf8

" ファイルエンコードをutf-8に設定
set fileencoding=utf8

" マウスモードを有効にする
set mouse=a

" コマンドを最下部に表示
set showcmd

" カラースキーム「monokai」
colorscheme molokai



" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

"---------------------------
" key bind setting
"---------------------------

" ノーマルモード時だけ ; と : を入れ替える
nnoremap ; :
nnoremap : ;

nnoremap :ntt  :NeoBundleInstall








"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

"--------
" プラグインStart"
"--------

" NERDTreeプラグイン
NeoBundle 'scrooloose/nerdtree'

" emmetプラグイン
NeoBundle 'mattn/emmet-vim'

" grep系プラグイン
NeoBundle 'grep.vim'

" シンタックスチェックプラグイン
NeoBundle 'scrooloose/syntastic'

" インデントに色を付けて見やすくする
NeoBundle 'nathanaelkane/vim-indent-guides'

" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
"et g:indent_guides_enable_on_vim_startup = 1


NeoBundle 'mattn/emmet-vim'

"--------
" プラグインEnd"
"--------


call neobundle#end()

" Required:
filetype plugin indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------



nnoremap <silent><C-e> :NERDTreeToggle<CR>
nnoremap <S-l> <C-w>l
nnoremap <S-h> <C-w>h








