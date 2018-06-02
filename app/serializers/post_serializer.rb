class PostSerializer < ActiveModel::Serializer

  attributes :id, :content, :like, :created_at, :updated_at
 attributes :user
attributes :comments
   def user
     object.user
   end
   def comments
   	object.comments
   	
   end
  # def comments
   # object.comments.map do |comment|
    #  ::CommentSerializer.new(comment).attributes
    #end
  
 end