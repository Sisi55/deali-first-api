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
class UserInfo < ApplicationRecord
  has_one :order
end
