class AddReversedMeaningToTarotCard < ActiveRecord::Migration[8.1]
  def change
    add_column :tarot_cards, :reversed_meaning, :string
  end
end
