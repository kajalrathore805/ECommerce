class Buyer < User
	has_many :addresses , as: :addressable
	has_one_attached :image
end
