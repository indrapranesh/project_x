class PostsController < ApplicationController

	def new
		@post = Post.new
	end

	def index
    posts = Post.all
  # posts = Post.all.includes(:comments)
  #render json: posts, include: ['comment']

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
   render json: posts  #, include: ['user']
  end


  def like
    @post = Post.find(params[:post_id])
    #@post.like = @post.like+1
    #@post.save
    @post.update_attribute(:like, @post.like + 1)
   # render json: post
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

  def lke_params
    params.require(:post).permit(:post_id)
    
  end
  def post_params
    params.require(:post).permit(:user_id , :content, :like)
  end

  
end	