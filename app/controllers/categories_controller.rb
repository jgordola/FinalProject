class CategoriesController < ApplicationController

  def show
    @category_terms = params[:id]
    @products = Product.where(category_id: @category_terms).order(id: :desc)
    end
end
