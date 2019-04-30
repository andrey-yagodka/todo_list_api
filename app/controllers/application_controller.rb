class ApplicationController < ActionController::API
  AUTHORIZATION_HEADER = 'Authorization'

  def current_user
    header = request.headers[AUTHORIZATION_HEADER]
    token = header.split(' ').last if header
    @current_user ||= Users::GetCurrentUserService.new(token).call
  end
end
