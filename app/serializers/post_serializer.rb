class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :like, :created_at, :updated_at
  belongs_to :user
end