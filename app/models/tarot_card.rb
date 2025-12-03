class TarotCard < ApplicationRecord
  def self.random_card
    all.sample
  end
end
