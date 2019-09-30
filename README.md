-- できること --

* dockerを用いたWebサーバを立ち上げ、WordPressブログを運用できる

-- 設定ファイルの記述 --

* docker-blogフォルダ内で、 cp .env.example .env を実行

* vi等で.envファイルを開き、各設定を記述

-- コンテナ作成 --

** bash create_container.sh を実行

-- コンテナの(再)起動 --

* docker-blogフォルダ内で、 bash restart_container.sh を実行

-- wordPressページ表示 --

* ブラウザを立ち上げ、URLに自分のローカルIPアドレス(xxx.xxx.xxx.xxx)を入力して実行

例：192.168.33.10
wordPressページのセットアップ画面が表示される

-- コンテナの削除 --

* docker-blogフォルダ内で、 bash rmi-container.sh を実行

