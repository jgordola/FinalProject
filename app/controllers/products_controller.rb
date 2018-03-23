class ProductsController < ApplicationController
  def index
    #@products = Product.order(:name)
    @products = Product.all.page(params[:page]).per(2)
  end

  def show
    @products = Product.find(params[:id])
  end
end
