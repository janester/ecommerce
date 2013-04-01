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

  def filter
    tag = Tag.find(params[:tag_id])
    @products = tag.products
  end

  def search
    text = params[:text]
    @products = Product.where("name @@ :q or description @@ :q or image @@ :q or address @@ :q", :q => text)
    tags = Tag.where('name @@ :q', :q => text)
    tags = tags.map{|x| x.products}.flatten
    @products += tags
    @products.uniq!
    render :filter
  end
end