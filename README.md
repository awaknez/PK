# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# アプリケーション名
PK -Project Kanri-

## アプリケーション概要
---

![トップ画面]()
![新規予約画面]()

## URL
---


## テスト用アカウント
---
Basic認証
- ユーザー名：
- パスワード：

<br>
テスト用アカウント

- メールアドレス：
- パスワード：
  
## 使用言語、環境、テクノロジー
---
Ruby on Rails v6.0
JavaScript
GitHub
  
## 利用方法
---
【入力項目】
<!-- - 日付 (先程選んだ日にちがデフォルトで入力されています)
- 開始時刻<br>
    表の中からご希望の時間帯の「◯」をクリックしてください。
    <br>「×」となっている時間帯は選ぶことができません。
- ご参加予定人数（※）
    <br>プルダウンの中から該当の選択肢を選んでください。
- 面談形式（※）
    <br>プルダウンの中から該当の選択肢を選んでください。
- 備考・面談で相談したいこと
    <br>予約時に共有したいことがあれば記入してください。
  <br>
  入力した内容に間違いがないかを確認後、「申込」をクリックしてください。 -->


## 目指した課題解決
---

## 実装した機能についてのGIFと説明
---
<!-- - 新規予約機能
カレンダーより希望の日時を選んで、予約申し込みすることができます（入力内容確認機能を含む）
- マイページ機能
マイページでは予約の一覧や詳細を確認でき、一部内容の修正や予約をキャンセルすることができます。
- 予約詳細表示機能
予約した内容の詳細を表示することができます。
- 予約内容編集機能
予約した内容の一部を編集（変更）することができます。
- 予約削除機能
予約を削除することができます。
- メール送信機能
予約完了時・予約編集時にActionMailerが起動し、完了メールを送信することができます。
- Googleカレンダー登録機能
予約完了画面もしくは予約詳細表示画面から予約内容をGoogleカレンダーに登録することができます。 -->

## 実装予定の機能
---

## テーブル設計
---
## usersテーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| email                  | string     | null: false, unique: true      | 
| encrypted_password     | string     | null: false                    |
| employee_number        | integer    | null: false                    |
| last_name              | string     | null: false                    |
| first_name             | string     | null: false                    |
| last_name_kana         | string     | null: false                    |
| first_name_kana        | string     | null: false                    |
| admin                  | boolean    |                                |


### Association
- has_many :teams, through: :team_users
- has_many :tasks

## teamsテーブル
| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| team_name              | string     | null: false                    | 

### Association
- has_many :users, through: :team_users
- has_many :projects


## team_usersテーブル
| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| team                   | references | null: false, foreign_key: true |
| user                   | references | null: false, foreign_key: true |

### Association
- belongs_to :team
- belongs_to :user


## projectsテーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| project_name           | string     | null: false                    | 
| start_day              | date       | null: false                    |
| start_time             | datetime   | null: false                    |
| deadline               | date       | null: false                    |
| team                   | references | foreign_key: true              |

### Association
- belongs_to :team
- has_many :tasks

## tasksテーブル
| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| task_name              | string     | null: false                    |
| detail                 | text       |                                |
| schedule_day           | date       |                                |
| deadline               | date       |                                |
| user                   | references | foreign_key: true              |
| project                | references | foreign_key: true              |

### Association
- belongs_to :user
- belomgs_to :project


## ライセンス情報
---
MIT
