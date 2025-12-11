class AddStreakToUser < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :streak_count, :integer, default: 0
    add_column :users, :streak_last_date, :date
  end
end
