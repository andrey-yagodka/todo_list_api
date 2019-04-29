class Authentication::JwtService
  SECRET_KEY = Rails.application.secrets.secret_key_base

  def initialize(user)
    @user = user
  end

  def encode
    JWT.encode(token_data, SECRET_KEY)
  end

  private

  def token_data
    {
      user_id: @user.id,
      exp: expiration_time
    }
  end

  def expiration_time
    24.hours.from_now.to_i
  end
end
