class ApplicationController < ActionController::API
  AUTHORIZATION_HEADER = 'Authorization'.freeze

  include Pundit
  include ExceptionsHandler

  def current_user
    token = request.headers[AUTHORIZATION_HEADER]
    @current_user ||= Users::GetCurrentUserService.call(token)
  end
end
