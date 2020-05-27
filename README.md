# README

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null:false|
|email|string|null:false|
|password|string|null:false|

### Association
- has_many :charts
- has_many :comments

## chartsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null:false|
|image|text|
|user_id|integer|null:false, foreign_key: true|

### Association
- belongs_to :users
- has_many :comments

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|
|user_id|integer|null:false, foreign_key: true|
|charts_id|integer|null:false, foreign_key: true|

### Association
- belongs_to :users
- belongs_to :comments


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
