class SpreadPrompt < ApplicationRecord
  belongs_to :spread
  has_many :readings
end
