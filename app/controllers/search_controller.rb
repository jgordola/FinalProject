class SearchController < ApplicationController
  def index
    @search_terms = params[:q]

    @products = Product.where('name LIKE "%' + @search_terms + '%"')

    @products = Product.where('category_id = ?', params[:category_id])
  end
end
