FactoryBot.define do
  factory :badge do
    key { "The badge key" }
    name { "The badge name" }
    description { "Description of Suit" }
    sort_order { 10 }
    threshold { 3 }
  end
end

