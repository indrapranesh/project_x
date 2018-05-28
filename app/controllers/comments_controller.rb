class CommentsController < ApplicationController

	def new
		@comment = Comment.new
	end

	def index
    comments = Comment.all
    render json: comments, include: ['user','post'] 
  end

  def create
    #logger.info params.inspect
  	@comment = Comment.new(comment_params)
  	if @comment.save
  		render json: @comment
    else 
  		render 'new'
  	end
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id , :post_id, :comment)
  end

  
end	