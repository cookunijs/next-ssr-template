# Next.js SSR Template

## セットアップ
```
$ yarn
```

## ローカルでの起動
```
$ yarn dev
```

## デプロイ
※ CloudRunを使うために請求先アカウントの設定が必要になります

- firebaseのプロジェクトが必要なので用意して、プロジェクトIDを `firebase.json` のdefaultのvalueに埋め込んでください
- gcloud sdkが必要なのでセットアップしてください
  - https://cloud.google.com/sdk/install?hl=ja
- `$ GCLOUD_PROJECT=your_project_id yarn gcloud:build` を叩いてください
  - your_project_idはご自身のプロジェクトに置き換えてください
  - 請求先アカウントの設定が必要になると思います
- 下記から`renderer`という名前でサービスを作ってください
  - https://console.cloud.google.com/run?hl=ja
  - region: asia-northeast1, 認証: 未認証の呼び出しを許可
  - コンテナイメージ: 先程の工程で上げた renderer を選択
- `$ firebase deploy:dev` で動くはず
