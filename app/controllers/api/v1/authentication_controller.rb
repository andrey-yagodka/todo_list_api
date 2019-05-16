class Api::V1::AuthenticationController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
    if authenticate(user)
      render json: { token: Authentication::JwtService.new.encode(user) }, status: :ok
    else
      render status: :unauthorized
    end
  end

  private

  def authenticate(user)
    user&.authenticate(params[:password])
  end
end
