class ApplicationController < ActionController::API
  AUTHORIZATION_HEADER = 'Authorization'.freeze

  include Pundit
  include ExceptionsHandler

  def current_user
    header = request.headers[AUTHORIZATION_HEADER]
    @current_user ||= Users::GetCurrentUserService.new(header).call if header
  end
end
