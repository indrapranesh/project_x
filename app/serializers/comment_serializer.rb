class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment, :created_at, :updated_at
  attributes :user
  attributes :post
  def user
  	object.user
  end
  def post
  	object.post
  end

end