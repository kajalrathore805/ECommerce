class Store < ApplicationRecord
  belongs_to :seller, class_name: "User"

  validates :name , :description , presence: true

  has_many :products , dependent: :destroy
end
