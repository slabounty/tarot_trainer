FactoryBot.define do
  factory :tarot_card do
    image_file { "test_card_image.png" }
    name { "Card Name" }
    meaning { "Card meaning" }
    arcana { "Card arcana" }
    element { "Card element" }
    suit
  end
end
