class ProductsController < ApplicationController
  def index
    @products = Product.order(:name)
  end

  def new
    @product = Product.new
  end

  def create
    product = Product.new
    product.name = params[:product][:name]
    product.description = params[:product][:description]
    product.image = params[:product][:image]
    product.cost = params[:product][:cost]
    tags = params[:product][:tags].split(", ")
    product.save
    tags.each do |tag|
      if Tag.exists?(:name => tag)
        product.tags << Tag.where(:name => tag).first
      else
        product.tags << Tag.create(:name => tag)
      end
    end
    @products = Product.order(:name)
  end
end