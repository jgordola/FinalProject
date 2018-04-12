class CategoriesController < ApplicationController
  def show
    @category_terms = params[:id]
    cat = Category.find(params[:id])
    flash[:message] = "You've selected category:  #{cat.name}"
    @products = Product.where(category_id: @category_terms).order(id: :desc)
  end
end
