class AddCategoryToBadges < ActiveRecord::Migration[8.1]
  def change
    add_column :badges, :category, :string
  end
end
