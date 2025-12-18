class RemoveSuitFromTarotCard < ActiveRecord::Migration[8.1]
  def change
    remove_column :tarot_cards, :suit, :string
  end
end
