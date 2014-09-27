# 配置先のディレクトリを作成
mkdir -p ~/.vim/bundle
# NeoBundleをリポジトリから取得
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
# 設定ファイルをコピー
cp ./.vimrc ~/.vimrc
