class Post < ApplicationRecord
	belongs_to :user
	has_many :comments, dependent: :destroy
	self.per_page = 50
	validates :content, length: {maximum: 100} , presence: true
end
