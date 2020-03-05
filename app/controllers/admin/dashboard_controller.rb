class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: "Jungle", password: "book"
  include HttpAuthConcern 
  def show
  end
end
