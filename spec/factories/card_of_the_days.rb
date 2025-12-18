FactoryBot.define do
  factory :card_of_the_day do
    user
    tarot_card
    date_shown { "2025-12-03" }
  end
end
