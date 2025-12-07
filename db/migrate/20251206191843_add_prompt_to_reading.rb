class AddPromptToReading < ActiveRecord::Migration[8.1]
  def change
    add_reference :readings, :spread_prompt, null: false, foreign_key: true
  end
end
