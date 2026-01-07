class CreateQuizOption < ActiveRecord::Migration[8.1]
  def change
    create_table :quiz_options do |t|
      t.references :quiz_question, null: false, foreign_key: true
      t.references :tarot_card, null: false, foreign_key: true
      t.boolean :correct

      t.timestamps
    end
  end
end
