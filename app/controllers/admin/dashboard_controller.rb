class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: "Jungle", password: "book"
  include HttpAuthConcern 
  def show
    @products_count = Product.count
    @products_quantity = Product.sum(:quantity)
    @categories = Category.count
  end
end
