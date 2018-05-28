class UsersController < ApplicationController
	#before_action :set_user, only: [ :show ]
	#before_action :validate_user, only: [ :create ]
  	#before_action :validate_type, only: [ :create ]
	def new
		@user = User.new
			
	end
  def index
    users = User.all
    render json: users
  end

  def show
  	render json: @user
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

  def set_user
    begin
      @user = User.find params[:id]
    rescue ActiveRecord::RecordNotFound
      user = User.new
      user.errors.add(:id, "Wrong ID provided")
      render_error(user, 404) and return
    end
  end

end