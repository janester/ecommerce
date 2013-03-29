class User < ActiveRecord::Base
  attr_accessor :email, :password_digest, :is_admin, :balance
  has_secure_password
  has_many :products
end