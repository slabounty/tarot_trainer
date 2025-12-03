class CardOfTheDay < ApplicationRecord
  belongs_to :user
  belongs_to :tarot_card

  validates :date_shown, presence: true
  validates :date_shown, uniqueness: { scope: :user_id }  # 1 per day
end
