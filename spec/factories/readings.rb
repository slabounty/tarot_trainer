FactoryBot.define do
  factory :reading do
    user { FactoryBot.create(:user) }
    spread { FactoryBot.create(:spread) }
    spread_prompt { FactoryBot.create(:spread_prompt, spread: spread) }
  end
end
