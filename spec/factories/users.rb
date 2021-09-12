FactoryBot.define do
  factory :user do
    nickname {"mitoshima"}
    email {Faker::Internet.free_email}
    password = Faker::Internet.password(min_length: 6)
    password {password}
    password_confirmation {password}
    last_name{"みとしま"}
    first_name{"みとしま"}
    last_furigana{"ミトシマ"}
    first_furigana{"ミトシマ"}
    birthday{1998/10/8}
  end
end