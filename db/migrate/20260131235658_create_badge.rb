class CreateBadge < ActiveRecord::Migration[8.1]
  def change
    create_table :badges do |t|
      t.string :key
      t.string :name
      t.text :description
      t.integer :sort_order
      t.integer :threshold

      t.timestamps
    end

    add_index :badges, :key, unique: true
  end
end
