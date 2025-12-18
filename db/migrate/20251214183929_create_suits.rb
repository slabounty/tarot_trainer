class CreateSuits < ActiveRecord::Migration[8.1]
  def change
    create_table :suits do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
