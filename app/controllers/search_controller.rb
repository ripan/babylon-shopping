class SearchController < ApplicationController
  def index
    @products = Product.where("name LIKE ?", "%#{params[:keyword]}%")
  end
end
