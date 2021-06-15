class AddColumnsToClothings < ActiveRecord::Migration[6.1]
  def change
    add_column :clothings, :stock, :integer
    add_column :clothings, :name, :string
  end
end
