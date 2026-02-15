# Badges
BADGES = [
  # Daily Streak Badges
  {
    key: "three_day_streak",
    name: "The Spark",
    description: "Used Tarot for 3 days in a row",
    category: "daily_streak",
    sort_order: 10,
    threshold: 3
  },
  {
    key: "seven_day_streak",
    name: "The Seeker",
    description: "Used Tarot for 7 days in a row",
    category: "daily_streak",
    sort_order: 20,
    threshold: 7
  },
  {
    key: "thirty_day_streak",
    name: "The Initiate",
    description: "Used Tarot for 30 days in a row",
    category: "daily_streak",
    sort_order: 30,
    threshold: 30
  },
  {
    key: "hundred_day_streak",
    name: "The Adept",
    description: "Used Tarot for 100 days in a row",
    category: "daily_streak",
    sort_order: 40,
    threshold: 100
  }
].freeze

BADGES.each do |attrs|
  badge = Badge.find_or_initialize_by(key: attrs[:key])
  badge.assign_attributes(attrs)
  badge.save!
end

# Quiz Badges
QUIZ_BADGES = [
  {
    key: "five_quiz_mastery",
    name: "The Initiate",
    description: "Completed 5 tarot quizzes",
    category: "quiz",
    threshold: 5,
    sort_order: 110
  },
  {
    key: "ten_quiz_mastery",
    name: "The Adept",
    description: "Completed 10 tarot quizzes",
    category: "quiz",
    threshold: 10,
    sort_order: 120
  },
  {
    key: "twenty_five_quiz_mastery",
    name: "The Scholar",
    description: "Completed 25 tarot quizzes",
    category: "quiz",
    threshold: 25,
    sort_order: 130
  }
].freeze

QUIZ_BADGES.each do |attrs|
  quiz_badge = Badge.find_or_initialize_by(key: attrs[:key])
  quiz_badge.assign_attributes(attrs)
  quiz_badge.save!
end

QUIZ_PERCENT_BADGES = [
  {
    key: "quiz_100_percent",
    name: "Quiz Master",
    description: "100% Quiz Result",
    category: "quiz_percentage",
    threshold: 100,
    sort_order: 200
  }
].freeze

QUIZ_PERCENT_BADGES.each do |attrs|
  quiz_badge = Badge.find_or_initialize_by(key: attrs[:key])
  quiz_badge.assign_attributes(attrs)
  quiz_badge.save!
end
