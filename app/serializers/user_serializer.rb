class UserSerializer < ActiveModel::Serializer
	has_many :posts
	#has_many :comments
  attributes :id, :name, :email, :created_at 
  
  #link(:self) { user_url(object) }
end


