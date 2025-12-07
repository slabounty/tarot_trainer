class Reading < ApplicationRecord
  belongs_to :user
  belongs_to :spread
  belongs_to :spread_prompt

  has_many :reading_cards, dependent: :destroy
  has_many :tarot_cards, through: :reading_cards
end
