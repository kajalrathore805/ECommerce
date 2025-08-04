class Buyer < User
	has_many :addresses , as: :addressable
	has_one_attached :image
	has_many :orders , dependent: :destroy
	has_many :cart_items  ,dependent: :destroy
	has_one :cart
end
