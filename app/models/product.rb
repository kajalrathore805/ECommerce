class Product < ApplicationRecord
  belongs_to :store
  # belongs_to :sub_category
  has_many :cart_items
end
