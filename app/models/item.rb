# frozen_string_literal: true

class Item < ApplicationRecord
  belongs_to :available_for_sale, polymorphic: true
end
