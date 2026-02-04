# Badges
BADGES = [
  {
    key: "three_day_streak",
    name: "The Spark",
    description: "Used Tarot for 3 days in a row",
    sort_order: 10,
    threshold: 3
  },
  {
    key: "seven_day_streak",
    name: "The Seeker",
    description: "Used Tarot for 7 days in a row",
    sort_order: 20,
    threshold: 7
  },
  {
    key: "thirty_day_streak",
    name: "The Initiate",
    description: "Used Tarot for 30 days in a row",
    sort_order: 30,
    threshold: 30
  },
  {
    key: "hundred_day_streak",
    name: "The Adept",
    description: "Used Tarot for 100 days in a row",
    sort_order: 40,
    threshold: 100
  }
].freeze

BADGES.each do |attrs|
  Badge.find_or_create_by!(key: attrs[:key]) do |badge|
    badge.assign_attributes(attrs)
  end
end
