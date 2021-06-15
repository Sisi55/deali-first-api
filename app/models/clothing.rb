# == Schema Information
#
# Table name: clothings
#
#  id         :integer          not null, primary key
#  name       :string
#  stock      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Clothing < ApplicationRecord
end
