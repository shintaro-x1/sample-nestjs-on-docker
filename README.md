# sample-nestjs-on-docker

## 環境構築

`docker compose` というイメージやコンテナを操作する仕組みがあり、それの設定ファイルが `docker-compose.yml` です。
`Dockerfile` は、Docker のイメージを構築するために必要な設定ファイルです。
`docker-compose.yml` から `Dockerfile` を読み込んで、イメージやコンテナの操作をしているという感じです。

```
# 依存ライブラリのインストール
yarn install

# NestJS のビルド (dist ディレクトリが作成されます)
yarn build

# コンテナの起動
# イメージがない場合は、イメージのビルドからコンテナの起動までを行います
# http://localhost:3000 で API サーバーが起動します
docker compose up

# デーモンで起動 (基本的にはこっちを使えばよいかと)
docker compose up -d

# コンテナの停止
docker compose down

# コンテナの停止 (イメージも削除したい場合)
# Dockerfile を更新した場合をイメージを再ビルドする必要があると思うのでこっちを使ってください
docker compose down --rmi all
```
