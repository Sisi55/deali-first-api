class AddUserRefToOrders < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :user_info, null: false, foreign_key: true
  end
end
