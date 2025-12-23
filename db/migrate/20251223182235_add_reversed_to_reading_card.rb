class AddReversedToReadingCard < ActiveRecord::Migration[8.1]
  def change
    add_column :reading_cards, :reversed, :boolean
  end
end
