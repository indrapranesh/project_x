class User < ApplicationRecord
  has_secure_token
  has_secure_password
  has_many :posts , dependent: :destroy

  validates :name, presence: true
  validates :email,presence: true
  validates :password, presence: true ,length: { minimum: 6 }
end 		 	

