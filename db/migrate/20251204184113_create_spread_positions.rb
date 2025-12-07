class CreateSpreadPositions < ActiveRecord::Migration[8.1]
  def change
    create_table :spread_positions do |t|
      t.references :spread, null: false, foreign_key: true
      t.string :name
      t.integer :position

      t.timestamps
    end

    add_index :spread_positions, [ :spread_id, :position ], unique: true
  end
end
