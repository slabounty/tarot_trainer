# app/models/quiz_question.rb
class QuizQuestion < ApplicationRecord
  belongs_to :quiz
  has_many :quiz_options

end

