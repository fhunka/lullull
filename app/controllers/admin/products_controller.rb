class Admin::ProductsController < ApplicationController
  layout "administration"
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def new
    @package = Package.new
  end

  def update
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(params[:package])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
  end

end
