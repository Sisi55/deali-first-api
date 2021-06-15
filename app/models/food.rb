class Food < ApplicationRecord
  has_one :item, as: :available_for_sale, class_name: 'Item'
end