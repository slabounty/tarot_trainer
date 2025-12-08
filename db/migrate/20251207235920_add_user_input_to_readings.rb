class AddUserInputToReadings < ActiveRecord::Migration[8.1]
  def change
    add_column :readings, :user_input, :text
  end
end
