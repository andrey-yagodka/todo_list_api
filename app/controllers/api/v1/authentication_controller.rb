class Api::V1::AuthenticationController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
    if user&.authenticate(params[:password])
      render json: { token: Authentication::JwtService.new.encode(user) }, status: :ok
    else
      render status: :unauthorized
    end
  end
end
