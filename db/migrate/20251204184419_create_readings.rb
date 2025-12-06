class CreateReadings < ActiveRecord::Migration[8.1]
  def change
    create_table :readings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :spread, null: false, foreign_key: true
      t.string :prompt

      t.timestamps
    end
  end
end
