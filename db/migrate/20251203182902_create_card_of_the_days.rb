class CreateCardOfTheDays < ActiveRecord::Migration[8.1]
  def change
    create_table :card_of_the_days do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tarot_card, null: false, foreign_key: true
      t.date :date_shown

      t.timestamps
    end
  end
end
