FactoryBot.define do
  factory :tarot_card do
    image_file { "test_card_image.png" }
    name { "MyString" }
    meaning { "MyString" }
    arcana { "MyString" }
    element { "MyString" }
  end
end
