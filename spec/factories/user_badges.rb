FactoryBot.define do
  factory :user_badge do
    user { nil }
    badge { nil }
    earned_at { Date.today }
  end
end
