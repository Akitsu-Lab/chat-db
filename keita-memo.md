
# 使い方

## コンテナ起動
-dはバックグラウンド
```sh
docker-compose up --build -d
```

ローカルホスト名はIPアドレスで入れないと接続できないかも。WindowsのWSLの場合はWSLは別ネットワークだからかもしれない。

```sh
mysql -h localhost -P 3306 -u root -p
```
or
```sh
mysql -h 127.0.0.1 -P 3306 -u root -p
```

## コンテナ内に入ってMySQLに接続する

```sh
docker exec -it <コンテナ名> bash
mysql -u root -p
```

## コンテナ止める

```sh
docker-compose down -v
```

# DB初期化方法

コンテナの/docker-entrypoint-initdb.d
にSQLファイルを入れると名前の昇順でSQLが実行される。名前順なのでファイル名に接頭辞を付けなければいけない。

# database 操作方法

データベース確認
```sh
show databases;
```
データベース選択
```sh
USE db
```

テーブル取得
```sh
show tables;
```

# DBeaverでMySQL接続時のエラー

https://okuyan-techdiary.com/mysql-dbeaver-error/