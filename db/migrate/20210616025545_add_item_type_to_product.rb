class AddItemTypeToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :itemType, :string
  end
end
