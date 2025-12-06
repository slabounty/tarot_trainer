class SpreadPosition < ApplicationRecord
  belongs_to :spread

  validates :name, :position, presence: true
end
