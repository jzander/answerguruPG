class User < ActiveRecord::Base
  # field :email, type: String
  # field :name, type: String
  # field :password_digest, type: String
  # field :is_active, type: Mongoid::Boolean, default: true

  # validates :name, length: { minimum: 2 }
  # validates :password, length: { in: 6..20 }

  has_secure_password

  has_many :decisions
  has_many :answers

end
