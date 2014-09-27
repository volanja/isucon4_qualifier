# isucon4_qualifier

ISUCON4 予選

# 構成の確認
+ RDBMSの設定
+ Appサーバの設定
+ ReverseProxyの設定
+ OSの設定

# 初期ベンチマーク前にやること
- [ ] 動作ソフトウェアの確認  
  `ps aux`,`netstat -tanp`, `chkconfig |grep "3:on"`
- [ ] [スロークエリの設定](https://gist.github.com/volanja/3aa32a5d88880fd9bd8f)
- [ ] [NewRelicの設定]


# 2回目のベンチマーク後にやること。
- [ ] Rubyへの変更
- [ ] [Rubyプロファイラ(NewRelic)](https://gist.github.com/volanja/e42bdb3e33583a3c85f0)
- [ ] [Rubyプロファイラ(rack-lineprof)]
- [ ] nginx(openrestry)のインストール
- [ ] memcachedのインストール

# Notice
- [ ] `split`などCPUを使う処理があるか。あればRDBMSやmemcachedから取り出す。
- [ ] 別プログラムを実行しているか。あれば内部でやるようにする。
- [ ] ループしているところはないか。

# コマンド
## MySQL
+ MySQLのリブート
```
service mysql restart
```

+ MySQLのスロークエリの確認  
```
sudo mysqldumpslow /var/lib/mysql/slow-query.log
```

## Git
+ ファイルを修正した時の操作
```
# gitに登録するファイルを指定する。
git add <filename>
# gitに登録する。
# コミットメッセージの作成画面が出るので、メッセージを記入して:wqする。
git commit
# Githubへのアップロード
git push
```

+ Githubとの同期
```
./our_scripts/git-pull.sh
```
