# README

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, unique: true|
|password|string|null: false, unique: true|
|email|string||
|profile_image|string||
<!-- |introduction|text|| -->
### Association
- has_many :tweets
- has_many :comments
- has_many :likes


## tweetsテーブル
|Column|Type|Options|
|------|----|-------|
|message|text|null: false|
|image|string||
|name|string|null: false|
|user|references|null: false, foreign_key: true|
### Association
- has_many :tags, through :tweets_tags
- has_many :comments
- belongs_to :users


## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|reply|string|null: false|
|user|references|null: false, foreign_key: true|
|tweet|references|null: false, foreign_key: true|
### Association
- belongs_to :tweets
- belongs_to :users


## tagsテーブル
|Column|Type|Options|
|------|----|-------|
|body|string||
### Association
- has_many :tweets, through :tweets_tags
- has_many :tweets_tags


## tweets_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|tweet|references|null: false, foreign_key: true|
|tag|references|null: false, foreign_key: true|
### Association
- belongs_to :tweets
- belongs_to :tags


## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|tweet|references|null: false, foreign_key: true|
### Association
- belongs_to :users
- belongs_to :tweets

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
