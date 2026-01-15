# app/models/quiz.rb
class Quiz < ApplicationRecord
  has_many :quiz_questions, dependent: :destroy
  belongs_to :user

  enum :quiz_type, {
    all_cards: 0,
    major: 1,
    cups: 2,
    wands: 3,
    swords: 4,
    pentacles: 5
  }
end
