class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
    @products= Product.order(:title)
    @cart = current_cart
    increment_counter
  end
  
  def increment_counter
  if session[:counter].nil?
    session[:counter] = 0
  end
  session[:counter] += 1
end
end
