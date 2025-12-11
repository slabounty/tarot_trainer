FactoryBot.define do
  factory :reading_card do
    reading { nil }
    tarot_card { FactoryBot.create(:tarot_card) }
    spread_position { nil }
  end
end
