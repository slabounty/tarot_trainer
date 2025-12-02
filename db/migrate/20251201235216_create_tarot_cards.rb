class CreateTarotCards < ActiveRecord::Migration[8.0]
  def change
    create_table :tarot_cards do |t|
      t.string :image_file
      t.string :name
      t.string :meaning
      t.string :arcana
      t.string :element

      t.timestamps
    end
  end
end
