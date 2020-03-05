class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: "Jungle", password: "book"
  http_basic_authenticate_with name: ENV['USERNAME'], password: ENV['PASSWORD']
  def show
    @products_count = Product.count
    @products_quantity = Product.sum(:quantity)
    @categories = Category.count
  end
end
