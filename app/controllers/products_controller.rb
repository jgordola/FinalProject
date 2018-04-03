class ProductsController < ApplicationController
  def index
    @products = Product.all.page(params[:page]).per(5)
    @category_terms = Category.all
  end

  def show
    @products = Product.find(params[:id])
  end
end
