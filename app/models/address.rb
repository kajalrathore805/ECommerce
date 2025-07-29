class Address < ApplicationRecord
  belongs_to :addressable , polymorphic:  true

  validates :address_line , :city , :state , :pincode , presence: true
end
