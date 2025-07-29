class User < ApplicationRecord
	has_secure_password
	has_many :stores
	validates :type,:full_name,:email,:password_digest,:phone, presence: true
end
