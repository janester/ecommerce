class ProductsController < ApplicationController
  def index
    @products = Product.order(:name)
  end

  def new
    @product = Product.new
  end

  def create
    binding.pry
    product = Product.create(params[:product])
    tags = params[:tags].split(", ")
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