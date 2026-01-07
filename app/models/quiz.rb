# app/models/quiz.rb
class Quiz < ApplicationRecord
  has_many :quiz_questions, dependent: :destroy
  belongs_to :user
end
