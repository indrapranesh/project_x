class SessionsController < ApplicationController
  def create
    # data = ActiveModelSerializers::Deserialization.jsonapi_parse(params)
    Rails.logger.error params.to_yaml
    #user = User.where(email: data[:session][:email]).first
    user = User.where(email: params[:session][:email]).first
    head 406 and return unless user
    if user.authenticate(params[:session][:password])
      user.regenerate_token
      render json: user, status: :created,
             serializer: ActiveModel::Serializer::SessionSerializer and return
    end
    head 403
  end

  def destroy
    user = User.where(token: params[:id]).first
    head 404 and return unless user
    user.regenerate_token
    head 204
  end
end