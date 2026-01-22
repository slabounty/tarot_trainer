class TarotCard < ApplicationRecord
  has_many :card_of_the_days, dependent: :destroy
  has_many :users, through: :card_of_the_days
  belongs_to :suit

  has_many :favorites
  has_many :favorited_by_users, through: :favorites, source: :user

  # app/models/tarot_card.rb
  scope :major_arcana, -> { where(arcana: "Major") }
  scope :minor_arcana, -> { where(arcana: "Minor") }

  def self.random_cards(count = 1)
    order("RANDOM()").limit(count)
  end

  def self.random_card
    random_cards.first
  end
end
