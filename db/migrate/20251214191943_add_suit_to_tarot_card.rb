class AddSuitToTarotCard < ActiveRecord::Migration[8.1]
  def change
    add_reference :tarot_cards, :suit, null: false, foreign_key: true
  end
end
