# spec/factories/users.rb
FactoryBot.define do
  factory :user do
    email { "test@example.com" }
    password { "password" }
    first_name { "Chris" }
    last_name { "Johnson" }
  end
end
