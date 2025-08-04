class Seller < User
	has_many :addresses, as: :addressable
  has_many :stores ,dependent: :destroy
  has_one_attached :image
end
