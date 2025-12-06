FactoryBot.define do
  factory :reading do
    user { FactoryBot.create(:user) }
    spread { FactoryBot.create(:spread) }
    prompt { "Some reading prompt" }
  end
end
