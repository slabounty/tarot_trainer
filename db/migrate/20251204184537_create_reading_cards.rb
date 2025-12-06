class CreateReadingCards < ActiveRecord::Migration[8.1]
  def change
    create_table :reading_cards do |t|
      t.references :reading, null: false, foreign_key: true
      t.references :tarot_card, null: false, foreign_key: true
      t.references :spread_position, null: false, foreign_key: true

      t.timestamps
    end

    add_index :reading_cards,
              [:reading_id, :spread_position_id],
              unique: true
  end
end
