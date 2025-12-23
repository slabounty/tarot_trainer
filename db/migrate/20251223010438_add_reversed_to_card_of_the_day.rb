class AddReversedToCardOfTheDay < ActiveRecord::Migration[8.1]
  def change
    add_column :card_of_the_days, :reversed, :boolean
  end
end
