class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :password_digest, :is_admin, :balance
  has_many :products
end