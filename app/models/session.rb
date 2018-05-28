class Session < ApplicationRecord
	has_many :comments
	has_secure_password
	validates :email,presence:true
end