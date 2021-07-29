"------挙動修正------"

    " backspaceの挙動修正
    set backspace=2


"------色彩調整------"

    " シンタックスハイライト
    syntax on

    " カラースキーム指定
    colorscheme murphy


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

"------インターフェース管理------"

    " 行番号表示
    set number

"------プラグイン読み込み------"

    " 全プラグイン読み込み
    packloadall

    " ヘルプファイル読み込み
    silent! helptags ALL
