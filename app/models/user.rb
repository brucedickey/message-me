class User < ApplicationRecord
  validates :username, presence: true, length: {minimum: 2, maximum: 30},
            uniqueness: { case_sensitive: false }
  validates :password, length: {minimum: 2, maximum: 30}
  has_many :messages
  has_secure_password
end
