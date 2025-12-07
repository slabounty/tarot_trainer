# app/models/user.rb
class User < ApplicationRecord
  has_many :card_of_the_days, dependent: :destroy
  has_many :tarot_cards, through: :card_of_the_days
  has_many :readings, dependent: :destroy

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
