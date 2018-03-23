class ProductsController < ApplicationController
  def index
    @products = Product.order(:name)
  end

  def show
    @products = Product.find(params[:id])
  end
end
