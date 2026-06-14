# untokosyo-infra

## 前提条件

- Docker / Docker Compose
- Git

## セットアップ

### 1. リポジトリをクローン

```bash
git clone git@github.com:allocup-2026-tabaru/untokosyo-infra.git
cd untokosyo-infra
```

### 2. サブモジュールを初期化

```bash
make init
```

### 3. 環境変数ファイルを生成

```bash
make env-tmp
```

`envs/be.env` と `envs/fe.env` が作成される。
必要に応じて値を編集する（`NEXT_PUBLIC_R2_PUBLIC_URL` はテンプレートに設定済み）。

### 4. 起動

```bash
make up
```

| サービス       | URL                    |
|--------------|------------------------|
| フロントエンド | http://localhost:3000  |
| バックエンド   | http://localhost:8080  |

## その他のコマンド

| コマンド              | 説明                                         |
|---------------------|----------------------------------------------|
| `make update`       | サブモジュールをリモートの最新に更新           |
| `make env-set`      | envs/ のファイルを各サブプロジェクトにコピー   |
| `make be <target>`  | untokosyo-be の make ターゲットを実行         |
| `make fe <target>`  | untokosyo-fe の make ターゲットを実行         |
