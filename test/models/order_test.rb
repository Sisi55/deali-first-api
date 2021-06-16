# == Schema Information
#
# Table name: orders
#
#  id           :integer          not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  product_id   :integer          not null
#  user_info_id :integer          not null
#
# Indexes
#
#  index_orders_on_product_id    (product_id)
#  index_orders_on_user_info_id  (user_info_id)
#
# Foreign Keys
#
#  product_id    (product_id => products.id)
#  user_info_id  (user_info_id => user_infos.id)
#
require "test_helper"

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
