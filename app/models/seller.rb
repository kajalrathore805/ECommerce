class Seller < User
	has_many :addresses, as: :addressable
  has_many :stores, foreign_key: :seller_id
end
