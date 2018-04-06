class ProductsController < ApplicationController
  def index
    @products = Product.all.page(params[:page]).per(5)
    @category_terms = Category.all.order(:id)
  end

  def show
    @products = Product.find(params[:id])
  end
end
