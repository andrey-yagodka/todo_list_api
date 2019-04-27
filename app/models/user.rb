class User < ApplicationRecord
  LENGTH = {
    username: (3..50),
    password: 8
  }.freeze

  has_secure_password

  validates :username, :password, :password_confirmation, presence: true

  validates :username,
            uniqueness: true,
            length: { minimum: LENGTH[:username].min, maximum: LENGTH[:username].max}

  validates :password,
            length: { is: LENGTH[:password] }
end
