class PostsController < ApplicationController

	def new
		@post = Post.new
	end

	def index
    posts = Post.all
    #if params[:filter]
     # posts = posts.where(["category = ?", params[:filter]])
    #end
    #if params['sort']
     # f = params['sort'].split(',').first
      #field = f[0] == '-' ? f[1..-1] : f
     # order = f[0] == '-' ? 'DESC' : 'ASC'
      #if Post.new.has_attribute?(field)
       # posts = posts.order("#{field} #{order}")
      #end
    #end
    #posts = posts.page(params[:page] ? params[:page][:number] : 1)
    render json: posts, include: ['user']
  end

  def create
    #logger.info params.inspect
  	@post = Post.new(post_params)
  	if @post.save
  		render json: @post
    else 
  		render 'new'
  	end
  end

  private

  def post_params
    params.require(:post).permit(:user_id , :content, :like)
  end

  
end	