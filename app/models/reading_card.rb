class ReadingCard < ApplicationRecord
  belongs_to :reading
  belongs_to :tarot_card
  belongs_to :spread_position
end
