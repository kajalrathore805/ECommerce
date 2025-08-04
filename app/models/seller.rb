class Seller < User
  has_many :addresses, as: :addressable
  has_many :stores, dependent: :destroy
  has_many :products, through: :stores

  has_one_attached :image
end
