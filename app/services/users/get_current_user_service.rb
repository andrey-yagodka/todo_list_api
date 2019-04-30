class Users::GetCurrentUserService
  def initialize(token)
    @token = token
  end

  def call
    payload = Authentication::JwtService.new.decode(@token)
    User.find(payload[:user_id])
  end
end
