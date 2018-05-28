class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :post
	validates :comment, length: {maximum: 40} , presence: true
end
