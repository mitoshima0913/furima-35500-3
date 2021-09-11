# DB 設計

## users table

| Column             | Type                | Options                    |
|--------------------|---------------------|----------------------------|
| nickname           | string              | null: false                |
| email              | string              | null: false, unique: true  |
| encrypted_password | string              | null: false                |
| last_name          | string              | null: false                |
| first_name         | string              | null: false                |
| last_furigana      | string              | null: false                |
| first_furigana     | string              | null: false                |
| birthday           | date                | null: false                |

### Association

- has_many :items
- has_many :purchases

## items table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| name                                | string     | null: false       |
| description                         | text       | null: false       |
| category_id                         | integer    | null: false       |
| condition_id                        | integer    | null: false       |
| pay_id                              | integer    | null: false       |
| prefecture_id                       | integer    | null: false       |
| scheduled_day_id                    | integer    | null: false       |
| price                               | integer    | null: false       |
| user                                | references | foreign_key: true |

### Association

- belongs_to :user
- has_one :purchase

## purchases table

| Column      | Type       | Options           |
|-------------|------------|-------------------|
| item        | references | foreign_key: true |
| user        | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one :address

## address table

| Column            | Type       | Options           |
|-------------------|------------|-------------------|
| zip_code          | string     | null: false       |
| prefecture_id     | integer    | null: false       |
| municipalities    | string     | null: false       |
| street_number     | string     | null: false       |
| building          | string     |                   |
| phone_number      | string     | null: false       |
| purchase          | references | foreign_key: true |

### Association

- belongs_to :purchase