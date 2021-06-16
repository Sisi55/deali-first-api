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
class Food < Product
end
