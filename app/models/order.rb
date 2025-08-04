class Order < ApplicationRecord
  belongs_to :buyer
  has_many :order_items, dependent: :destroy

  STATUS =  ['']
end

scope: {}