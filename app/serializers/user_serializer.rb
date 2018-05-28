class UserSerializer < ActiveModel::Serializer
	has_many :posts
  attributes :id, :name, :email, :created_at
  #link(:self) { user_url(object) }
end