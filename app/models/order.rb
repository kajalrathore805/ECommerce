class Order < ApplicationRecord
  belongs_to :buyer , class_name: "User"

  VALID_STATUSES = ['Order placed', 'Order Accepted', 'preparing' 'Delivered']

  validates :status, inclusion: { in: VALID_STATUSES }
end
