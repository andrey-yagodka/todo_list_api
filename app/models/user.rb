class User < ApplicationRecord
  LENGTH = {
    username: (3..50),
    password: 8
  }.freeze

  PASSWORD_REGEX = /\A[a-zA-Z0-9]*\z/.freeze

  has_secure_password

  has_many :projects, dependent: :destroy

  validates :username, :password, :password_confirmation, presence: true

  validates :username,
            uniqueness: true,
            length: { minimum: LENGTH[:username].min, maximum: LENGTH[:username].max }

  validates :password,
            length: { is: LENGTH[:password] },
            format: { with: PASSWORD_REGEX, message: I18n.t('errors.user.password.format') }
end
