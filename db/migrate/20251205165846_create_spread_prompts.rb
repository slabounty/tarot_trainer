class CreateSpreadPrompts < ActiveRecord::Migration[8.1]
  def change
    create_table :spread_prompts do |t|
      t.references :spread, null: false, foreign_key: true
      t.string :prompt, null: false

      t.timestamps
    end
  end
end
