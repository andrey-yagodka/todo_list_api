class ApplicationController < ActionController::API
  AUTHORIZATION_HEADER = 'Authorization'

  include Pundit
  include ExceptionsHandler

  def current_user
    header = request.headers[AUTHORIZATION_HEADER]
    token = header.split(' ').last if header
    @current_user ||= Users::GetCurrentUserService.new(token).call
  end

  def load_and_authorize_resource
    resource = LoadResourceService.new(params, controller_name).call
    instance_variable_set(:"@#{controller_name.classify.downcase}", resource)
    authorize resource
  end
end
