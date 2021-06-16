class RemoveColumnsFromClothing < ActiveRecord::Migration[6.1]
  def change
    remove_column :clothings, :stock, :integer
    remove_column :clothings, :name, :string
  end
end
