class AddSuitValueOrderToTarotCard < ActiveRecord::Migration[8.1]
  def change
    add_column :tarot_cards, :suit, :string
    add_column :tarot_cards, :value, :string
    add_column :tarot_cards, :order, :integer
  end
end
