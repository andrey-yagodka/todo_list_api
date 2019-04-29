class Api::V1::AuthenticationController < ApplicationController
  before_action :get_user

  def create
    if authenticate_user
      render json: {token: Authentication::JwtService.new(@user).encode}, status: :ok
    else
      render status: :unauthorized
    end
  end

  private

  def get_user
    @user = User.find_by(username: params[:username])
  end

  def authenticate_user
    @user&.authenticate(params[:password])
  end
end
