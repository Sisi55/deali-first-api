class AddColumnsToFoods < ActiveRecord::Migration[6.1]
  def change
    add_column :foods, :stock, :integer
    add_column :foods, :name, :string
  end
end
