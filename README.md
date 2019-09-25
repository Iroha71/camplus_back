# Ruby on rails ver.5.2.3
## git
### ブランチ名
- `#issue番号_タスク内容`
    - 例： `#1_ログイン画面作成`
    - 日本語でOK
### コミットメッセージ
- `作業内容 #issue番号`
    - 例： `ログイン処理を追加 #1`

## rails ルール
- 変数・関数名は __スネークケース__
    - ○ `user_name`
    - × `userName`
- コントローラ内のメソッド名
    - 複数のデータをとりたい=> `index`
    - 特定のIDのデータをとりたい=> `show`
    - レコードを挿入したい=> `create`
    - 更新したい=> `update`
    - 削除したい=> `destroy`

## rails コマンド
### サーバ
- 起動： `rails s`
- 終了： `ctrlキー + c`
### DB
- 作成： `rails db:create`
- マイグレーション： `rails db:migrate`
- マイグレーションやり直し： `rails db:rollback`
- 削除： `rails db:drop`
- 初期値挿入： `rails db:seed`
### モデル作成
- `rails g model <モデル名> <カラム名：型名>`
    - `rails g User name:string age:integer`
### コントローラ作成
- `rails g controller <コントローラ名>
    - `rails g controller User`
### シリアライザ作成
- `rails g serializer <シリアライザ名>`
    - `rails g serializer User`