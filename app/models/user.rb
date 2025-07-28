class User < ApplicationRecord
	has_secure_password
	validates :role,:full_name,:email,:password,:phone, presence: true
end
