class Users::GetCurrentUserService
  def self.call(token)
    return unless token
    
    payload = Authentication::JwtService.new.decode(token)
    User.find(payload[:user_id])
  end
end
