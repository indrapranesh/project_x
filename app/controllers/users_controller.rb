class UsersController < ApplicationController
	def new
		@user = User.new
		
	end
  def index
    users = User.all
    render json: users
  end
  def create
  	@user = User.new(user_params)
  	if @user.save
  		render json: @user
  	else 
  		render 'new'
  	end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email , :password)
  end
end