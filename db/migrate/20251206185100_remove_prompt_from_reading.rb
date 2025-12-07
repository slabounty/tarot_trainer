class RemovePromptFromReading < ActiveRecord::Migration[8.1]
  def change
    remove_column :readings, :prompt, :string
  end
end
