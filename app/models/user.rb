class User < ApplicationRecord
  has_secure_token
  has_secure_password
  has_many :posts , dependent: :destroy

  validates :name, presence: true
  validates :email,presence: true
  validates :password, presence: true ,length: { minimum: 6 }, if: :password_required?

def password_required?
  new_record? || password.present?
end
end 		 	

