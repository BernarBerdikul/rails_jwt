class User < ApplicationRecord
  has_secure_password
  has_secure_password :recovery_password, validations: false

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :username, presence: true, length: { minimum: 6 }
  validates :password,
            length: { minimum: 8 },
            if: -> { new_record? || !password.nil? }
end
