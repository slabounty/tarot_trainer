# app/models/quiz_question.rb
class QuizOption < ApplicationRecord
  belongs_to :quiz_question
  belongs_to :tarot_card
end
