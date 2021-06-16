class RemoveColumnsFromFood < ActiveRecord::Migration[6.1]
  def change
    remove_column :foods, :stock, :integer
    remove_column :foods, :name, :string
  end
end
