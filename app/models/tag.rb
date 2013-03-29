class Tag < ActiveRecord::Base
  attr_accessor :name
  has_many_and_belongs_to :products
end