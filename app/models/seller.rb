class Seller < User
	has_many :addresses , as: :addressable
	has_many :stores
end
