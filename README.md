# Railsを用いたTodoApp

### プロジェクト作成方法

` rails new app-name --database=postgresql `

### Model作成手順

1. プロジェクトのルートディレクトリに移動。
1. `rails generate model Todo`を実行
1. 生成したモデルのマイグレーションファイルを編集する。マイグレーションファイルは、db/migrate/ディレクトリにある.rb拡張子のファイル。
1. 編集後に`rails db:migrate`を実行
1. モデルにバリデーションを追加する場合は、モデルのファイルにバリデーションを記述する。

### 実行
` rails s `
