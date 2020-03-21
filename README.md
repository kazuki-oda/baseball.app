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

# usersテーブル
|Column|Type|Options|
|------|----|-------|
|account|string|null: false|
|email|string|null: false| 
|password|string|null: false| 
|name|string|null: false,unique: true,index: true| 

### Association
- has_many :messages
- has_many :groups,through: :groups_users
- has_many :groups_users

## groups＿usersテーブル
|Column|Type|Options|
|------|----|-------|
|groups_id|integer|null: false, foreign_key: true, index|
|user_id|integer|null: false, foreign_key: true, index|

### Association
- belongs_to :user
- belongs_to :group

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false, index|
|name|string|null: false|

### Association
- has_many :groups_users
- has_many :groups, through: :groups_users
- has_many :messages
- has_many :comment

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|body|text
|image|string
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user
- has_many :comment

## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|group_id|integer|null: false, foreign_key: true|
|message_id|integer|null: false, foreign_key: true|
|image|string
|body|text

### Association
- belongs_to :group
- belongs_to :message