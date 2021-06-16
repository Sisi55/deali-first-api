# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  itemType   :string
#  name       :string
#  stock      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class ClothingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
