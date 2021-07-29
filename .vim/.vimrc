"------挙動修正------"

    " backspaceの挙動修正
    set backspace=2

    " 文字コードをUTF-8に設定
    set fenc=utf-8

    " 編集中のファイルが保存されたら自動で読み直す
    set autoread


"------インデント関連------"

    " ファイルタイプごとのインデント
    filetype plugin indent on

    " 自動インデント
    set autoindent

    " tabをspaceに変換
    set expandtab

    " tabをspace4文字分にカウント
    set tabstop=4

    " 自動インデント時のスペース数
    set shiftwidth=4


"------ファイル管理------"

    " swap一元管理
    set directory="$HOME/.vim/swaps//"

    " アンドゥファイル一元管理
    set undofile
    if !isdirectory(expand("$HOME/.vim/undodir"))
        call mkdir(expand("$HOME/.vim/undodir"), "p")
    endif
    set undodir="$HOME/.vim/undodir"

    " ファイル上書き時にバックアップを作成する挙動を無効化
    set nobackup


"------インターフェース管理------"

    " シンタックスハイライト
    syntax on

    " カラースキーム指定
    colorscheme murphy

    " 行番号表示
    set number

    " 現在の行をハイライト
    set cursorline

    " 常にステータスラインを表示する
    set laststatus=2

    " 端末のタイトルにVimの情報を表示
    set title

    " 不可視文字を可視化
    set list listchars=tab:\>\-


"------操作設定------"

    " マウス移動を有効化
    set mouse=a

    " 移動にシェルのキーバインドを追加
    nnoremap <C-p> <Up>
    nnoremap <C-n> <Down>

    " 以下は「1ページ分の移動」と競合するため無効化
    " nnoremap <C-f> <Right>
    " nnoremap <C-b> <Left>

    " Escapeに'j'2回押しのキーバインドを追加
    inoremap <silent> jj <esc>

    " 表示行単位で移動する(折返しを考慮する)
    nnoremap j gj
    nnoremap k gk

    " Exコマンド(:wq等)のタブ補完
    set wildmenu
    set wildmode=full

    " ハイライトを'Escape'二回押しで消去
    nnoremap <Esc><Esc> :nohlsearch<CR><ESC>


"------プラグイン読み込み------"

    " 全プラグイン読み込み
    packloadall

    " ヘルプファイル読み込み
    silent! helptags ALL


