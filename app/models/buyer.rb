class Buyer < User
	has_many :addresses , as: :addressable
end
