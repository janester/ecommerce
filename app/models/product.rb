# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  image       :string(255)
#  cost        :decimal(, )
#  lat         :float
#  long        :float
#  address     :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ActiveRecord::Base
  attr_accessible :name, :description, :image, :cost, :address

  before_save :get_coords
  belongs_to :user
  has_and_belongs_to_many :tags

  private
  def get_coords
    result = Geocoder.search(self.address).first
    if result.present?
      self.lat = result.latitude
      self.long = result.longitude
    end
  end
end
