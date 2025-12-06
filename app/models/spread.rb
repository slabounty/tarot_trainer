class Spread < ApplicationRecord
  has_many :spread_positions, -> { order(:position) }, dependent: :destroy
  has_many :spread_prompts
  has_many :readings
end
