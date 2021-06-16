# == Schema Information
#
# Table name: user_infos
#
#  id           :integer          not null, primary key
#  contactEmail :string
#  contactName  :string
#  mobile       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class UserInfoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
