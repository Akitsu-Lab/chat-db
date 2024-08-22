
# 使い方

## DB-API-UI起動

```shell
docker compose up --build -d
```

終わったら
```shell
docker compose down -v
```

## コンテナ起動
-dはバックグラウンド
```sh
docker compose up --build -d (service名 e.g. db, api, ui)
```

```sh
psql -h localhost -p 5432 -U chat_owner -d chat
```

## コンテナ内に入ってPostgreSQLに接続する

```sh
docker compose exec -it <service名> bash
psql -h localhost -p 5432 -U chat_owner -d chat
```

## コンテナ止める

```sh
docker compose down -v
```

# DB初期化方法

コンテナの/docker-entrypoint-initdb.d
にSQLファイルを入れると名前の昇順でSQLが実行される。名前順なのでファイル名に接頭辞を付けなければいけない。

# database 操作方法

データベース確認
```sh
\l
```
データベース選択
```sh
\c chat
```

テーブル取得
```sh
\dt
```
