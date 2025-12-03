class TarotCard < ApplicationRecord
  has_many :card_of_the_days, dependent: :destroy
  has_many :users, through: :card_of_the_days

  def self.random_card
    order("RANDOM()").first
  end
end
