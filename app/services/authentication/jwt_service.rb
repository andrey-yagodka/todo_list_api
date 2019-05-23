class Authentication::JwtService
  SECRET_KEY = Rails.application.secrets.secret_key_base

  def encode(user)
    JWT.encode(token_data(user), SECRET_KEY)
  end

  def decode(token)
    HashWithIndifferentAccess.new JWT.decode(token, SECRET_KEY).first
  end

  private

  def token_data(user)
    {
      user_id: user.id,
      exp: expiration_time
    }
  end

  def expiration_time
    24.hours.from_now.to_i
  end
end
